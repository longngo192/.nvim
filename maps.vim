let mapleader = " " " map leader to Space
nnoremap <S-C-p> "0p
" Delete without yank
nnoremap <leader>d "_d
nnoremap x "_x
" Increment/decrement
nnoremap + <C-a>
nnoremap - <C-x>

" Delete a word backwards
nnoremap dw vb"_d

" Select all
nmap <C-a> gg<S-v>G

" Save with root permission
command! W w !sudo tee > /dev/null %

" Search for selected text, forwards or backwards.
vnoremap <silent> * :<C-U>
  \let old_reg=getreg('"')<Bar>let old_regtype=getregtype('"')<CR>
  \gvy/<C-R><C-R>=substitute(
  \escape(@", '/\.*$^~['), '\_s\+', '\\_s\\+', 'g')<CR><CR>
  \gV:call setreg('"', old_reg, old_regtype)<CR>
vnoremap <silent> # :<C-U>
  \let old_reg=getreg('"')<Bar>let old_regtype=getregtype('"')<CR>
  \gvy?<C-R><C-R>=substitute(
  \escape(@", '?\.*$^~['), '\_s\+', '\\_s\\+', 'g')<CR><CR>
  \gV:call setreg('"', old_reg, old_regtype)<CR>

"-----------------------------
" Tabs

" Open current directory
nmap te :tabedit 
nmap <S-Tab> :tabprev<Return>
nmap <Tab> :tabnext<Return>
"--------------------------
" edit
nmap te <ESC>:tabedit 
inoremap kk <ESC>
inoremap <C-s> <ESC>:w<CR>
inoremap <C-h> <Left>
inoremap <C-l> <Right>
inoremap <C-j> <Down>
inoremap <C-k> <Up>
nnoremap , 0
nnoremap . $
nmap dl <ESC>yyp
map <C-S> <ESC>:w<CR>
nmap <C-w> <ESC>:bd<CR>
inoremap <A-Up> <ESC>:move -2<CR>i
inoremap <A-Down> <ESC>:move +1<CR>i
nnoremap <A-Up> <ESC>:move -2<CR>
nnoremap <A-Down> <ESC>:move +1<CR>
nnoremap <silent> <leader>gg :LazyGit<CR>
nnoremap <C-,> :Prettier<CR>
nnoremap <C-\> :source $MYVIMRC<CR>
"------------------
" Telescope
" Find files using Telescope command-line sugar.
nnoremap <leader>f <cmd>Telescope find_files<cr>
nnoremap <leader>r <cmd>Telescope live_grep<cr>
nnoremap <leader>h <cmd>Telescope help_tags<cr>

"-----------------

" Use K to show documentation in preview window.
nnoremap <silent> K <cmd>Lspsaga hover_doc<CR>
nnoremap <silent> F <cmd>Lspsaga lsp_finder<CR>
nnoremap <silent> L <cmd>Lspsaga show_line_diagnostics<CR>
nnoremap <silent> T <cmd>Lspsaga signature_help<CR>
nnoremap <silent> gr <cmd>Lspsaga rename<CR>
nnoremap <silent> gd <cmd>Lspsaga preview_definition<CR>

