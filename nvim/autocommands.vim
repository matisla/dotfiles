
autocmd BufWritePost *.py execute ':! black %'
autocmd BufWritePost *.py execute ':e %'
