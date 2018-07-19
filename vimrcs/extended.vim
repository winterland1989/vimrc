"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Important: 
"       This requries that you install https://github.com/amix/vimrc !
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => GUI related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" theme
set background=light
try
    colorscheme solarized
catch
endtry

" Set font according to system
if has("mac") || has("macunix")
    set gfn=Source\ Code\ Pro:h13,Menlo:h11
elseif has("win16") || has("win32")
    set gfn=Source\ Code\ Pro:h12,Bitstream\ Vera\ Sans\ Mono:h11
elseif has("linux")
    set gfn=Source\ Code\ Pro:h12,Bitstream\ Vera\ Sans\ Mono:h11
elseif has("unix")
    set gfn=Monospace\ 11
endif

" Set macvim-askpass
if has("gui_macvim")
    let $SUDO_ASKPASS="~/Downloads/macvim-askpass"
    let $DISPLAY=":0"
    colorscheme solarized
endif

" Disable scrollbars (real hackers don't use scrollbars for navigation!)
set guioptions-=r
set guioptions-=R
set guioptions-=l
set guioptions-=L


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Turn persistent undo on 
"    means that you can undo even when you close a buffer/VIM
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
try
    set undodir=~/.vim_runtime/undodir
    set undofile
catch
endtry


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Command mode related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Bash like keys for the command line
cnoremap <C-A>		<Home>
cnoremap <C-E>		<End>
cnoremap <C-K>		<C-U>

cnoremap <C-P> <Up>
cnoremap <C-N> <Down>

" Map ½ to something useful
map ½ $
cmap ½ $
imap ½ $

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Custom stuff
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" show cross line
set cursorline! cursorcolumn!
" highlight Cursorline gui=underline cterm=underline
set number

" remap visual block
nnoremap <C-q> <c-v>

" cut/copy/selectAll
vnoremap <C-x> "+c
vnoremap <C-c> "+y
vmap <C-v> c<ESC>"+p
imap <C-v> <C-r><C-o>+
nnoremap <C-a> ggVG

" Allow saving of files as sudo when I forgot to start vim using sudo.
" cmap w!! w !sudo tee > /dev/null %

" Allow toggling between local and default mode
func! TabToggle()
  if &expandtab
    set shiftwidth=4
    set softtabstop=0
    set noexpandtab
  else
    set shiftwidth=4
    set softtabstop=4
    set expandtab
  endif
endfunc

" Pretty printing JSON and set syntax
nmap <F8> mz:%!python -m json.tool<CR>:set syntax=javascript<CR>'z

" copy word from above line
noremap <C-y> kyiwjPA
inoremap <C-y> <ESC>klyiwjpA
