# Parallel-bash
## Description
This is a simple bash script for parallel execution of commands on multiple remote Linux hosts
## Usage
1. Clone this repo:
```bash
git clone https://github.com/digitalstudium/parallel-bash.git
```
2. Add all remote Linux hosts to `hosts.txt` file like this:
```bash
username@hostname1
username@hostname2
```
3. Generate ssh key on your machine and copy generated key to remote Linux hosts:
```bash
./gen-and-copy-key.sh "<password-from-remote-hosts>"
```
4. Add desirable commands for running on remote Linux hosts to `tasks.txt` file:
```bash
sudo apt update
sudo apt install -y inetutils-traceroute
echo something > ~/filename
```
5. Run parallel-bash:
```bash
./parallel-bash
```