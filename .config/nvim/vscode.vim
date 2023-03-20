let mapleader = ' '
set clipboard=unnamedplus

" Splits navigation.
nnoremap <leader>sl <Cmd>call VSCodeNotify('workbench.action.focusRightGroup')<CR>
nnoremap <leader>sh <Cmd>call VSCodeNotify('workbench.action.focusLeftGroup')<CR>
nnoremap <leader>sj <Cmd>call VSCodeNotify('workbench.action.focusBelowGroup')<CR>
nnoremap <leader>sk <Cmd>call VSCodeNotify('workbench.action.focusAboveGroup')<CR>

" Tabs navigation.
nnoremap ¬ <Cmd>call VSCodeNotify('workbench.action.nextEditor')<CR> " ALT + l on Mac.
nnoremap ˙ <Cmd>call VSCodeNotify('workbench.action.previousEditor')<CR> " ALT + h on Mac.

" Tests.
nnoremap <leader>tf <Cmd>call VSCodeNotify('extension.runFileSpecs')<CR>
nnoremap <leader>tn <Cmd>call VSCodeNotify('extension.runSpecLine')<CR>
nnoremap <leader>tl <Cmd>call VSCodeNotify('extension.runLastSpec')<CR>

call plug#begin('~/.config/nvim/plugged')

" Commenting support.
Plug 'numToStr/Comment.nvim'

call plug#end()

lua require('vitalii/comment')
