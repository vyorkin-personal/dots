for f in split(glob('~/.vim/vundles/*.vim'), '\n')
  exe 'source' f
endfor
