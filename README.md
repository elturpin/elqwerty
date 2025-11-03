# What
It is a keyboard layout greatly inspired by [QWERTY-Lafayette](https://qwerty-lafayette.org/) and [QWERTY-fr](https://qwerty-fr.org/).

The main difference is the usage of the <kbd><</kbd> as a second <kbd>AltGr</kbd> key. I do not like using my right hand to hold <kbd>AltGr</kbd> and pressing keys on the right part of the keyboard.

# Dependencies
```sh
# uv
curl -LsSf https://astral.sh/uv/install.sh | sh
```

# Build
```sh
./build.sh
```

# Install
```sh
./install.sh
```
It puts the result of the build inside the `${HOME}/.config/xkb` folder. At this location, it can be detected by the keyboard manager.

# Use it by default at boot
As root, run `dpkg-reconfigure keyboard-configuration` and selection the "Custom by user layout"

You can check the default layout in the file `/etc/default/keyboard`.

To get more info on the used layout, run `setxkbmap -print -verbose 10`

# More
+ [Kalamine](https://github.com/OneDeadKey/kalamine)
+ [xkb documentation](https://xkbcommon.org/doc/current/user-configuration.html)