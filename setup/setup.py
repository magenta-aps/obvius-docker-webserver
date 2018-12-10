import json

default_values = {
    "Sample docker compose file path": "setup/docker-compose_sample.yml",
    "Docker compose config file path": "setup/config.json",
    "VCS path": "platon.magenta-aps.dk:/home/git/",
    "Platon username": "",
    "Repos": ["www.ku.dk", "obvius", "tinymce3", "obvius_navigator"],
    "Bootstrap repo": "https://github.com/ku-kom/bootstrap.git"
}


def main():
    for key in default_values.keys():
        default_value = default_values[key]
        if isinstance(default_value, list):
            default_value = ";".join(default_value)
        input_value = input(key + " [" + default_value + "]: ")
        default_values[key] = input_value if input_value else default_value

    with open('setup/project.config', 'w') as fp:
        for key in default_values.keys():
            fp.write(key.replace(" ", "_") + "=\"" + default_values[key] + "\"\n")


if __name__ == "__main__":
    main()
