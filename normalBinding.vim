let mapleader=" "
nnoremap <LEADER><CR> :noh<CR>

nnoremap j h
nnoremap k j
nnoremap i k
nnoremap h i
nnoremap H I
nnoremap I H

xnoremap j h
xnoremap k j
xnoremap i k
xnoremap h i
xnoremap H I
xnoremap I H

onoremap j h
onoremap k j
onoremap i k
onoremap h i
onoremap H I
onoremap I H

nnoremap S :w<CR>
nnoremap Q :q<CR>

cmap w!! w !sudo tee %

nnoremap <LEADER>o o<ESC>
nnoremap <LEADER>O O<ESC>

"==========================="
"=========Teminal==========="
"==========================="

tnoremap <esc><esc> <c-\><c-n>

if(has("win32") || has("win64") || has("win95") || has("win16"))
  nnoremap <leader>vt :vs term://powershell<CR>
  nnoremap <leader>st :split term://powershell<CR>
  nnoremap <leader>tt :tabe term://powershell<CR>
else
  nnoremap <leader>vt :vs term://$SHELL<CR>
  nnoremap <leader>st :split term://$SHELL<CR>
  nnoremap <leader>tt :tabe term://$SHELL<CR>
endif


map <leader>j <C-w>h
map <leader>k <C-w>j
map <leader>l <C-w>l
map <leader>i <C-w>k

map <leader>J <C-w>H
map <leader>K <C-w>J
map <leader>L <C-w>L
map <leader>I <C-w>K

nnoremap <leader><up> :res +3<CR>
nnoremap <leader><down> :res -3<CR>
nnoremap <leader><left> :vertical res -3<CR>
nnoremap <leader><right> :vertical res +3<CR>
