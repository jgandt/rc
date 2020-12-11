" jgandt .vimrc file
"
"
""""""""""""""""""""""""""""
" Vundle
""""""""""""""""""""""""""""
" Setup for Vundle
set nocompatible              " be iMproved
filetype off                  " required!
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" " required!
Bundle 'gmarik/vundle'

" My bundles
"
" original repos on GitHub
"
" TPOPE!
" tpope's repeat. used by some of his other plugins
" Bundle 'https://github.com/tpope/vim-repeat'
" enable easy commenting
Bundle 'https://github.com/tpope/vim-commentary'
" enable some surround substitution settings
Bundle 'https://github.com/tpope/vim-surround'
" Some easier file manipulations
Bundle 'https://github.com/tpope/vim-eunuch'
" Amazing git wrapper
Bundle 'https://github.com/tpope/vim-fugitive'
" github support for vim-fugitive
Bundle 'https://github.com/tpope/vim-rhubarb'
" bitbucket support for vim-fugitive
Bundle 'https://github.com/tommcdo/vim-fubitive'
" for ALL ruby projects. this is not just a rake thing...
" Bundle 'https://github.com/tpope/vim-rake'
" move around rails and modify files better
" Bundle 'https://github.com/tpope/vim-rails'
" integrations with bundler... allows bundle open and helps the gem-ctags gem
Bundle 'https://github.com/tpope/vim-bundler'
" word coercion
Bundle 'https://github.com/tpope/vim-abolish'
" Markdown syntax
Bundle 'https://github.com/tpope/vim-markdown'
" Jade syntax
Bundle 'digitaltoad/vim-jade'
" Vue.js syntax
Bundle 'https://github.com/posva/vim-vue'
" Javascript and React syntax
Bundle 'pangloss/vim-javascript'
Bundle 'mxw/vim-jsx'
" Some navigation mappings
Bundle 'https://github.com/tpope/vim-unimpaired'
" dispatch! Fire commands into a new split and obtain output in a vimsplit
Bundle 'https://github.com/tpope/vim-dispatch'
" json handling
Bundle 'https://github.com/tpope/vim-jdaddy'

" elixir support
" Bundle 'https://github.com/elixir-lang/vim-elixir'
" elixir completion and some other stuff
" Bundle 'slashmili/alchemist.vim'

" Dash Documentation
" Bundle 'rizzatti/dash.vim'

" Multiple Cursor
Bundle 'https://github.com/terryma/vim-multiple-cursors'

" Quicksilver for searching through files
"   Depends on a system install of the silver searcher
Bundle 'https://github.com/rking/ag.vim'

" Ctrl P
Bundle 'https://github.com/ctrlpvim/ctrlp.vim'

" Rspec Highlighting
Bundle 'https://github.com/keith/rspec.vim'

" Handlebars support
Bundle 'mustache/vim-mustache-handlebars'

" SCSS syntax
Bundle 'cakebaker/scss-syntax.vim'

" General Syntax checking
" Bundle 'https://github.com/scrooloose/syntastic'
" " Set some basic Syntastic settings
" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 0
" " Syntastic is causing SUPER slowness in some big files...
" " let g:syntastic_check_on_open = 1
" let g:syntastic_check_on_wq = 0
" let g:syntastic_javascript_checkers = ['jshint']
" let g:syntastic_ruby_checkers = ['rubocop']
" let g:syntastic_ruby_rubocop_exec = '/Users/jgandt/scripts/ruby/rubocop_wrapper.sh'
" let g:syntastic_scss_checkers = ['scss_lint']

" silence some invalid rspec warnings
" let g:syntastic_ruby_mri_quiet_messages = { "level": "errors", "regex": '^possibly useless use of .* in void context$' }
" END Syntastic settings

" but turn off expandtab
" autocmd FileType slim set sw=2 sts=2 noet

" scala syntax
" Bundle 'https://github.com/derekwyatt/vim-scala'

" snipMate
"   using some custom snippets - listed in .vim/snippets
" 2 snipMate dependencies
Bundle 'MarcWeber/vim-addon-mw-utils'
Bundle 'tomtom/tlib_vim'
Bundle 'https://github.com/vim-scripts/snipMate'
Bundle 'honza/vim-snippets'

