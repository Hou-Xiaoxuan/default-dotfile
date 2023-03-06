"" 启用vim-plus管理插件
call plug#begin('~/.vim/plugged')
Plug 'itchyny/lightline.vim'
"" 补全插件 可以填写github地址
Plug 'neoclide/coc.nvim', {'branch': 'release'} 
Plug 'jiangmiao/auto-pairs' " 成对括号
Plug 'preservim/nerdcommenter' " 多汗注释
Plug 'luochen1990/rainbow' " 彩虹括号
call plug#end()

"" 参数配置
set number 
set tabstop=4

"" 鼠标复制(未起作用)
if has('mouse')
    set mouse=a
    set clipboard=unnamedplus
endif

" coc use tab to trigger completion
function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()

" 启用rainbow
let g:rainbow_active = 1
