set columns=150 
set lines=50

colorscheme tomorrow

nnoremap j gj
nnoremap k gk
nnoremap gj j
nnoremap gk k

if has("mac") " has(mac) line have to be checked before has(unix)
  set guifont=Osaka-Mono:h14
  let &pythonhome=glob("/usr/local/Cellar/python@2/2.*.*/Frameworks/Python.framework/Versions/2.*")
  let &pythondll =glob("/usr/local/Cellar/python@2/2.*.*/Frameworks/Python.framework/Versions/2.*/Python")
  let &pythonthreehome=glob("/usr/local/Cellar/python@3*/3.8.*/Frameworks/Python.framework/Versions/Current")
  let &pythonthreedll =glob("/usr/local/Cellar/python@3*/3.8.*/Frameworks/Python.framework/Versions/Current/Python")
  try
    python3 print()
    " use python3 as default because MacVim-kaoriya does not
    " support using python2.x and python3.x at the same time
  catch
  endtry
  " set linespace=7
else
  if has("win64") || has("win32") || has("win32unix")
    set guifont=Cica:h12
    " set linespace=5
  elseif has("unix")
    "set noimdisableactivate
    "set iminsert=2
    "inoremap <ESC> <ESC>:set iminsert=0<CR>
    "autocmd InsertLeave * set iminsert=0 imsearch=0
    set guifont=Cica\ Regular\ 14
    " set linespace=5
  endif
endif
