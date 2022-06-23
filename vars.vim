" You might have to force true color when using regular vim inside tmux as the
" colorscheme can appear to be grayscale with "termguicolors" option enabled.
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

syntax on
set termguicolors
set background=dark
colorscheme NeoSolarized
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



command! -nargs=0 Prettier :CocCommand prettier.forceFormatDocument
"--------------
" load lua configurations
runtime configs/which-key-config.vim
