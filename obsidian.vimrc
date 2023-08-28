" commenting out the visual line navigation out as it fails navigating notes with embeds
"" Have j and k navigate visual lines rather than logical ones, normal mode
""noremap j gj
""noremap k gk
""noremap gj j
""noremap gk k
"
"" use logical line navigation in visual mode
""vnoremap j gj
""vnoremap k gk
""vnoremap gj j
""vnoremap gk k

" clear highlights
nmap <F5> :nohl

" Emulate Original gt and gT https://vimhelp.org/tabpage.txt.html#gt
exmap nextTab obcommand workspace:next-tab
exmap prevTab obcommand workspace:previous-tab
nmap gt :nextTab
nmap gT :prevTab

" Emulate Original Folding command https://vimhelp.org/fold.txt.html#fold-commands
exmap unfoldall obcommand editor:unfold-all
exmap togglefold obcommand editor:toggle-fold
exmap foldall obcommand editor:fold-all
exmap foldless obcommand editor:fold-less
exmap foldmore obcommand editor:fold-more
nmap zo :togglefold
nmap zc :togglefold
nmap za :togglefold
nmap zm :foldmore
nmap zM :foldall
nmap zr :foldless
nmap zR :unfoldall

" spell check
exmap contextMenu obcommand editor:context-menu
nmap z= :contextMenu
vmap z= :contextMenu

exmap wq obcommand workspace:close
exmap q obcommand workspace:close

exmap focusRight obcommand editor:focus-right
nmap <C-w>l :focusRight

exmap focusLeft obcommand editor:focus-left
nmap <C-w>h :focusLeft

exmap focusTop obcommand editor:focus-top
nmap <C-w>k :focusTop

exmap focusBottom obcommand editor:focus-bottom
nmap <C-w>j :focusBottom

exmap vsplit obcommand workspace:split-vertical
nmap <C-w>v :vsplit

exmap split obcommand workspace:split-horizontal
nmap <C-w>s :split

" Yank to system clipboard
set clipboard=unnamed
set tabstop=4
