default_values = {'sample_file': 'docker-compose_sample.yml'}

def main():
    default_sample_file = "docker-compose_sample.yml"
    sample_input = input("Sample docker-compose file name [" + default_sample_file + "]: ")
    sample_file = sample_input if sample_input else default_sample_file
    print(sample_file)


if __name__ == "__main__":
    main()

# clone git-projekter
## spørge efter credentials (platon-brugernavn

