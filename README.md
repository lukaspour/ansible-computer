tested on ubuntu mate 17.10 64bit

copy ssh private key from secure location

```
sudo apt install git
chmod 0600 id_rsa
ssh-add id_rsa
git clone git@github.com:lukaspour/ansible-computer.git
cd ansible-laptop

./bootstrap.sh computer all
./bootstrap.sh laptop all

or

./bootstrap.sh computer skype
./bootstrap.sh laptop skype
```
