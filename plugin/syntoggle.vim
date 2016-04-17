" vim-syntoggle - Per buffer syntax highlighting
" Maintainer: Joseph R. Nosie
" Version:    0.2

if exists('g:loaded_syntoggle')
  finish
endif
let g:loaded_syntoggle = 1

if exists('g:syntax_on')
  syntax manual
endif

if !exists('g:syntoggle_syn_on')
  let g:syntoggle_syn_on = 0
endif
if !exists('g:syntoggle_ft_override')
  let g:syntoggle_ft_override = []
endif

noremap <unique> <plug>SynToggle :call <SID>syn_toggle()<CR>
noremap <unique> <plug>SynOn :call <SID>syn_set(1)<CR>
noremap <unique> <plug>SynOff :call <SID>syn_set(0)<CR>
command! -nargs=0 SyntaxToggle call s:syn_toggle()
command! -nargs=0 SyntaxOn call s:syn_set(1)
command! -nargs=0 SyntaxOff call s:syn_set(0)

function! s:syn_toggle()
  call s:syn_set(!b:syntax_on)
endfunction

function! s:syn_set(...)
  if a:0 > 0
    let b:syntax_on = a:1
  endif
  if !exists('b:syntax_on')
    if index(g:syntoggle_ft_override, &ft) < 0
      let b:syntax_on = g:syntoggle_syn_on
    else
      let b:syntax_on = !g:syntoggle_syn_on
    endif
  endif
  if b:syntax_on
    set syntax=ON
  else
    set syntax=
  endif
endfunction

augroup synToggle
au!
autocmd BufEnter * call s:syn_set()
augroup END

" vim: sw=2 ts=2 sts=2 et:
