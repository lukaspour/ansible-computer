todo:

- slack download file jako variable nebo instalovat jinak
- vzdy prpsat stavajici .ssh slozku
- udelat rozdilnou instalaci pro PC a Laptop


tested on linux mint mate 18.3 sylvia 64bit

copy ssh private key to .ssh folder from secure location

```
sudo apt install git
chmod 0600 .ssh/id_rsa
git clone git@github.com:lukaspour/ansible-computer.git
cd ansible-laptop

./bootstrap.sh all

or

./bootstrap.sh skype
```
