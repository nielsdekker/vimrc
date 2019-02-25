" Toggles the fugitive git status menu
function! ToggleGStatus()
	if buflisted(bufname('.git/index'))
		bd .git/index
	else
		Gstatus
	endif
endfunction
command ToggleGStatus :call ToggleGStatus()

" Show syntax highlighting groups for word under cursor
nmap <C-S-P> :call <SID>SynStack()<CR>
function! <SID>SynStack()
  if !exists("*synstack")
    return
  endif
  echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc

