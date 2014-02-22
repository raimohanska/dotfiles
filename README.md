## setup

```
cd ~
git clone git@github.com:raimohanska/dotfiles.git
cd dotfiles
./install
```

## add vim bundle

```
cd ~/dotfiles
git submodule add <git url> vim/bundle/<bundle name>
git add .
git commit -am "added <bundle name>"
git push
```
