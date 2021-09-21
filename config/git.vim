autocmd VimEnter COMMIT_EDITMSG call OpenCommitMessageDiff()
function OpenCommitMessageDiff()
  try
    " Remove 'vert' if you want it horizontally split.
    :vert Git diff --cached

    " Fix-up tmp buffer
    set filetype=diff noswapfile nomodified readonly
    silent file [Changes\ to\ be\ committed]

    " Put the diff on the left
    wincmd r
  endtry

  " Get back to the commit message
  wincmd p
endfunction
