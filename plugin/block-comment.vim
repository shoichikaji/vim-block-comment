if exists("b:did_block_comment")
    finish
endif
let b:did_block_comment = 1

let s:block_comment_pl = expand('<sfile>:p:h') . '/../tools/block-comment.pl'

if !executable(s:block_comment_pl)
    finish
endif

exec 'vnoremap <silent> ,# :! ' . s:block_comment_pl . " '\\#'<CR>"
exec 'vnoremap <silent> ," :! ' . s:block_comment_pl . " '\"'<CR>"
exec 'vnoremap <silent> ,/ :! ' . s:block_comment_pl . " '//'<CR>"
exec 'vnoremap <silent> ,; :! ' . s:block_comment_pl . " ';'<CR>"
exec 'vnoremap <silent> ,c :! ' . s:block_comment_pl . " 'off'<CR>"
