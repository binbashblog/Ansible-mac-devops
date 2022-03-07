# Installing Xcode Command Line Tools
xcode-select --install

# Install homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Add homebrew to path (M1 fix) if not exist
eval "$(/opt/homebrew/bin/brew shellenv)"
LINE='eval \"\$(/opt/homebrew/bin/brew shellenv)\"'
FILE='~/.zshrc'
grep -qF -- "$LINE" "$FILE" || echo "$LINE" >> "$FILE"

# Run brew doctor to display any problems with brew on screen
brew doctor

# Install python3 and add to path if not exist
brew install python
LINE='export PATH=\"/usr/local/opt/python/libexec/bin:\$PATH\"'
FILE='~/.zshrc'
grep -qF -- "$LINE" "$FILE" || echo "$LINE" >> "$FILE"

export PATH="/usr/local/opt/python/libexec/bin:$PATH"

# Set Alias ll to 'ls -lGaf' if not exist
alias ll="ls -lGaf"
LINE='alias ll=\"ls -lGaf\"'
FILE='~/.zshrc'
grep -qF -- "$LINE" "$FILE" || echo "$LINE" >> "$FILE"

# Install GNU Command Line Tools
brew install coreutils

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