# VSCode til Terminalen 🚀

> Presentasjon BouvetOne 6.mars 2025

Presentasjonen er laget med [reveal.js](https://revealjs.com/) og den finner du i [`vscode-til-terminalen.html`](./vscode-til-terminalen.html).

## 📜 TOC

- [⚡ Kom i gang med Neovim](#kom-i-gang)
- [🛠️ Config-filer](#config)
- [📺 Videoressurser](#videos)
- [🐙 Github repos](#repos)
- [⭐️ Andre programmer](#other)
- [Spørsmål](#questions)

<a name='#kom-i-gang'></a>
## ⚡ Kom i gang med Neovim

- Start med Vim plugin i VSCode.
- Prøv vimtutor. Kommer installert med vim / neovim. (Bare skriv vimtutor i terminalen)
- Se [denne](https://www.youtube.com/watch?v=m8C0Cq9Uv9o) videoen og installer kickstart.nvim

Det finnes idag ganske mange distrubusjoner av Neovim som ikke krever noe konfigurasjon.
De fleste av disse er etter min mening, ganske "bloated" og har for mange plugins.
Eksempler på disse er LazyVim, NvChad og AstroVim.

Det jeg i stedet vil **anbefale** er **kickstart.nvim**


[Denne](https://www.youtube.com/watch?v=m8C0Cq9Uv9o) videoen av TJ DeVries er fantastisk og
gir deg alt du trenger for å komme i gang.

Kickstart.nvim er kun et starter template for Neovim som inneholder all konfigurasjon
du trenger for å komme i gang.

For mac. Hvis du bruker windows/linux sjekk ut [kickstart.nvim](https://github.com/nvim-lua/kickstart.nvim) repoet.

```bash
# Installer neovim
brew install neovim

# Klon repo til ~/.config/nvim.
# HUSK å ta backup av configen din først hvis du har fra før.

git clone https://github.com/nvim-lua/kickstart.nvim.git "${$HOME/.config}"/nvim

nvim

```

---

<a name='config'></a>
## Config-filer

I repoet finner du mine config filer 🙉

- **Tmux** - .tmux.conf
- **Zsh** - .zshrc
- **Neovim** - init.vim (mye rot, bruk på egen ansvar)
- **Ghostty** - ghostty-config

---

<a name='videos'></a>
## 📺 Videoressurser

Noen gode videoer for å lære mer:
d
- [Neovim in 100 seconds](https://www.youtube.com/watch?v=c4OyfL5o7DU)
- [Vim in 100 seconds](https://www.youtube.com/watch?v=-txKSRn0qeA)
- [Tmux in 100 seconds](ttps://www.youtube.com/watch?v=vtB1J_zCv8I)
- [Kickstart.nvim](https://github.com/nvim-lua/kickstart.nvim)

<a name="repos"></a>
## Github repos

- [github-neovim](https://github.com/neovim/neovim)
- [github-tmux](https://github.com/tmux/tmux)
- [github-lazygit](https://github.com/jesseduffield/lazygit)
- [kickstart.nvim](https://github.com/nvim-lua/kickstart.nvim)

<a name="other"></a>
## Andre programmer jeg bruker

- [autojump](https://www.google.com/search?q=autojump+github&oq=autojump+github&gs_lcrp=EgZjaHJvbWUyBggAEEUYOTIGCAEQLhhA0gEINDQ4NWowajGoAgCwAgA&sourceid=chrome&ie=UTF-8) - raske og enkel navigasjon
- [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions/blob/master/INSTALL.md) - auto-complete forslag i terminalen
- [eza](https://github.com/eza-community/eza) - Bedre ls
- [lazydocker](https://github.com/jesseduffield/lazydocker) - Lazygit med for docker.
- [jq](https://github.com/jqlang/jq) - json processor
- [fzf](https://github.com/junegunn/fzf) - fuzzy search
- [rg](https://github.com/BurntSushi/ripgrep) - rip grep
- [gum](https://github.com/charmbracelet/gum) - terminal inputs
- [asciinema](https://github.com/asciinema/asciinema) - record terminal session

<a name="questions"></a>
## Svar på spørsmål.

- Debugging i neovim?

Plugin [nvim-dap](https://github.com/mfussenegger/nvim-dap)
Debugger Adapter Protocol implementasjon i Neovim.

- Hvilke kommando blir kjørt i lazygit når en ny PR blir åpne i nettleseren.

I lazygit TUI hvor man ser "local branches" kan man trykke navigere til en branch og trykke o.
Da vil default nettleser åpne en ny tab med en PR fra din branch inn i main.
Den bruker "remote" urlen som er blitt satt opp for repoet og kjører kommandoen:
```
bash -c "open https://github.com/asleboon/bouvet-one-2025/compare/devn?expand=1"
```
I lazygit blir alle kommandoene vist i vinduet "command log"
