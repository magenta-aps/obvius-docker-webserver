import sys
import getopt
import ruamel.yaml
import json
from pathlib import Path


def main(argv):
    input_file = ''
    output_file = ''
    json_config_file_path = ''
    try:
        opts, args = getopt.getopt(argv, "i:o:j:")
    except getopt.GetoptError:
        sys.exit(2)
    for opt, arg in opts:
        if opt == '-i':
            input_file = arg
        elif opt == '-o':
            output_file = arg
        elif opt == '-j':
            json_config_file_path = arg

    yaml = ruamel.yaml.YAML()
    yaml.preserve_quotes = True
    yamgl.indent(4)
    with open(input_file) as sample:
        data = yaml.load(sample)
    if json_config_file_path != '':
        data = modify_yaml(data, json_config_file_path)
    yaml.dump(data, Path(output_file))


def modify_yaml(data, json_config_file_path):
    with open(json_config_file_path, "r") as json_config_file:
        json_config = json.load(json_config_file)
    if json_config["bind_mounts"]:
        volumes = data['volumes']
        for bind_mount in json_config["bind_mounts"]:
            if bind_mount["name"] in volumes:
                volumes[bind_mount["name"]]["driver_opts"]["device"] = bind_mount["path"] # update volume path
            else:
                volumes[bind_mount["name"]] = dict(driver="local", driver_opts=dict(o="bind", device=bind_mount["path"])) # create bind mount

    if json_config["service_options"]:
        services = data['services']
        for service_option in json_config["service_options"]:
            service = services[service_option["name"]]
            if service_option["volumes"]:
                if "volumes" not in service:
                    service["volumes"] = []

                for volume in service_option["volumes"]:
                    service["volumes"].append(volume["name"] + ":" + volume["path"])

    return data


if __name__ == "__main__":
    main(sys.argv[1:])
