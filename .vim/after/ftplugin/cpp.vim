setlocal shiftwidth=4
setlocal softtabstop=4
setlocal expandtab

" don't indent in namespace
" align new line after open parentheses
setlocal cino=N-s,(0,Ws,g0

" prevent autocommenting on new line
setlocal formatoptions-=cro

let b:ale_linters = ['clangtidy']
let b:ale_linters_explicit = 1

let b:ale_c_build_dir = '/root/ros/overlay_ws/build/compile_commands.json'

let g:ale_fixers = ['clang-format']

