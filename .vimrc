syntax enable

set backspace=indent,eol,start
"let mapleader = ','			"non mi convince...
set number				"line numbers
set linespace=15			"funzia solo in modalità grafica


"------------------ Mappings -------------------"
colorscheme atom-dark


"------------------ Mappings -------------------"
" configurazione Vim.
nmap <Leader>ev :tabedit $MYVIMRC<cr>	"ev apre il file di configurazione
" rimuove l'highlight sulla ricerca
nmap <Leader><space> :nohlsearch<cr>


"------------------ Search -------------------"
" attiva l'highlight sulla ricerca
set hlsearch
set incsearch


"---------------- Auto-Commands ----------------"

" autosource .vmirc sul salvataggio
" questa menata non ho capito a che cazzo serve, ma se no rallenta
augroup autosourcing
	autocmd!
	autocmd BufWritePost .vimrc source %
augroup END
