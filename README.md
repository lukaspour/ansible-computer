todo:

slack download file jako variable nebo instalovat jinak



tested on linux mint mate 18.3 sylvia 64bit

copy ssh private key to .ssh folder from secure location

```
sudo apt install git
chmod 0600 .ssh/id_rsa
git clone git@github.com:lukaspour/ansible-laptop.git
cd ansible-laptop

./bootstrap.sh all

or

./bootstrap.sh skype
```
