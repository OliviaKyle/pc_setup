# PC Setup

These are some scripts to help set up a pc from a fresh install

## Ubuntu

Run the `ubuntu.sh` script.

```
# install wget to fetch the script
sudo apt-get install wget

# download the script
wget https://raw.githubusercontent.com/OliviaKyle/pc_setup/master/ubuntu.sh

# run the script
source ubuntu.sh
```

Or you could just copy paste it from the file.

## Other things

### SSH keys

Setting up ssh keys on ubuntu (used from github)

To generate a new key:

```
ssh-keygen  # and follow the prompt, blank passphrase is OK
```

Read the public key, and copy it from the terminal (for pasting in github)

```
cat ~/.ssh/id_rsa.pub
```

Configure with github: 
* Click `user icon (top right)`
* Click `Settings`
* Click `SSH and GPG keys`
* Click `New SSH key`
* Paste the key into Key text block
* Click `Add SSH key`

You should be able to use git with github now!