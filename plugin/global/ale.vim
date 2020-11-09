" Put these lines at the very end of your vimrc file.

" Load all plugins now.
" Plugins need to be added to runtimepath before helptags can be generated.
packloadall
" Load all of the helptags now, after plugins have been loaded.
" All messages and errors will be ignored.
silent! helptags ALL

let g:ale_fix_on_save = 1
let g:ale_linters = {
	\ 'c': ['clang'],
	\ 'javascript': ['eslint'],
	\ 'python': ['pylint', 'flake8'],
	\ 'typescript': ['prettier'],
	\ 'ruby': ['rubocop'],
	\ 'vue': ['eslint', 'stylelint', 'vls'],
	\ 'vuejs': ['eslint', 'stylelint', 'vls'],
	\ }

let g:ale_fixers = {
	\ 'c': ['clang-format'],
	\ 'javascript': ['prettier', 'eslint'],
	\ 'python': ['black'],
	\ 'typescript': ['prettier', 'eslint', 'tslint'],
	\ 'ruby': ['rubocop'],
	\ 'vue': ['prettier'],
	\ 'vuejs': ['prettier'],
	\ }
