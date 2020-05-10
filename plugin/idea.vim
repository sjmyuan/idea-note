if !exists('g:idea#local')
  let g:idea#local = $HOME.'/.idea/local'
endif

function! idea#normalize_path(path)
  let replace_empty = substitute(a:path, ' ', '-', 'g')
  let replace_double_back_slash = substitute(a:path, '\/\/', '\/', 'g')
  return replace_double_back_slash
endfunction

function! idea#open(...) abort
  let command = '/Users/jiaming.shang/personal/work/idea-note/bin/idea open --dry-run'

  for x in a:000
    let command = command.' '.x
  endfor

  echo command

  let file = system(command)

  echo file

  execute ":e" idea#normalize_path(file)
endfunction

function! idea#search(query) abort
  if !exists(':Ag')
    throw 'Can not find fzf.vim plugin.'
  endif

  if a:query != ''
    call fzf#vim#ag_raw('"'.a:query.'"'.' '.g:idea#local)
  else
    throw 'idea#search need a parameter'
  endif
endfunction

command! -nargs=* IdeaOpen :call idea#open(<f-args>)
command! -nargs=+ IdeaSearch :call idea#search(<q-args>)