" NerdTree (unavoidable)
Bundle 'https://github.com/scrooloose/nerdtree'

" vim-rspec plugin, to run rspec tests from vim
Bundle 'thoughtbot/vim-rspec'

" tslime - send commands from vim to tmux. This is to integrate with vim-rspec
Bundle 'jgdavey/tslime.vim'

" recover - intelligently handle swap files
Bundle 'https://github.com/chrisbra/Recover.vim'

" Ruby Matchit
Bundle 'https://github.com/vim-scripts/ruby-matchit'
runtime macros/matchit.vim

" Go-lang
Bundle 'https://github.com/fatih/vim-go.git'

" jshint - lint checker for javascript! FUN!
"		Depends on node
" Bundle 'wookiehangover/jshint.vim'
" if this plugin is slowing things down, use this line to disable autochecking
" let JSHintUpdateWriteOnly=1

"
" Vimscripts Plugins
"
" buffer navigation tool
Bundle 'bufexplorer.zip'

" finish Vundle setup
" turn on filetype plugin
"   Also required for a csv plugin
filetype plugin indent on

"""""""""""""""""""""""""""""""
" END Vundle
"""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""
" set syntax options
"""""""""""""""""""""""""""""""
" expandtab on ruby files
autocmd FileType ruby set sw=2 sts=2 expandtab
" no expandtab on DrugDev front end files
autocmd FileType scss set ts=2 sw=2 sts=2 expandtab
autocmd FileType eruby set ts=4 sw=4 sts=4 noexpandtab
autocmd FileType javascript set sw=2 sts=2 expandtab

"""""""""""""""""""""""""""""""
" set search options
"""""""""""""""""""""""""""""""

" ignore case while search
set ignorecase

" search as you type
set incsearch

" highlight searches
set hlsearch


"""""""""""""""""""""""""""""""
" set completion options
"""""""""""""""""""""""""""""""

" bash-like filename completion
set wildmode=longest,list

" enable syntax aware word completions
" set omnifunc=syntaxcomplete#Complete

"""""""""""""""""""""""""""""""
" set CtrlP options
"""""""""""""""""""""""""""""""

let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v(tmp/.*$)|(test/fixtures/.*$)|(deps/.*$)|(.*node_modules/.*$)|(_build/.*$)'
  \ }
let g:ctrlp_mruf_relative = 0
let g:ctrlp_cmd = 'CtrlPMixed'
let g:ctrlp_match_window = 'bottom,order:btt,min:1,max:30,results:30'
let g:ctrlp_working_path_mode = 'ra'

"""""""""""""""""""""""""""""""
" set display options
"""""""""""""""""""""""""""""""

" use 256 colors
set t_Co=256

" turn on syntax highlighting
syntax on

" set colorscheme for syntax
colorscheme desert

" tweak base color
hi Normal ctermfg=34

" tweak ruby string interp
hi rubyInterpolationDelimiter ctermfg=186

" tweak Visual highlight color
hi Visual term=underline ctermfg=Gray guifg=Gray

" tweak Comment color
hi Comment ctermfg=188

" tweak string colors
hi Constant ctermfg=160
hi rubySymbol ctermfg=166

" control block colors
hi Statement ctermfg=226

" tweak class name color
hi Type ctermfg=31

" tweak Ruby do-end colors
hi Statement ctermfg=Yellow

" tweak variable and function name colors
hi Identifier ctermfg=81
hi rubyFunction ctermfg=75

" tweak listchar characters
set listchars=eol:$,tab:»\ 

" tweak special character highlighting
"		list/listchar color
hi SpecialKey ctermfg=8 guifg=lightgray

" change color for Syntastic (sign) background
hi SignColumn ctermbg=0

" tweak Pmenu color
"   Fuf uses this as it's background color
" hi Pmenu ctermbg=240 guibg=Gray40

" show matching braces
set sm

" set line wrap
set nowrap

" set Relative number display ( :se rnu )
set relativenumber
" set line number display (when combined with rnu, this shows the absolute
" line number on the current line (instead of 0))
set number

"""""""""""""""""""""""""""""""
" set folding options
"""""""""""""""""""""""""""""""

" set foldmethod to use syntax folding
" set foldmethod=syntax

" set the initial fold level to very high so that folds are open on start
" set foldlevelstart=50

"""""""""""""""""""""""""""""""
" set php display options
"""""""""""""""""""""""""""""""
let php_sql_query = 1


"""""""""""""""""""""""""""""""
" set formatting options
"""""""""""""""""""""""""""""""

" numbers of spaces of tab character
"set tabstop=4
set tabstop=2

" numbers of spaces of tab character
"set tabstop=4
set softtabstop=2

"number of spaces to autoindent
"set shiftwidth=4
set shiftwidth=2

" set tab (in insert mode) to insert spaces
" set expandtab
" set tab (in insert mode) to insert tabs
set noexpandtab

" turn on auto-tab (new line indents to same as previous
set autoindent

" allow backspacing past insert-start location
set backspace=2

"""""""""""""""""""""""""""""""
" set window options
"""""""""""""""""""""""""""""""

" open new horizontal splits on the bottom
set splitbelow

" open new vertical splits on the right
set splitright


"""""""""""""""""""""""""""""""
" new window navigation shortcuts
"""""""""""""""""""""""""""""""
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"""""""""""""""""""""""""""""""
" set vim-surround options
"""""""""""""""""""""""""""""""

" custom vim-surround mappings for ruby (specifically erb mappings)
let g:surround_45 = "<% \r %>"
let g:surround_61 = "<%= \r %>"
let g:surround_120 = "expect(\r).to"
let g:surround_88 = "expect { \r }.to"

"""""""""""""""""""""""""""""""
" set vim-rspec options
"""""""""""""""""""""""""""""""
" vim-rspec keymappings
nnoremap <Leader>t :call RunCurrentSpecFile()<CR>
nnoremap <Leader>s :call RunNearestSpec()<CR>
nnoremap <Leader>l :call RunLastSpec()<CR>
" nnoremap <Leader>a :call RunAllSpecs()<CR>

" IF USING DISPATCH
" let g:rspec_command = "Dispatch zeus rspec {spec}"
" END IF USING DISPATCH

" IF USING TSLIME
let g:tslime_always_current_session = 1
" " if you are using spring
" let g:rspec_command = 'call Send_to_Tmux("bundle exec spring rspec {spec}\n")'
" if you are not using spring
" let g:rspec_command = 'call Send_to_Tmux("bundle exec rspec {spec}\n")'
" END IF USING TSLIME

" some basic elixir tslime mappings
" nnoremap <Leader>r :call Send_to_Tmux("elixir ".expand("%")."\n")<CR>
" nnoremap <Leader>i :call Send_to_Tmux("i ".expand("%")."\n")<CR>

"""""""""""""""""""""""""""""""
" set NERDTree options
"""""""""""""""""""""""""""""""
" remove NERDTree's ownership of the ? key when in tree
let NERDTreeMapHelp = ""
"
" remove NERDTree's ownership of netrw file browser
let NERDTreeHijackNetrw=0

" remove some superfluous display stuff
let NERDTreeMinimalUI=1


"""""""""""""""""""""""""""""""
" set Bufexplorer options
"""""""""""""""""""""""""""""""
" set sort order to mru
" let g:bufExplorerSortBy='mru'
" show full path of file WITH the name
let g:bufExplorerSplitOutPathName=0


"""""""""""""""""""""""""""""""
" set Syntastic options
"""""""""""""""""""""""""""""""
" set Tell Syntastic to always load errors into the location list
let g:syntastic_always_populate_loc_list=1

" Auto adjust quickfix window height
function! AdjustWindowHeight(minheight, maxheight)
  exe max([min([line("$"), a:maxheight]), a:minheight]) . "wincmd _"
endfunction
au FileType qf call AdjustWindowHeight(3, 34)

" Word Definition Function

" map Ctrl-s with a call to my word definition script
" map! <C-d> :JpgDefineWord 
" function! JpgDefineWord(word_to_define)
"   execute(':r ! /Users/jeffgandt/.rvm/rubies/ruby-1.9.2-p290/bin/ruby /Users/jeffgandt/ruby/dictionary_api/word_definer.rb '.a:word_to_define)
" endfunction
" command! -nargs=* JpgDefineWord call JpgDefineWord( '<args>' )


"""""""""""""""""""""""""""""""
" set custom key mappings
"""""""""""""""""""""""""""""""

" remap ; to : and vice versa
"		kind of a bad idea...
nnoremap ; :
nnoremap : ;

" map \a to Silver Searcher search prompt
nnoremap <Leader>a :Ag! -i 

" map F3 to :w ant unix clean ant unix deploy
map <F3> ;w <CR> ;let @/ = "" <CR>

" map F8 to tempCopy
map <F8> :w! /tmp/vim.copy.temp <CR>
" map F9 to temp Paste
map <F9> :r /tmp/vim.copy.temp <CR>

" map F4 to BufExplorer
noremap <F4> :BufExplorer <CR>

" map command NF to NERDTreeToggle
command NT NERDTreeToggle
" map command NF to NERDTreeFind
command NF NERDTreeFind
" cd along with changing the root
let g:NERDTreeChDirMode = 2
" expand single child directories onto their own lines
let NERDTreeCascadeSingleChildDir = 0

" map FufFile with full dir search to F6 AND Ctrl-n in normal
" nnoremap <C-n> :FufFile **/;<CR> 

" map FufRenewCache to Ctrl-Shift-f
" nnoremap <C-S-f> :FufRenewCache <CR> 

" map F6 to BufExplorer
" noremap <S-F6> :BufExplorer <CR>
" noremap <C-F6> :BufExplorerHorizontalSplit

" map F2 to re-gen ctags
" map <F2> :!ctags -R -f ~/dresources/`pwd \| awk -F'dresources' '{print \$2}' \| awk -F"/" '{print \$2}'`/tags ~/dresources/`pwd \| awk -F'dresources' '{print \$2}' \| awk -F"/" '{print \$2}'` <CR><CR> :set tags=tags <CR>
map <F2> ;!ctags -R <CR><CR> ;set tags=tags <CR>

" This is a command to load files from the Quickfix list into the arglist
command! -nargs=0 -bar Qargs execute 'args' QuickfixFilenames()
function! QuickfixFilenames()
  " Building a hash ensures we get each buffer only once
  let buffer_numbers = {}
  for quickfix_item in getqflist()
    let buffer_numbers[quickfix_item['bufnr']] = bufname(quickfix_item['bufnr'])
  endfor
  return join(map(values(buffer_numbers), 'fnameescape(v:val)'))
endfunction

"""""""""""""""""""""""""""""""""
" Use old Regexp Engine
"   syntax highlighting (and a few other things are super slow in ruby files
"   because of the regexp version used in newer vim versions.
"   see:
"   https://stackoverflow.com/questions/16902317/vim-slow-with-ruby-syntax-highlighting/16920294#16920294
"""""""""""""""""""""""""""""""""
set re=1

" set some <Ctrl-s> saving keymaps
" command -nargs=0 -bar Update if &modified 
"                            \|    if empty(bufname('%'))
"                            \|        browse confirm write
"                            \|    else
"                            \|        confirm write
"                            \|    endif
"                            \|endif
" nnoremap <silent> <C-S> :<C-u>Update<CR>:call RunCurrentSpecFile()<CR>
" inoremap <c-s> <Esc>:Update<CR>:call RunCurrentSpecFile()<CR>
" vmap <C-s> <esc>:w<CR>gv:call RunCurrentSpecFile()<CR>

" Arduion Taglist plugin settings
" These don't work. It attempts to use a utility called "screen" which I
" think interferes with Unix screen? Heck it might just be unix screen and
" it's just not working as expected because of unix instead of linux?
" nnoremap <buffer> <leader>ad :ArduinoUploadAndSerial<CR>
" nnoremap <buffer> <leader>as :ArduinoSerial<CR>
