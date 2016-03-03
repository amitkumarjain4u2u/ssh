# Distribute SSH-KEYS 

Automated Script to Copy SSH-KEYS to multiple servers for passwordless authentication

#Script  to copy SSH keys to the target servers Recursively
It also sets the proper permissions on to the target directory

--Takes the serverlist file as inline argument

--The serverlist file should have IP/hostnames one per line

--No Trailing empty/carriage return line is accepted

--Script verifies for the existance of "id_rsa.pub" under /home/sysops/.ssh/

--and exits if no file detected

# Pre-requisites
--       Need Open-SSH installed

--       Need to have "id_rsa.pub" already generated

--       Use ssh-keygen -t rsa to generate if not done already

