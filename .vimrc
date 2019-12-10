
" tab is two spaces
set smartindent
set tabstop=2
set shiftwidth=2
set expandtab

" Use bar cursor in insert mode and block cursor in normal mode
let &t_SI = "\e[5 q"
let &t_EI = "\e[1 q"

" Underline the line that the cursor is on (in insert mode only)
:autocmd InsertEnter * set cul
:autocmd InsertLeave * set nocul

" Map ,t to compile .tex and open, and ,q to compile quietly
let mapleader = ','
nmap <Leader>t :w <CR><CR>:!pdflatex %<CR><CR>:!open %:r.pdf<CR><CR>
nmap <Leader>b :!pdflatex %<CR><CR>:!bibtex %:r.aux<CR><CR>:!pdflatex %<CR><CR>
nmap <Leader>q :w <CR><CR> :!pdflatex %<CR><CR>

" Map ,r to compile .Rmd and open
let mapleader = ','
nmap <Leader>r :w <CR><CR>:!R -e 'rmarkdown::render("%")'<CR><CR>:!open %:r.html<CR><CR>

" Allows up to 1000 lines to be yanked from one doc and pasted into another
set viminfo='20,<10000,s10000

" Spell check
set spell

" Syntax highlighting
syntax on

" Solarized Dark
syntax enable
set background=dark
colorscheme solarized

