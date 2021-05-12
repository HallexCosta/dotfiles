<h1 align="center">Tmux</h1>

## Guide
- [Getting Started](#getting-started)
- [Usage](#usage)
  - [Reload Config File](#reload-config-file)
  - [Move Between Panes](#move-between-pane)
  - [Resize Panes](#resize-panes)


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
prefix + ctrl + h (move to left panel) 
prefix + ctrl + l (move to right panelj) 
prefix + ctrl + k (move to up panel) 
prefix + ctrl + j (move to down panel) 
```

[](#resize-panes)
#### Resize Panes
```
prefix_hold + ctrl + h (resize left panel) 
prefix_hold + ctrl + l (resize right panel) 
prefix_hold + ctrl + k (resize up panel) 
prefix_hold + ctrl + j (resize down panel) 
```
