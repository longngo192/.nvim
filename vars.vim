" You might have to force true color when using regular vim inside tmux as the
" colorscheme can appear to be grayscale with "termguicolors" option enabled.
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

syntax on
filetype plugin indent on
set termguicolors
set background=dark
set mouse=a
colorscheme solarized8
let g:transparent_enabled = v:true
let g:airline_powerline_fonts = 1
let g:airline_solarized_bg='dark'
set number
if has("unix")
  let s:uname = system("uname -s")
  " Do Mac stuff
  if s:uname == "Darwin\n"
    runtime configs/macos.vim
  elseif s:uname == "Linux\n"
    runtime configs/arch.vim
  endif
endif
if has('win32')
	runtime configs/windows.vim
endif

highlight link LspSagaFinderSelection Search

"--------------
" load plugins configurations
runtime configs/lsp/lsp-config.vim
runtime configs/cmp/cmp-setup.vim
source ~/.config/nvim/configs/lsp-saga.lua
source ~/.config/nvim/configs/null-ls-config.lua
runtime configs/which-key-config.vim
runtime configs/comment-config.vim
runtime configs/gitsigns-config.vim
runtime configs/colorizer-config.vim
runtime configs/lazygit-config.vim
runtime configs/syntastics-confifg.vim
runtime configs/rustfmt-confifg.vim
" runtime configs/neoformat-config.vim

