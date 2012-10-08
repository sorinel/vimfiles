let mapleader = "`"
let maplocalleader = "|"

"""""""""" disable middle mouse button pasting
map   <MiddleMouse>    <Nop>
map   <2-MiddleMouse>  <Nop>
map   <3-MiddleMouse>  <Nop>
map   <4-MiddleMouse>  <Nop>
imap  <MiddleMouse>    <Nop>
imap  <2-MiddleMouse>  <Nop>
imap  <3-MiddleMouse>  <Nop>
imap  <4-MiddleMouse>  <Nop>

"mapping romanian keyboard key § to `
map § `
map! § `
map ± ~
map! ± ~

"""""""""" macvim
if has("gui_macvim")
  let macvim_skip_cmd_opt_movement = 1
  let macvim_hig_shift_movement = 0

  runtime macmap.vim
endif

"""""""""" shortcuts
nn  <silent> <D-Cr>            :set fullscreen!<CR>

"""""""""" tabs
nn  <silent> <Leader>w         :bwipeout<CR>

"""""""""" windows, buffers and files
nn  <silent> <D-q>             :qa<CR>
nn  <silent> <Leader>q         :qa<CR>

nn  <silent> <D-s>             :up<CR>
nn  <silent> <Leader>s         :up<CR>

map  <silent> <C-Tab>           <ESC>:bn<CR>
map!  <silent> <C-Tab>           <ESC>:bn<CR>
map  <silent> <C-S-Tab>         <ESC>:bp<CR>
map!  <silent> <C-S-Tab>         <ESC>:bp<CR>

" nn  <silent> <C-Tab>           <C-^>
" nn  <silent> <C-S-Tab>         <C-^>
" nn  <silent> <Bs>              <C-^>
" nn  <silent> <Cr>              <C-^>
" nn  <silent> <M-Tab>           <C-w>w
" nn  <silent> <M-S-Tab>         <C-w>W
" nn  <silent> <Tab>             <C-w>w
" nn  <silent> <S-Tab>           <C-w>W

nn  <silent> <Leader>h         :sp<CR>
nn  <silent> <Leader>v         :vsp<CR><C-w>w

nn  <silent> <Leader>`         :maca openFileBrowser:<CR>

"""""""""" directory browsing
nn  <silent> <D-e>             :call BrowserFromCurrentDir()<CR>
nn  <silent> <Leader>e         :call BrowserFromCurrentDir()<CR>
nn  <silent> _                 :call BrowserFromCurrentDir()<CR>

nn  <silent> <D-E>             :call BrowserFromCurrentFilePath()<CR>
nn  <silent> <Leader>E         :call BrowserFromCurrentFilePath()<CR>
nn  <silent> -                 :call BrowserFromCurrentFilePath()<CR>

"""""""""" selections
nn   <special> <F2>            :let @/ = ""\|nohlsearch<CR>
ino  <special> <F2>            <C-o>:let @/ = ""\|nohlsearch<CR>

" select the most recent pasted text, generally works
" intended to be similar to gv
nn gb '[V']

"""""""""" toggle switches
nn  <silent> <Leader>a         :set wrap!<CR>
nn  <silent> <Leader>l         :set list!<CR>
nn  <silent> <Leader>p         :set paste!<CR>
nn  <silent> <Leader>n         :set number!<CR>

"""""""""" indenting
" TODO check with template expansion
" TODO check if works in normal mode
vn  <silent> >>                >gv

vn  <silent> <<                <gv

nn  <silent> <M-Right>         >>
vn  <silent> <M-Right>         >gv
ino <silent> <M-Right>         <C-o>>><C-o>2l

nn  <silent> <M-Left>          <<
vn  <silent> <M-Left>          <gv
ino <silent> <M-Left>          <C-o><<<C-o>2h

"""""""""" swap lines
" TODO make it work with visual mode (move a selected block up and down)
nn  <silent> <M-Up>            :call SwapUp()<CR>
nn  <silent> <M-Down>          :call SwapDown()<CR>

ino <silent> <M-Up>            <C-o>:call SwapUp()<CR>
ino <silent> <M-Down>          <C-o>:call SwapDown()<CR>

"""""""""" expansions
ino <C-space> <C-p>
ino ,.        <C-p>

""""""""""
""to make autocompletion(expansions) more friendly
inoremap <expr> <Esc>      pumvisible() ? "\<C-e>" : "\<Esc>"
inoremap <expr> <CR>       pumvisible() ? "\<C-y>" : "\<CR>"
inoremap <expr> <Down>     pumvisible() ? "\<C-n>" : "\<Down>"
inoremap <expr> <Up>       pumvisible() ? "\<C-p>" : "\<Up>"
inoremap <expr> <PageDown> pumvisible() ? "\<PageDown>\<C-p>\<C-n>" : "\<PageDown>"
inoremap <expr> <PageUp>   pumvisible() ? "\<PageUp>\<C-p>\<C-n>" : "\<PageUp>"

"""""""""" I love having two control keys instead of two alts
ino          <M-space>         <C-p>
ino          <M-r>             <C-r>

"""""""""" <3 _
" helpers to use _ like a word boundary
" TODO maybe use smartcase.vim
nn           cr                ct_
nn           vr                vt_
nn           yr                yt_
nn           dr                dt_
nn           gur               gut_
nn           gUr               gUt_

nn           car               bct_
nn           var               bvt_
nn           yar               byt_
nn           dar               bdt_
nn           guar              bgut_
nn           gUar              bgUt_

nn           cir               F_lct_
nn           vir               F_lvt_
nn           yir               F_lyt_
nn           dir               F_ldt_
nn           guir              F_lgut_
nn           gUir              F_lgUt_

"""""""""" random
" C-o & C-O form insert mode
ino          <S-CR>            <C-o>o
ino          <D-o>             <C-o>o
ino          <D-CR>            <C-o>O
ino          <D-O>             <C-o>O

nn <D-w>  :bwipeout<CR>
