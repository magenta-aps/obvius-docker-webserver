#!/bin/bash
./docker-entrypoint-seeded.sh & ./entrypoint.sh && mysqld --user=mysql
