# Parallel-bash
## Description
This is a simple bash script for parallel execution of commands on multiple remote Linux servers
## Usage
1. Clone this repo:
```bash
git clone https://github.com/digitalstudium/parallel-bash.git
```
2. Generate ssh key on your machine via this command:
```bash
ssh-keygen
```
3. Copy generated key to hosts which you want to run commands:
```bash
ssh-copy-id username@hostname1
ssh-copy-id username@hostname2
```
4. Add all these hosts to hosts.txt file like this:
```bash
username@hostname1
username@hostname2
```
5. Add desirable commands for running on target hosts to tasks.txt file:
```bash
sudo apt update
sudo apt install -y inetutils-traceroute
echo something > ~/filename
```
6. Run parallel-bash:
```bash
./parallel-bash
```