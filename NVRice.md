# Basic notetaking doc for my own NVRice creation

## TMUX 
- add bunch of keybinds and changes to .tmux.conf
- Tmux Resurrect
- Tmux continuum
- Tmux-which-key (may need to rebind its popup prefix key)
  - doesnt show but prefix+j / prefix + J are to rejoin pane to a chosen window either vertically or horizontally
## Nvim w/ Kickstart
- set vim.g.havenerdfont = true for wsl2 with hack patched font in windows terminal
#### Custom added plugins / prepackaged that I configured
- gruvbox-baby (bad coloring with neotree add new file?)
- Lualine.nvim
  - Added small config
- todo-comments (added signs = true)
- peek.nvim 
  - needs deno as a dependency
  - if using WSL2, no gui so not possible to use webview
    - use browser instead with a path to executable
- oil.nvim
- telescope.nvim 
  - added undo with basic mappings for a undo history tree

<!-- PERF: NO RICING UNTIL FURTHER NOTICE!  -->
- consider adding dashboard with a todo.md file?
- edit look of the telescope pickers?
- snacks.nvim? 
- tmux sessionizer?
