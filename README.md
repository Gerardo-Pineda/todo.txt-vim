### Why this fork?

This fork adds support for custom filenames and syntax highlighting for key:value pairs.

### Quick install

Using Lazyvim
```lua
{
  'gerardo-pineda/todo.txt-vim',
  config = function()
    vim.cmd([[syntax on]])
    vim.cmd([[filetype plugin on]])
  end
}
```

This plugin gives syntax highlighting to [todo.txt](http://todotxt.com/) files. It also defines a few mappings, to help with editing these files:

Sorting tasks:  
`<localleader>s`   Sort the file  
`<localleader>s+`  Sort the file on +Projects  
`<localleader>s@`  Sort the file on @Contexts  
`<localleader>sd`  Sort the file on dates  
`<localleader>sdd`  Sort the file on due dates  

Edit priority:  
`<localleader>j`   Decrease the priority of the current line  
`<localleader>k`   Increase the priority of the current line  
`<localleader>a`   Add the priority (A) to the current line  
`<localleader>b`   Add the priority (B) to the current line  
`<localleader>c`   Add the priority (C) to the current line  

Date:  
`<localleader>d`   Set current task's creation date to the current date  
`date<tab>`        (Insert mode) Insert the current date  

Mark as done:  
`<localleader>x`   Mark current task as done  
`<localleader>X`   Mark all tasks as done  
`<localleader>D`   Move completed tasks to done.txt  

This fork detects any file with custom names defined in your configuration.

To set custom filenames for your task and completed files, add the following code to your Lua configuration (e.g., inside Lazy.nvim's init function):

```lua
init = function()
  vim.g.todo_task_filename = 'todo.md'
  vim.g.todo_done_filename = 'done.md'
end,
```

This plugin detects any text file with the name todo.txt or done.txt with an optional prefix that ends in a period (e.g., second.todo.txt, example.done.txt).

You can check the help with `:help todo.txt`

