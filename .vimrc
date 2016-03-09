syntax enable

set backspace=indent,eol,start
"let mapleader = ','			"non mi convince...
set number				"line numbers
set linespace=15			"funzia solo in modalità grafica



"------------------ Visuals -------------------"
set t_Co=256				"con questo becca i colorscheme a 256 colori, la mmerda
colorscheme atom-dark-256		



"------------------ Mappings -------------------"
" configurazione Vim"
nmap <Leader>ev :tabedit $MYVIMRC<cr>	"ev apre il file di configurazione
nmap <Leader><space> :nohlsearch<cr>	"rimuove l'highlight sulla ricerca



"------------------ Search -------------------"
" attiva l'highlight sulla ricerca
set hlsearch
set incsearch



"------------------ Split -------------------"
set splitbelow
set splitright
nmap <C-J> <C-W><C-J>
nmap <C-K> <C-W><C-K>
nmap <C-H> <C-W><C-H>
nmap <C-L> <C-W><C-L>



"---------------- Auto-Commands ----------------"
" autosource .vmirc sul salvataggio
" questa menata non ho capito a che cazzo serve, ma se no rallenta
augroup autosourcing
	autocmd!
	autocmd BufWritePost .vimrc source %
augroup END
