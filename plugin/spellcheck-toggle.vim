" Spell has to always be on to support word completion, so instead we toggle
" the highlight

set spell spelllang=en_gb

hi clear SpellBad
hi clear SpellCap
hi clear SpellRare
hi clear SpellLocal

function! ToggleSpell()
  if !exists("g:showingSpell")
    let g:showingSpell=0
  endif

  if g:showingSpell==0
    execute "hi SpellBad cterm=underline ctermfg=red"
    let g:showingSpell=1
  else
    execute "hi clear SpellBad"
    let g:showingSpell=0
  endif
endfunction
  :map <F5> :call ToggleSpell()<CR>
