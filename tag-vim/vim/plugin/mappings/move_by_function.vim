" move up/down quickly by using M-j, M-k
" which will move us around by functions
"
nn <silent> <C-j> }
nn <silent> <C-k> {
nn <silent> <D-j> }
nn <silent> <D-k> {

au FileType cpp map <buffer> <C-j> }
au FileType cpp map <buffer> <C-k> {

au FileType ruby map <buffer> <C-j> ]m
au FileType ruby map <buffer> <C-k> [m
au FileType rspec map <buffer> <C-j> }
au FileType rspec map <buffer> <C-k> {
au FileType javascript map <buffer> <C-j> }
au FileType javascript map <buffer> <C-k> {

" use D-j, D-k on Mac
au FileType ruby map <buffer> <D-j> ]m
au FileType ruby map <buffer> <D-k> [m
au FileType rspec map <buffer> <D-j> }
au FileType rspec map <buffer> <D-k> {
au FileType javascript map <buffer> <D-j> }
au FileType javascript map <buffer> <D-k> {
