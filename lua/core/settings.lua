opt.termguicolors = true
opt.encoding = "UTF-8"
opt.clipboard = "unnamedplus"

opt.undofile = true
opt.number = true
opt.relativenumber = true
opt.cursorcolumn = true
opt.shiftwidth = 4
opt.tabstop = 4
opt.expandtab = true

opt.backup = false
opt.writebackup = false

opt.signcolumn = "yes"

opt.scrolloff = 10
opt.wrap = true

opt.breakindent = true
opt.hlsearch = false
opt.incsearch = true
opt.ignorecase = true
opt.smartcase = true
opt.showmatch = true
opt.showcmd = true
opt.showmode = false

opt.history = 1000

opt.wildmenu = true
opt.wildmode = "list:full"

opt.wildignore = "*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx"

opt.wildoptions = "pum"
opt.pumheight = 20

opt.mouse = "a"

opt.fillchars:append({ eob = " " })

opt.list = true

opt.spell = true
opt.spelllang = { "en_us" }

opt.splitright = true
opt.splitbelow = true

opt.guifont = { "FiraCode Nerd Font", ":h14" }

g.neovide_cursor_vfx_mode = "railgun"

g.loaded_python3_provider = 0
g.loaded_ruby_provider = 0
g.loaded_perl_provider = 0
g.loaded_node_provider = 0

g.vimtex_view_method = "zathura"

opt.foldenable = false
opt.foldmethod = "expr"
opt.foldexpr = "vimtex#fold#level(v:lnum)"
opt.foldtext = "vimtex#fold#text()"
opt.foldlevel = 2

opt.conceallevel = 2

vim.env.PYLINTRC = '~/.pylintrc'
