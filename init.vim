call plug#begin()

"<M refers to the alt / meta key
"<C refers to the control key

" HOW TO SOURCE THIS FILE :so $MYVIMRC
" :PlugInstall :PlugUpdate :PlugClean
" :options to search through all options
" :h number -> look up specific command
"
" TELSCOPE is amazing!
" https://github.com/nvim-telescope/telescope.nvim?tab=readme-ov-file#vim-pickers

" Looks and gui stuff
Plug 'vim-airline/vim-airline'
Plug 'catppuccin/vim', { 'as': 'catppuccin' }
Plug 'ThePrimeagen/vim-be-good'
Plug 'ThePrimeagen/git-worktree.nvim'
Plug 'windwp/nvim-autopairs'
Plug 'f-person/git-blame.nvim'
" Awesome plugin that makes vim and tmux navigation work
Plug 'christoomey/vim-tmux-navigator'
Plug 'gruvbox-community/gruvbox'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'ryanoasis/vim-devicons'
Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
Plug 'catppuccin/nvim', { 'as': 'catppuccin' }
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
" Markdown preview
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
" Diagnostics tool
Plug 'kyazdani42/nvim-web-devicons'
Plug 'folke/trouble.nvim'
" Because I AM USING NEOFORMAT I can probably uninstall this
" Linting stuff
Plug 'dense-analysis/ale'
"PlatformIO
Plug 'normen/vim-pio'
" Syntax highlighting for various languages
Plug 'sheerun/vim-polyglot'
" Colors :)
Plug 'norcalli/nvim-colorizer.lua'
"Functionalities
Plug 'jfsicilia/bclose'
" Plug 'jiangmiao/auto-pairs'
Plug 'kdheepak/lazygit.nvim'
Plug 'preservim/nerdtree'
Plug 'mhinz/vim-startify'
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-fugitive'
Plug 'nvim-lua/plenary.nvim' " needed for telescope
Plug 'ThePrimeagen/harpoon'
Plug 'nvim-telescope/telescope.nvim', { 'branch': '0.1.x' }
Plug 'nvim-treesitter/nvim-treesitter'
" Typescript language server integration.
Plug 'jose-elias-alvarez/typescript.nvim'
" Formatting
Plug 'sbdchd/neoformat'
"Syntax highlighting
Plug 'joerdav/templ.vim'
" Comment out code
Plug 'numToStr/Comment.nvim'
" completion
Plug 'neovim/nvim-lspconfig' " Language server protocol support
Plug 'hrsh7th/cmp-nvim-lsp' " Autocompletion
Plug 'L3MON4D3/LuaSnip'
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'simrat39/symbols-outline.nvim'

Plug 'VonHeikemen/lsp-zero.nvim', {'branch': 'v3.x'}

call plug#end()

" General configuration

