lua << EOF
use {
    'metakirby5/codi.vim',
}

use {
    'jeetsukumaran/vim-pythonsense',
}

-- Indentation level text object
use {
    'michaeljsmith/vim-indent-object',
}

-- Enable advanced syntax hl such as fstrings, self, @decorator
use {
    'vim-python/python-syntax',
}
-- Yes, this is actually vimscript inside lua inside vimscript
vim.cmd([[let g:python_highlight_all = 1]])

vim.cmd([[filetype plugin on]])
vim.cmd([[let g:black_linelength = 120]])
use {
    'psf/black'
}

vim.cmd([[autocmd BufWritePre *.py Black]])
vim.cmd([[autocmd BufWritePre *.json Black]])
vim.cmd([[autocmd BufWritePre *.geojson Black]])

use {
    'python-rope/ropevim'
}

use {
    'jsfaint/gen_tags.vim'
}

-- SourceTrail integration
use {
    'CoatiSoftware/vim-sourcetrail'
}

use {
    'sheerun/vim-polyglot'
}
EOF
