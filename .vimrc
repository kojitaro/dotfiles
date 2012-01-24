set number
set autowrite
set hidden
set showtabline=2	" タブを常に表示
set imdisable	" IMを無効化
set hid
set tabstop=4
set shiftwidth=4
set wrapscan
set autoindent


set statusline=%<%f\ %m%r%h%w%{'['.(&fenc!=''?&fenc:&enc).']['.&ff.']'}%=%l,%c%V%8P


" Python Develop
autocmd FileType python setl smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class
autocmd FileType python setl tabstop=8 expandtab shiftwidth=4 softtabstop=4

" Java Develop
autocmd BufRead *.java set efm=%A\ %#[javac]\ %f:%l:\ %m,%-Z\ %#[javac]\ %p^,%-C%.%#
autocmd BufRead *.java set makeprg=ant\ -find\ build.xml

" PHP Develop

" File 
nmap <Space>b :ls<CR>:buffer 
nmap <Space>v :vsplit<CR><C-w><C-w>:ls<CR>:buffer
nmap <Space>V :Vexplore!<CR><CR>
nmap <Space>f :edit .<CR>


"  tab
nmap <Space>t :tabnew<CR>
nmap <Space>l gt<CR>
nmap <Space>h gT<CR

" for script Development
function! s:Exec()
     exe "!" . &ft . " %"
:endfunction
command! Exec call <SID>Exec()
map <silent> <C-P> :call <SID>Exec()<CR>