syntax on
colorscheme catppuccin-mocha
set guicursor+=v:ver100
set path+=** " Adds ** to search path. which means seach any dirs and subdirs
set re=0
set wildignore+=*/node_modules/*
set magic
set encoding=UTF-8
set autoindent
set hidden
set clipboard=unnamed
set clipboard=unnamedplus
set colorcolumn=80
set completeopt=menuone,noinsert,noselect
set emoji " enable emoji
set exrc
set hidden " Keeps buffer open in the background
set incsearch
set lazyredraw
set mouse=a
set nobackup
set noerrorbells
set nohlsearch
set noshowmode
set noswapfile
set number
set relativenumber
set scrolloff=8
set shiftwidth=4
set signcolumn=yes
set smartindent
set smarttab
set smarttab
set softtabstop=4
set tabstop=4
set termguicolors
set title " tab title as file name
set undodir=~/.vim/undodir
set undofile
set updatetime=300

" Keep background transparent ( same as Iterm2 )
highlight Normal     ctermbg=NONE guibg=NONE
highlight LineNr     ctermbg=NONE guibg=NONE
highlight SignColumn ctermbg=NONE guibg=NONE

if has('persistent_undo')      "check if your vim version supports it
  set undofile                 "turn on the feature
  set undodir=$HOME/.vim/undo  "directory where the undo files will be stored
endif

" Shortcuts
" mode left-hand-side right-hand-side
" normal mode, no recursive, nnore

let mapleader = " "

" Be ware of using something like n as a shorcut while also using
" nf as a shorcut. This will case the n shortcut to be slow.
" Because Vim will wait a bit before executing the command.

" Map Ctrl + c to escape
nnoremap <C-c> <Esc>

" Safe Paste
" Paste over highlighted text without copying the delete content into
" register.
vnoremap p "_dP

" LazyGit <3
nnoremap <leader>lg :LazyGit<CR>

" Git Blame
"
"GitBlameToggle
nnoremap <Leader>gb :GitBlameToggle<CR>
nnoremap <Leader>gbo :GitBlameOpenFileURL<CR>


" Shorcut for inserting a line above or below current line
nnoremap <leader>o o<Esc>
nnoremap <leader>O O<Esc>

" Neoformatter
nnoremap <leader>nf :Neoformat<CR>

" Buffers
nnoremap <leader>bn :bnext<CR>
nnoremap <leader>bp :bprevious<CR>
nnoremap <leader>bc :enew<CR>
nnoremap <leader>bx :Bclose<CR>
nnoremap <leader>bl :buffers<CR>

" symbols-outline stuff
" nnoremap <leader>so :SymbolsOutline<CR>

" NERDTree
nnoremap <leader>tt :NERDTreeToggle<CR>
nnoremap <leader>tr :NERDTreeFind<cr>

" GIT WORKTREE
" Delete in wl telescope view using <c-d>
nnoremap <leader>wl <cmd>lua require('telescope').extensions.git_worktree.git_worktrees()<CR>
nnoremap <leader>wa <cmd>lua require('telescope').extensions.git_worktree.create_git_worktree()<CR>

" Telescope
nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<CR>
nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<CR>
nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<CR>
nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<CR>

" Trouble Diagnostics
" nnoremap <leader>xx :TroubleToggle<CR>
" nnoremap <leader>xq :TroubleToggle quickfix<CR>

""""""""""""""""""""
""""""HARPOOON""""""
""""""""""""""""""""
nnoremap <leader>ha <cmd>lua require('harpoon.mark').add_file()<CR>
nnoremap <leader>ho <cmd>lua require('harpoon.ui').toggle_quick_menu()<CR>
nnoremap <leader>j <cmd>lua require('harpoon.ui').nav_next()<CR>
nnoremap <leader>k <cmd>lua require('harpoon.ui').nav_prev()<CR>
nnoremap <leader>1 <cmd>lua require('harpoon.ui').nav_file(1)<CR>
nnoremap <leader>2 <cmd>lua require('harpoon.ui').nav_file(2)<CR>
nnoremap <leader>3 <cmd>lua require('harpoon.ui').nav_file(3)<CR>
nnoremap <leader>4 <cmd>lua require('harpoon.ui').nav_file(4)<CR>
nnoremap <leader>5 <cmd>lua require('harpoon.ui').nav_file(5)<CR>
nnoremap <leader>6 <cmd>lua require('harpoon.ui').nav_file(6)<CR>
nnoremap <leader>7 <cmd>lua require('harpoon.ui').nav_file(7)<CR>
nnoremap <leader>8 <cmd>lua require('harpoon.ui').nav_file(8)<CR>
" Do stuff inside vim and send to the terminal. Examples
"
" nnoremap <leader>tu <cmd>lua require('harpoon.tmux').gotoTerminal(6)<CR>
" nnoremap <leader>tc <cmd>lua require('harpoon.tmux').gotoTerminal(6)<CR>
" nnoremap <leader>hc1 <cmd>lua require('harpoon.tmux').sendCommand(6, 'rm -rf node_modules package.json && npm i')<CR>

" LSP config
" Use CTRL + o and CTRL + i to go back and forth from defintion.
nnoremap <leader>ld :lua OpenDefinition(false)<CR>
nnoremap <leader>lD :lua OpenDefinition(true)<CR>
nnoremap <leader>lt <cmd>lua vim.lsp.buf.type_definition()<CR>
nnoremap <leader>lh <cmd>lua vim.lsp.buf.hover()<CR>
nnoremap <leader>k <cmd>lua vim.lsp.buf.hover()<CR>
nnoremap <leader>org <cmd>lua vim.lsp.buf.code_action({  })<CR>
nnoremap <leader>lc <cmd>lua vim.lsp.buf.code_action()<CR>
nnoremap <leader>li <cmd>lua vim.lsp.buf.implementation()<CR>
noremap <leader>lr <cmd>lua vim.lsp.buf.references()<CR>
nnoremap <leader>ls <cmd>lua vim.lsp.buf.signature_help()<CR>
nnoremap <leader>lm <cmd>lua vim.lsp.buf.rename()<CR>
nnoremap <leader>lo <cmd>lua vim.diagnostic.open_float()<CR>
nnoremap <leader>[ <cmd>lua vim.diagnostic.goto_next()<CR>
nnoremap <leader>] <cmd>lua vim.diagnostic.goto_prev()<CR>

" Codium
" nnoremap <leader>ct :CodeiumToggle<CR>
" nnoremap <C-c> :call codeium#Clear()<CR>
" nnoremap <C-]> :call codeium#CycleCompletions(1)<CR>
" nnoremap <C-[> :call codeium#CycleCompletions(-1)<CR>
" nnoremap <leader>ch :CodeiumChat<CR>

" Use installed version of mono
let g:OmniSharp_server_use_mono = 1

" Startify start page
nnoremap <leader>s <cmd>:Startify<CR>
let g:startify_change_to_dir = 0
let g:startify_bookmarks = [
            \ { 'v': '~/dotfiles/init.vim'},
            \ { 's': '~/dotfiles/startship.toml'},
            \ { 'g': '~/.config/ghostty/config'},
            \ { 'y': '~/dotfiles/kitty.conf'},
            \ { 'z': '~/.zshrc'},
            \ { 't': '~/.tmux.conf'},
            \ ]

" Moving code works in visual, insert and normal mode
" ONLY IN NORMAL MODE AND VISUAL MODE
" https://vim.fandom.com/wiki/Moving_lines_up_or_down#:~:text=Mappings%20to%20move%20lines,-The%20following%20mappings&text=In%20normal%20mode%20or%20in,move%20the%20current%20line%20up.
" C-k means you have to hold controle and then k. Control on my keyboard is
" Capslock
nnoremap <S-k> :m .-2<CR>
nnoremap <S-j> :m .+1<CR>
vnoremap <S-k> :m '<-2<CR>gv=gv
vnoremap <S-j> :m '>+1<CR>gv=gv

let g:tmux_navigator_no_mappings = 1
noremap <silent> <C-h> :<C-U>TmuxNavigateLeft<cr>
noremap <silent>  <C-j> :<C-U>TmuxNavigateDown<cr>
noremap <silent> <C-k>  :<C-U>TmuxNavigateUp<cr>
noremap <silent> <C-l>  :<C-U>TmuxNavigateRight<cr>
" noremap <silent> {Previous-Mapping} :<C-U>TmuxNavigatePrevious<cr>

"Markdown preview configuration
let g:mkdp_auto_start = 0
let g:mkdp_echo_preview_url = 1


" let g:airline_powerline_fonts = 1
let g:airline_theme = 'catppuccin'
let g:airline#extensions#whitespace#enabled = 0

" Configure sections
let g:airline_section_a = 'Ⓥ ' . airline#section#create(['mode'])
let g:airline_section_z = '≡ %l/%{line("$")}'

" Show hidden files
let NERDTreeShowHidden=1

" Tweaks for browsing with Netrw
let g:netrw_banner=1 " Disable annoying banner
let g:netrw_liststyle=3 " display tree view
let g:netrw_keepdir=0 " Keep current dir

"tmux confug
let g:tmux_navigator_save_on_switch = 2
let g:tmux_navigator_disable_when_zoomed = 1

" Configure FZF default to ignore node_modules
let $FZF_DEFAULT_COMMAND='find . \( -name node_modules -o -name .git \) -prune -o -print'

" OmniSharp
" let g:OmniSharp_selector_ui = 'fzf'
" let g:OmniSharp_selector_findusages = 'fzf'
let g:OmniSharp_server_stdio = 1

" Some yamls stuff
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
set foldlevelstart=20

let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
let g:ale_sign_error = '✘'
let g:ale_sign_warning = '⚠'
let g:ale_lint_on_text_changed = 'never'

" Ale config
let g:ale_completion_autoimport = 1
let g:ale_fix_on_save = 1
let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'html': ['eslint'],
\   'javascript': ['eslint', 'prettier'],
\   'typescript': ['eslint', 'prettier'],
\   'javascriptreact': ['eslint', 'prettier'],
\   'typescriptreact': ['eslint', 'prettier'],
\   'typescript.tsx': ['eslint', 'prettier'],
\   'javascript.jsx': ['eslint', 'prettier'],
\   'bash': ['shfmt'],
\}

let g:ale_pattern_options = {
\   '.*\.env$': {'ale_enabled': 0},
\}

" Formatting / custom formatters
" https://prettier.io/docs/en/vim.html
" Add a custom format command for Bicep
" First, ensure .bicep files are detected correctly
au BufRead,BufNewFile *.bicep set filetype=bicep
" Then configure the formatter
let g:neoformat_bicep_azbicep = {
            \ 'exe': 'az',
            \ 'args': ['bicep', 'format', '--file', '%:p'],
            \ 'replace': 1,
            \ 'stdin': 0,
            \ 'valid_exit_codes': [0],
            \ 'no_append': 1
            \ }


" Explicitly configure Prettier for TypeScript files
let g:neoformat_typescript_pret = {
  \ 'exe': 'prettier',
  \ 'args': ['--config', '.prettierrc', '--write', '%:p'],
  \ 'replace': 1,
  \ 'stdin': 0,
  \ }

" Ensure Prettier is used for TypeScript files
let g:neoformat_enabled_bicep = ['azbicep']
let g:neoformat_enabled_typescript = ['pret']
let g:neoformat_enabled_typescriptreact = ['pret']
let g:neoformat_enabled_javascriptreact = ['pret']
let g:neoformat_enabled_javascript = ['pret']
let g:neoformat_enabled_html = ['pret']
" let g:neoformat_enabled_json = ['prettier']
" let g:neoformat_enabled_markdown = ['prettier']
let g:neoformat_enabled_css = ['pret']

let g:neoformat_try_node_exe = 1
" let g:neoformat_verbose = 1

"Disable yaml formatting
let g:neoformat_enabled_yaml = []

" configure Neoformat to run on save
" autocmd BufWritePre *.bicep Neoformat

lua << EOF
local cmp = require'cmp'
local lspconfig = require('lspconfig')

vim.filetype.add({ extension = { templ = "templ" } })
vim.filetype.add({ extension = { bicep = "templ" } })

require("nvim-autopairs").setup {}
require('telescope').load_extension("git_worktree")
require('symbols-outline').setup()
require'trouble'.setup()
require'Comment'.setup()
require'lspconfig'.ts_ls.setup{ opts }
require'lspconfig'.eslint.setup{}
require'lspconfig'.gopls.setup{}
require'lspconfig'.ccls.setup{}
require('gitblame').setup()
require'lspconfig'.csharp_ls.setup{}

require'lspconfig'.gleam.setup{
  on_attach = function(client, bufnr)
    -- Enable completion triggered by <c-x><c-o>
    require'completion'.on_attach(client, bufnr)

    -- Enable syntax highlighting
    vim.cmd('setlocal syntax=ON')
  end,
  capabilities = require('cmp_nvim_lsp').default_capabilities(vim.lsp.protocol.make_client_capabilities())
}

require("harpoon").setup({
    menu = {
        width = vim.api.nvim_win_get_width(0) - math.floor(vim.api.nvim_win_get_width(0) * 0.2),
    }
})

lspconfig.html.setup({
    on_attach = on_attach,
    capabilities = capabilities,
    filetypes = { "html", "templ" },
})

lspconfig.templ.setup({
    on_attach = on_attach,
    capabilities = capabilities,
})


local lsp_defaults = {
  flags = {
    debounce_text_changes = 100,
  },
  capabilities = require('cmp_nvim_lsp').default_capabilities(
    vim.lsp.protocol.make_client_capabilities()
  ),
  on_attach = function(client, bufnr)
    vim.api.nvim_exec_autocmds('User', {pattern = 'LspAttached'})
  end
}

lspconfig.util.default_config = vim.tbl_deep_extend(
  'force',
  lspconfig.util.default_config,
  lsp_defaults
)

local select_opts = {behavior = cmp.SelectBehavior.Select}

cmp.setup({
  sources = {
    {name = 'nvim_lsp', max_item_count = 100},
    {name = 'buffer', max_item_count = 100},
    {name = 'path'},
  },
  window = {
    documentation = cmp.config.window.bordered()
  },
  formatting = {
    fields = {'menu', 'abbr', 'kind'},
    format = function(entry, item)
      local menu_icon = {
        nvim_lsp = 'λ',
        buffer = 'Ω',
        path = '\\',
      }

      item.menu = menu_icon[entry.source.name]
      return item
    end,
  },
  mapping = {
    ['<Up>'] = cmp.mapping.select_prev_item(select_opts),
    ['<Down>'] = cmp.mapping.select_next_item(select_opts),

    ['<C-p>'] = cmp.mapping.select_prev_item(select_opts),
    ['<C-n>'] = cmp.mapping.select_next_item(select_opts),

    ['<C-u>'] = cmp.mapping.scroll_docs(-4),
    ['<C-d>'] = cmp.mapping.scroll_docs(4),

	['<C-l>'] = cmp.mapping.complete(),

    ['<C-e>'] = cmp.mapping.abort(),
    ['<CR>'] = cmp.mapping.confirm({select = true}),

  },
})

--Autocommand to add missing imports

vim.api.nvim_create_autocmd("BufWritePre", {
  group = vim.api.nvim_create_augroup("TS_add_missing_imports", { clear = true }),
  desc = "TS_add_missing_imports",
  pattern = { "*.ts" },
  callback = function()
    vim.lsp.buf.code_action({
      apply = true,
      context = {
        only = { "source.addMissingImports.ts" },
      },
    })
    vim.cmd("write")
  end,
})

function OpenDefinition(split)
    -- Clear quickfix list to prevent stale entries
    vim.fn.setqflist({}, 'r')

    -- Open in split if needed
    if split then
        vim.cmd("vsplit")
    end

    -- Navigate to the definition
    vim.lsp.buf.definition()

    -- Sleep to wait for any results to populate
    vim.cmd("sleep 100m")

    -- Close the quickfix if it's populated but unwanted
    if not vim.tbl_isempty(vim.fn.getqflist()) then
        vim.cmd("silent! cc " .. vim.fn.line('$'))
        vim.cmd("cclose")
    end
end

EOF
