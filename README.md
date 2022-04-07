# dotfiles (for Mac OS)

📝 Mac OS's terminal uses `zsh` as the default shell.

## Setting up a new Mac
1. Enable Command Line Tools (CLT) for XCode
```sh
$ xcode-select --install
```

2. Installing Homebrew
Refer to https://brew.sh/ for the latest install command.
```sh
$ /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

3. Cloning this Repository
```sh
$ ghq get https://github.com/kuanyi-ng/dotfiles

# cd into dotfiles/ 
```

4. Apply MacOS default settings
```sh
$ zsh setup_mac.sh
```

5. Create symbolic link to dotfiles
```sh
$ zsh link_config_files.sh
```

6. Install Dependencies with HomeBrew Bundle
Dependencies that will be installed are listed in `Brewfile`.
```sh
$ brew bundle
```

