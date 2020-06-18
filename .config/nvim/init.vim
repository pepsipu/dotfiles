call plug#begin()
Plug 'joshdick/onedark.vim'
Plug 'critiqjo/vim-bufferline'
Plug 'itchyny/lightline.vim'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
let g:deoplete#enable_at_startup = 1
call plug#end()
let g:lightline = {
    \   'colorscheme': 'jellybeans',
    \   'active': {
    \     'left': [
    \       ['mode', 'paste'],
    \       ['fugitive'],
    \       ['bufferinfo'],
    \     ],
    \     'right': [
    \       ['colinfo', 'percent'],
    \       ['filetype'],
    \       ['fileformat']
    \     ]
    \   },
    \   'inactive': {
    \     'left': [ ['bufferinfo'] ],
    \     'right': [ ['percent'], ['filetype'] ]
    \   },
    \   'tab': {
    \     'active': ['tabnum'],
    \     'inactive': ['tabnum']
    \   },
    \   'tabline': {
    \     'left': [ ['tabs'], ['bufferline'] ],
    \     'right': [ ['fileencoding'] ]
    \   },
    \   'component': {
    \     'bufferinfo': '%f %m',
    \     'bufferline': '%{MyBufferlineRefresh()}'.bufferline#get_status_string('TabLineSel', 'LightLineLeft_tabline_tabsel_1'),
    \     'colinfo': ':%c%V',
    \     'fileencoding': '%{&fenc}',
    \     'paste': '%{&paste?"P":""}'
    \   },
    \   'component_function': {
    \     'fileformat'  : 'MyFileformat',
    \     'filetype'    : 'MyFiletype',
    \     'fugitive'    : 'MyFugitive'
    \   },
    \   'subseparator': {
    \     'left': '|', 'right': '|'
    \   }
    \ }

let g:lightline.enable = {
    \   'statusline': 1,
    \   'tabline': 1
    \ }

let g:lightline.mode_map = {
    \   'n'      : ' N ',
    \   'i'      : ' I ',
    \   'R'      : ' R ',
    \   'v'      : ' V ',
    \   'V'      : 'V-L',
    \   'c'      : ' C ',
    \   "\<C-v>" : 'V-B',
    \   's'      : ' S ',
    \   'S'      : 'S-L',
    \   "\<C-s>" : 'S-B',
    \   "t"      : ' T ',
    \   '?'      : ' ? '
    \ }
syntax on
colorscheme onedark