if !exists('g:idea#local')
  let g:idea#local = $HOME.'/.idea/local'
endif

function! idea#open(query) abort
  let args_length = a:0

  if !exists(':Ag')
    throw 'Can not find fzf.vim plugin.'
  endif

  if a:query == ''
    let today = strftime('%Y-%m-%d')
    let today_with_time = strftime('%Y%m%dT%H%M%S.md')
    let work_dir = g:idea#local.today.'/'
    let idea_file = work_dir.today_with_time

    if !isdirectory(work_dir)
      call mkdir(work_dir, "p")
    endif

    execute ":e" idea_file
  else
    call fzf#vim#ag_raw(a:query.' '.g:idea#local)
  endif
endfunction

command! -nargs=* Idea :call idea#open(<q-args>)
