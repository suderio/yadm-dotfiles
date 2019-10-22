
" Sets how many lines of history VIM has to remember
set history=500

" Attempt to determine the type of a file based on its name and possibly its
" contents. Use this to allow intelligent auto-indenting for each filetype,
" and for plugins that are filetype specific.
filetype indent plugin on

" Enable syntax highlighting
syntax on
  
" Allows you to re-use the same window and switch from an unsaved buffer without saving it first.
set hidden
    
" Better command-line completion
set wildmenu
     
" Show partial commands in the last line of the screen
set showcmd
      
" Highlight searches (use <C-L> to temporarily turn off highlighting; see the mapping of <C-L> below)
set hlsearch
       
" Modelines have historically been a source of security vulnerabilities. As
" such, it may be a good idea to disable them and use the  securemodelines
" script, <http://www.vim.org/scripts/script.php?script_id=1876>.
" set nomodeline
 
" Use case insensitive search, except when using capital letters
set ignorecase
set smartcase
          
" Allow backspacing over autoindent, line breaks and start of insert action
set backspace=indent,eol,start
           
" When opening a new line and no filetype-specific indenting is enabled, keep
" the same indent as the line you're currently on. Useful for READMEs, etc.
set autoindent
            
" Stop certain movements from always going to the first character of a line.
" While this behaviour deviates from that of Vi, it does what most users
" coming from other editors would expect.
set nostartofline
             
" Display the cursor position on the last line of the screen or in the status
" line of a window
set ruler
              
" Always display the status line, even if only one window is displayed
set laststatus=2
               
" Instead of failing a command because of unsaved changes, instead raise a
" dialogue asking if you wish to save changed files.
set confirm
                
" Use visual bell instead of beeping when doing something wrong
set visualbell
                 
" And reset the terminal code for the visual bell. If visualbell is set, and
" this line is also included, vim will neither flash nor beep. If visualbell
" is unset, this does nothing.
set t_vb=
                  
" Enable use of the mouse for all modes
set mouse=a
                   
" Set the command window height to 2 lines, to avoid many cases of having to
" "press <Enter> to continue"
set cmdheight=2
                    
" Display line numbers on the left
set number
                     
" Quickly time out on keycodes, but never time out on mappings
set notimeout ttimeout ttimeoutlen=200
                      
" Use <F11> to toggle between 'paste' and 'nopaste'
set pastetoggle=<F11>
                       
                        
" Indentation settings for using 4 spaces instead of tabs.
" Do not change 'tabstop' from its default value of 8 with this setup.
set shiftwidth=4
set softtabstop=4
set expandtab
                         
" Indentation settings for using hard tabs for indent. Display tabs as
" four characters wide.
set shiftwidth=4
set tabstop=4
                          
" Map Y to act like D and C, i.e. to yank until EOL, rather than act as yy,
" which is the default
map Y y$
                           
" Map <C-L> (redraw screen) to also turn off search highlighting until the
" next search
nnoremap <C-L> :nohl<CR><C-L>

" Plugins

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin()

Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' } 
Plug 'scrooloose/nerdTree' 
Plug 'mattn/emmet-vim'
Plug 'tpope/vim-surround'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'easymotion/vim-easymotion'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-pandoc/vim-pandoc'
Plug 'vim-pandoc/vim-pandoc-syntax'
Plug 'sheerun/vim-polyglot'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

call plug#end()

nmap <C-n> :NERDTreeToggle<CR>
map <Leader> <Plug>(easymotion-prefix)
let g:airline_theme='silver'
call deoplete#enable()
call deoplete#custom#option('omni_patterns', { 'go': '[^. *\t]\.\w*' })
