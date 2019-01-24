#!/bin/bash

echo "Sover lige lidt"
sleep 10s
echo "Nu er jeg klar"


user=root
password=secret
dbuser=ku
dbpassword=kudbpassword
database=ku
echo "$user:$password"
mysqladmin --user="$user" password "$password"
mysql --user="$user" --password="$password" --database="$database" --execute="delete from mysql.user where User not like 'root'; grant all on *.* to '$dbuser'@'%' identified by '$dbpassword'"
mysql --user="$user" --password="$password" --database="$database" < clean_data.sql
