!PUBLIC REPOSITORY!

tested on ubuntu mate 17.10 64bit

UBUNTU 18.04 Install to i7 computer

* set `nomodeset` in grub
* install minimal installation
* remove cable from secondary graphics
* go to Software & Updates and allow NVIDIA proprietary driver
* reboot and connect cable


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


TODO:
http://linuxbrew.sh/
https://github.com/miquella/vaulted
