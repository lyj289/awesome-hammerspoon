# awesome-hammerspoon configuration

awesome-hammerspoon is my configuration for [Hammerspoon](http://www.hammerspoon.org/). It has highly modal-based, vim-style keybindings, provides some functionality like desktop widgets, window management, application launcher, instant search, aria2 frontend ... etc.

## Get started

1. Install [Hammerspoon](http://www.hammerspoon.org/) first.

2. `git clone https://github.com/lyj289/awesome-hammerspoon.git ~/.hammerspoon`

3. Reload the configutation.

## Keep update

`cd ~/.hammerspoon && git pull`

## How to use

Just press <kbd>opt</kbd>, plus <kbd>A</kbd> or <kbd>C</kbd> or <kbd>R</kbd>… to start. If need help, press <kbd>tab</kbd> to toggle the keybindings cheatsheet.

Press <kbd>opt</kbd> + <kbd>?</kbd> to toggle the help panel, which will show all <kbd>opt</kbd> related keybindings.

### Screenshots

These screenshots demostrate what awesome-hammerspoon is capable of. Learn more about [built-in Spoons](https://github.com/lyj289/awesome-hammerspoon/wiki/The-built-in-Spoons).

#### Move window to other screens
`alt + m`

#### Move mouse to other screens and focus the frontmost window
`alt + 1`

#### Window manpulation <kbd>⌥</kbd> + <kbd>R</kbd>

<details>
<summary>More details</summary>

![winresize](https://github.com/lyj289/bindata/raw/master/screenshots/awesome-hammerspoon-winresize.gif)

</details>

## Customization

<details>

<summary>More details</summary>

```shell
cp ~/.hammerspoon/config-example.lua ~/.hammerspoon/private/config.lua
```

Then modify the file `~/.hammerspoon/private/config.lua`:

- Add/remove Spoons.

  Define `hspoon_list` to decide which Spoons (a distributing format of Hammerspoon module) to be loaded. There are 15 built-in Spoons, learn about them at [here](https://github.com/lyj289/awesome-hammerspoon/wiki/The-built-in-Spoons).

  *There are more Spoons at [official spoon repository](http://www.hammerspoon.org/Spoons/) (you may need a little config before using them).*

- Customize keybindings

  Please read `~/.hammerspoon/private/config.lua`for more details.

Finally press `cmd + ctrl + shift + r` to reload the configuration.

</details>

## Contribute

<details>
<summary>More details</summary>

- Improve existing Spoons

  A "Spoon" is just a directory, right-click on it -> "Show Package Contents".

  Feel free to file issues or open PRs.

- Create new Spoons

  Some resources you may find helpful:

  [Learn Lua in Y minutes](http://learnxinyminutes.com/docs/lua/)

  [Getting Started with Hammerspoon](http://www.hammerspoon.org/go/)

  [Hammerspoon API Docs](http://www.hammerspoon.org/docs/index.html)

  [hammerspoon/SPOONS.md at master · Hammerspoon/hammerspoon](https://github.com/Hammerspoon/hammerspoon/blob/master/SPOONS.md)

</details>

## Thanks to

<details>
<summary>More details</summary>

[https://github.com/zzamboni/oh-my-hammerspoon](https://github.com/zzamboni/oh-my-hammerspoon)

[https://github.com/scottcs/dot_hammerspoon](https://github.com/scottcs/dot_hammerspoon)

[https://github.com/dharmapoudel/hammerspoon-config](https://github.com/dharmapoudel/hammerspoon-config)

[http://tracesof.net/uebersicht/](http://tracesof.net/uebersicht/)

</details>
