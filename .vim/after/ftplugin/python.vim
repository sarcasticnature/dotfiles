let b:ale_linters = ['pylint', 'mypy']
let g:ale_python_mypy_use_global = 1
let g:ale_python_mypy_options = "--ignore-missing-imports"
"let g:ale_python_flake8_use_global = 1
let b:ale_linters_explicit = 1

let g:ale_fixers = ['autopep8']
