# Installing Xcode Command Line Tools
xcode-select --install

# Install homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Add homebrew to path (M1 fix)
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zshrc
eval "$(/opt/homebrew/bin/brew shellenv)"

brew doctor

# Install python3
brew install python
echo 'export PATH="/usr/local/opt/python/libexec/bin:$PATH"' >> ~/.zshrc
export PATH="/usr/local/opt/python/libexec/bin:$PATH"

# Set Alias ll to 'ls -lGaf'
alias ll="ls -lGaf"
echo 'alias ll="ls -lGaf"' >> ~/.zshrc

# Install PIP
# curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
# sudo python get-pip.py

# Install Ansible
sudo pip3 install ansible
brew install git

# Clone this repository to your local drive
git clone https://github.com/binbashblog/Ansible-mac-devops.git

# Updating OSX

# Run `ansible-playbook setup-my-mac.yml -i inventory -K` inside this directory. Enter your account password when prompted.
cd Ansible-mac-devops
ansible-galaxy collection install community.general

ansible-playbook setup-my-mac.yml -i inventory -K
