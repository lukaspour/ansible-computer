"############################
"### ANSIBLE MANAGED FILE ###
"############################

" syntax  colors
syntax on
" line numbers on left side
" set number
" 256 colors on which depend some colorschemes
set t_Co=256
" don't create swapfile
set noswapfile

filetype indent on
set smartindent 
nnoremap x "_x

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

map <silent><C-n> :tabnext<CR>
map <silent><C-p> :tabprevious<CR>
map <silent><C-c> :tabnew<CR>

map <silent><C-j> :wincmd j<CR>
map <silent><C-k> :wincmd k<CR>
map <silent><C-h> :wincmd h<CR>
map <silent><C-l> :wincmd l<CR>

colorscheme desert
colorscheme wombat256mod

set backup
set backupdir=~/.vim_auto_backups
au BufWritePre * let &bex = '-' . strftime("%Y%m%d-%H%M%S")
