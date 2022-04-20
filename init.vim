" Director:io de plugins
call plug#begin('~/.local/share/nvim/plugged')

" Aquí irán los plugins a instalar
Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes' 
Plug 'Yggdroot/indentLine'
Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

set title  " Muestra el nombre del archivo en la ventana de la terminal
set number  " Muestra los números de las líneas
set mouse=a  " Permite la integración del mouse (seleccionar texto, mover el cursor)
set nowrap  " No dividir la línea si es muy larga

set cursorline  " Resalta la línea actual
set colorcolumn=120
set tabstop=4
set shiftwidth=4
set softtabstop=4
set shiftround
set expandtab  " Insertar espacios en lugar de <Tab>s
" Luego de esta línea puedes agregar tus configuraciones y mappings
set spelllang=en,es  " Corregir palabras usando diccionarios en inglés y español

set termguicolors  " Activa true colors en la terminal

colorscheme tokyonight

let g:NERDTreeChDirMode = 2  " Cambia el directorio actual al nodo padre actual

" Abrir/cerrar NERDTree con F2
map <F2> :NERDTreeToggle<CR>


let g:airline#extensions#tabline#enabled = 1  " Mostrar buffers abiertos (como pestañas)
let g:airline#extensions#tabline#fnamemod = ':t'  " Mostrar sólo el nombre del archivo

" Cargar fuente Powerline y símbolos (ver nota)
let g:airline_powerline_fonts = 1

set noshowmode  " No mostrar el modo actual (ya lo muestra la barra de estado)

let g:indentLine_fileTypeExclude = ['text', 'sh', 'help', 'terminal']
let g:indentLine_bufNameExclude = ['NERD_tree.*', 'term:.*']
set number
:augroup numbertoggle
:  autocmd!
:  autocmd BufEnter,FocusGained,InsertLeave,WinEnter * if &nu && mode() != "i" | set rnu   | endif
:  autocmd BufLeave,FocusLost,InsertEnter,WinLeave   * if &nu                  | set nornu | endif
:augroup END

source $HOME/.config/nvim/plug-config/coc.vim
