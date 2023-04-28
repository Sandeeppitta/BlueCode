#!/bin/bash
read -p "Enter the server_ip:" server_ip
read -p "Enter the  path of the file to be copied:" path
read -p "Enter the client_ip:" client_ip
`scp $path $client_ip:/tmp`
