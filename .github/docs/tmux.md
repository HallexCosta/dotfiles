<h1 align="center">Tmux</h1>

## Guide
- [Getting Started](#getting-started)
- [Usage](#usage)
  - [Reload Config File](#reload-config-file)
  - [Move Between Panes](#move-between-pane)


[](#getting-started)
### Getting Started
<p>
  To the use settings below,
  you have a copying [.tmux.conf](https://github.com/hallexcosta/dotfiles/blob/master/configs/.tmux.config)
  to home directory ~/
<p>

[](#usage)
### Usage
> The symbolic expression `prefix` has the value (ctrl + b)
> The symbolic expression `prefix_hold` has the value holding of prefix key

[](#reload-config-file)
#### Reload config file 
```
prefix + r (reload ~/.tmux.conf)
```

[](#move-between-panes)
#### Move between panes
```
prefix + ctrl + h (move to left pane) 
prefix + ctrl + l (move to right pane) 
prefix + ctrl + k (move to up pane) 
prefix + ctrl + j (move to down pane) 
```

