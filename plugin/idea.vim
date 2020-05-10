if !exists('g:idea#local')
  let g:idea#local = $HOME.'/.idea/local'
endif

function! idea#normalize_path(path)
  let replace_empty = substitute(a:path, ' ', '-', 'g')
  let replace_double_back_slash = substitute(a:path, '\/\/', '\/', 'g')
  return replace_double_back_slash
endfunction

function! idea#open(file) abort
  let today = strftime('%Y-%m-%d')
  let work_dir = g:idea#local.today.'/'
  let today_with_time = strftime('%Y%m%dT%H%M%S.md')
  let idea_file = work_dir.today_with_time

  if !isdirectory(work_dir)
    call mkdir(work_dir, "p")
  endif

  if a:file != ''
    let idea_file=work_dir.'/'.a:file
  endif

  execute ":e" idea#normalize_path(idea_file)

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

command! -nargs=* IdeaOpen :call idea#open(<q-args>)
command! -nargs=+ IdeaSearch :call idea#search(<q-args>)
