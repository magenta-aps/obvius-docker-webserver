#!/usr/bin/env bash

set -e

BASE_DIR=$PWD
python3 setup/setup.py

. setup/project.config

if [ ! -d ./obvius/src ]; then
    mkdir ./obvius/src
fi

for repo in $(echo ${Repos} | sed "s/;/ /g")
do
    if [ ! -d ./obvius/src/$repo ]; then
        git clone ${Platon_username}\@${VCS_path}${repo} ./obvius/src/${repo}
    fi
done

cd ./obvius/src/obvius/
git checkout docker

cd ../www.ku.dk/
git checkout docker

if [ ! -d ./var ]; then
    mkdir var
    mkdir var/document_cache/
    sudo chown -R www-data var/
fi

ln -sfn $PWD/var/document_cache docs/cache

if [ ! -d ./ku.dk-bootstrap/ ]; then
    git clone $Bootstrap_repo ku.dk-bootstrap/
fi

cd ${BASE_DIR}

python3 setup/create_docker_compose.py -i ${Sample_docker_compose_file_path} -j ${Docker_compose_config_file_path} >> docker-compose.yml