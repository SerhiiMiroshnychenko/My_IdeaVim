" МОЇ НАЛАШТУВАННЯ ДЛЯ NEOVIM

:set title
:set number
:set relativenumber
:set tabstop=4
:set expandtab
:set shiftwidth=4
:set smarttab
:set softtabstop
:set mouse=a
:set clipboard=unnamedplus

" Підсвічування поточного рядка
:set cursorline

" Підсвічування поточного стовпця
" :set cursorcolumn

" :set colorcolumn=80              "display color when line reaches pep8 standards
" :highlight ColorColumn ctermbg=9 "display ugly bright red bar at color column number
" When python filetype is detected, F5 can be used to execute script
:autocmd FileType python nnoremap <buffer> <F5> :w<cr>:exec '!clear'<cr>:exec '!python3' shellescape(expand('%:p'), 1)<cr>


:set inccommand=split
:set ttimeoutlen=0
:set t_Co=256
:set showmatch
:set showmode
:set ruler
:set scrolloff=12
:set encoding=utf-8
:set laststatus=2
" :colorscheme default

:set langmap=йq,цw,уe,кr,еt,нy,гu,шi,щo,зp,х[,ї],фa,іs,вd,аf,пg,рh,оj,лk,дl,ж\\;,є',ґ\\,яz,чx,сc,мv,иb,тn,ьm,ю.,./,ЙQ,ЦW,УE,КR,ЕT,НY,НY,ГU,ШI,ЩO,ЗP,Х{,Ї},ФA,ІS,ВD,АF,ПG,РH,ОJ,ЛK,ДL,Ж\\:,Є\\",Ґ<bar>,ЯZ,ЧX,СC,МV,ИB,ТN,ЬM,Б\\<,Ю>,№#

"vim-plug configuration, plugins will be installed in ~/.config/nvim/plugged
:call plug#begin('C:\Users\admin\AppData\Local\nvim\plugged')

" Use release branch (recommended)
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'olimorris/onedarkpro.nvim'

:call plug#end()

:set list
:set listchars=trail:·

" :set signcolumn=yes

" :colorscheme habamax


" somewhere in your config:
:colorscheme onedark

" Make <CR> to accept selected completion item or notify coc.nvim to format
" <C-g>u breaks current undo, please make your own choice.
:inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"