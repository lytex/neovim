Plug 'metakirby5/codi.vim'
Plug 'jeetsukumaran/vim-pythonsense'

" Indentation level text object
Plug 'michaeljsmith/vim-indent-object'

" Enable advanced syntax hl such as fstrings, self, @decorator
Plug 'vim-python/python-syntax'
let g:python_highlight_all = 1

let g:black_linelength = 120
Plug 'psf/black'
autocmd FileType python autocmd BufWritePre call Black()
autocmd FileType json autocmd BufWritePre call Black()

Plug 'jsfaint/gen_tags.vim'

" SourceTrail integration
Plug 'CoatiSoftware/vim-sourcetrail'

Plug 'sheerun/vim-polyglot'

