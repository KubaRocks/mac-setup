#!/usr/bin/env bash

set -e

ANSIBLE_CONFIGURATION_DIRECTORY="$HOME/.mac-setup"

# Download and install Command Line Tools with a checking heuristic
if [[ $(/usr/bin/gcc 2>&1) =~ "no developer tools were found" ]] || [[ ! -x /usr/bin/gcc ]]; then
    echo "Info   | Install   | xcode"
    xcode-select --install
fi

# Download and install Homebrew
if [[ ! -x /opt/homebrew/bin/brew ]]; then
    echo "Info   | Install   | homebrew"
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/kuba/.zprofile
    eval "$(/opt/homebrew/bin/brew shellenv)"
    echo "Info   | Update    | homebrew"
    brew update
fi

# Modify the PATH
export PATH=/usr/local/bin:$PATH

# Download and install git
if [[ ! -x /opt/homebrew/bin/git ]]; then
    echo "Info   | Install   | git"
    brew install git
fi

# Download and install ruby
if [[ ! -x /opt/homebrew/bin/ruby ]]; then
    echo "Info   | Install   | ruby"
    brew install ruby
fi

if [[ `which ruby` != "/opt/homebrew/bin/ruby" ]]; then
    echo "Info   | Symlink   | ruby"
    brew link --overwrite ruby
fi

# Download and install Ansible
if [[ ! -x /opt/homebrew/bin/ansible ]]; then
    brew install ansible
fi

# Clone down the Ansible repo
if [[ ! -d $ANSIBLE_CONFIGURATION_DIRECTORY ]]; then
    git clone https://github.com/genjusz/mac-setup $ANSIBLE_CONFIGURATION_DIRECTORY
fi

cd $ANSIBLE_CONFIGURATION_DIRECTORY
git pull

# run provisioning
ansible-playbook main.yml
ansible-playbook playbooks/php.yml
ansible-playbook playbooks/fisher.yml

read -p "Do You wish to configure macOS now ? [yN] " configureMacOS
if [[ $configureMacOS == 'y' ]]; then
    ./macos-setup.sh
fi
