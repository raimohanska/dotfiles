## setup

```
cd && git clone git@github.com:raimohanska/dotfiles.git && cd dotfiles
```

Optionally switch to the lightweight version using `git checkout lightweight`.

Then install using `./install`.

Then install `zsh` using `sudo apt-get install zsh` or similar.

Finally make zsh your login shell using `chsh -s /usr/bin/zsh`.

Login again and you're done!

## add vim bundle

```
cd ~/dotfiles
git submodule add <git url> vim/bundle/<bundle name>
git add .
git commit -am "added <bundle name>"
git push
```
