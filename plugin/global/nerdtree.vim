" NERDtree
"map <C-n> :NERDTreeToggle<CR>

"let NERDTreeQuitOnOpen=1
"let NERDTreeWinSize=35
"let NERDTreeCaseSensitiveSort=1

"let g:NERDTreeDirArrowExpandable = '▸'
"let g:NERDTreeDirArrowCollapsible = '▾'

let NERDTreeIgnore = ['\.pyc$', '__pycache__']
let NERDTreeMinimalUI = 1
let g:nerdtree_open = 0
map <leader>n :call NERDTreeToggle()<CR>

function NERDTreeToggle()
   NERDTreeTabsToggle
   if g:nerdtree_open == 1
      let g:nerdtree_open = 0
   else
      let g:nerdtree_open = 1
      wincmd p
   endif
endfunction

function! StartUp()
   if 0 == argc()
      NERDTree
   end
endfunction

autocmd VimEnter * call StartUp()


