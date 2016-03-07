syntax enable

set backspace=indent,eol,start
"let mapleader = ','			"non mi convince..."
set number				"line numbers"
set linespace=15			"funzia solo in modalità grafica"


"------------------ Layout -------------------"
" con questo becca i colorscheme a 256 colori, la mmerda"
if has('unix')
	set t_Co=256
endif
colorscheme atom-dark-256


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
