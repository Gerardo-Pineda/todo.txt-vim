" File:        todo.txt.vim
" Description: Todo.txt filetype detection
" Author:      Leandro Freitas <freitass@gmail.com>
" License:     Vim license
" Website:     http://github.com/freitass/todo.txt-vim
" Version:     0.1

let g:todo_task_filename = get(g:, 'todo_task_filename', '[Tt]odo.txt')
let g:todo_done_filename = get(g:, 'todo_done_filename', '[Dd]one.txt')

execute 'autocmd BufNewFile,BufRead ' . g:todo_task_filename . ' set filetype=todo'
execute 'autocmd BufNewFile,BufRead *.' . g:todo_task_filename . ' set filetype=todo'
execute 'autocmd BufNewFile,BufRead ' . g:todo_done_filename . ' set filetype=todo'
execute 'autocmd BufNewFile,BufRead *.' . g:todo_done_filename . ' set filetype=todo'
