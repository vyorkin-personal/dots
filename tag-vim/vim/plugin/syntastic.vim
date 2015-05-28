let g:syntastic_javascript_checkers = ['jsxhint']
let g:syntastic_haml_checkers = ['haml_lint']
let g:syntastic_html_checkers = ['']

let g:syntastic_cpp_compiler = 'clang++'
let g:syntastic_cpp_compiler_options = ' -std=c++11 -stdlib=libc++'

" angularjs specific ignores
let g:syntastic_html_tidy_ignore_errors=[" proprietary attribute \"ng-", "lacks \"src", "trimming empty"]

let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0

let g:syntastic_error_symbol = '>'
let g:syntastic_warning_symbol = '>'
let g:syntastic_enable_balloons = 0
let g:syntastic_enable_highlighting = 0
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_jump = 0
let g:syntastic_enable_signs = 1

