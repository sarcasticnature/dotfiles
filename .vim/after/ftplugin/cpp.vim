setlocal shiftwidth=2
setlocal softtabstop=2
setlocal expandtab

" don't indent in namespace
" align new line after open parentheses
setlocal cino=N-s,(0,Ws,g0

" prevent autocommenting on new line
setlocal formatoptions-=cro

let b:ale_linters = ['cpplint', 'cppcheck', 'clangtidy']
let b:ale_linters_explicit = 1

