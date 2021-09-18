echo "Generating RSA key if not exists..."
ssh-keygen -q -t rsa -N '' -f ~/.ssh/id_rsa <<<n >/dev/null 2>&1

function generate_and_copy_key {
sshpass -p "$1" ssh-copy-id "$2"
}

for host in $(cat hosts.txt)
do
  generate_and_copy_key "$1" "$host" &
done