Copied & customized from https://github.com/DemisR/mac-devops-setup

# 💻 DevOps Mac OS automated setup 

This ansible playbook installs and sets up all the tools I need for my DevOps environment.

## 🚥 Installation 

Download and Execute [Install.sh](Install.sh) or clone this repository

_Note: If some Homebrew commands fail, you might need to agree to XCode's license or fix some other Brew issue. Run brew doctor to see if this is the case._

_Note2: For enabling some options and setup alias etc. I clone my dot files repo ( `.zshrc`,`.aliases`,`.gitignore_global`,...)._

_Note3: Of course you can use yours changing `dotfiles_repo` variable in `default.config.yml` file._

## 🚀 Usage

Just Download and Execute [Install.sh](Install.sh) 

OR clone this repository and
Just run the following command at the root of this project and enter your account password when prompted.

```sh
ansible-playbook setup-my-mac.yml -i inventory -K
```

You can customize the setup by editing the `default.config.yml` config file.


## ✨What this playbook does

The complete list of software installed is in `default.config.yml`, but in summary here's what the playbook does.

- Installs homebrew and cask and installs applications, utilities and quick look plugins. 

    Docker, Vagrant, slack, 1password, postman,...

- Clone my dotfile from github repository.

- Install mas (Mac App Store command line interface)

- Configure terminal

    Install vscode with extensions
    Install Zsh and configure options with oh-my-zsh

- Configure Mac OS 

    Show icons for hard drives, servers, and removable media on the desktop
    Avoid creating .DS_Store files on network volumes
    Finder: show status bar
    Save screenshots in PNG format
    Save screenshots to the Desktop/Screenshots folder

## Testing the Playbook

Use Mac virtualbox https://github.com/geerlingguy/macos-virtualbox-vm

## See also

- https://github.com/DemisR/mac-devops-setup (the author I copied & customized this from)
- https://blog.vandenbrand.org/2016/01/04/how-to-automate-your-mac-os-x-setup-with-ansible/
- http://www.nickhammond.com/automating-development-environment-ansible/
- https://github.com/simplycycling/ansible-mac-dev-setup/blob/master/main.yml
- https://github.com/mas-cli/mas
- https://github.com/geerlingguy/mac-dev-playbook
- https://github.com/osxc
- https://github.com/MWGriffin/ansible-playbooks/blob/master/sourcetree/sourcetree.yaml   
- https://github.com/sindresorhus/quick-look-plugins
