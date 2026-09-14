# Dotfiles

Neovim, Zed, VSCode and Wezterm config & keybindings

<img width="1440" alt="image" src="https://github.com/user-attachments/assets/e652f3ab-222d-4d81-aa63-10fd5dc18780">

---

## Installation

- Just copy pasta the things you need to your settings or keymaps files 😉

## Neovim

Requires **Neovim 0.12+**. Plugins are managed by [lazy.nvim](https://github.com/folke/lazy.nvim), language servers & formatters by [Mason](https://github.com/mason-org/mason.nvim).

Languages: Go, C#, JavaScript / TypeScript / React, Astro, Lua, Tailwind, HTML / CSS, PHP / Laravel / Blade.

### Setup

```sh
brew install neovim go tree-sitter-cli ripgrep fd lazygit
ln -s "$PWD/nvim" ~/.config/nvim
nvim # plugins, parsers and language servers install on first start
```

### Key Bindings

<details>
<summary>Click to expand</summary>

`<leader>` is `Space`. Press `<leader>` and wait to see every binding in which-key, or search them with `<leader>fk`.

| Category                        | Key Bindings          |
| ------------------------------- | --------------------- |
| **General**                     |                       |
| Exit Insert Mode                | `jk`                  |
| Fast Save                       | `<leader>w`           |
| Move Lines Up/Down (Visual)     | `J/K`                 |
| Switch to Next/Previous Buffer  | `<S-l>` / `<S-h>`     |
| Move Between Windows            | `<C-h/j/k/l>`         |
| Toggle File Explorer            | `<leader>e`           |
| Format File or Range            | `<leader>p`           |
| Trigger Linting                 | `<leader>l`           |
| Flash Jump / Treesitter Select  | `s` / `S`             |
| Add Comment Below/Above         | `gco` / `gcO`         |
| Toggle Comment                  | `gcc` / `gc`          |
| Toggle Terminal                 | `<C-/>`               |
| Zen Mode / Zoom Window          | `<leader>z` / `<leader>Z` |
| Scratch Buffer                  | `<leader>.`           |
| Notification History            | `<leader>n`           |
| **Buffer Management**           |                       |
| Close All Buffers               | `<leader>ba`          |
| Close Buffer                    | `<leader>bc`          |
| Delete Buffer                   | `<leader>bd`          |
| Close Other Buffers             | `<leader>bo`          |
| **Code Actions**                |                       |
| Show Buffer Diagnostics         | `<leader>cD`          |
| Available Code Action           | `<leader>ca`          |
| Show Line Diagnostics           | `<leader>cd`          |
| LSP Info                        | `<leader>cl`          |
| Close Other Tabs                | `<leader>co`          |
| Smart Rename                    | `<leader>cr`          |
| Rename File (updates imports)   | `<leader>cR`          |
| Restart LSP                     | `<leader>cs`          |
| Change Word Under Cursor        | `<leader>cw`          |
| **Find**                        |                       |
| Smart Find Files                | `<leader><space>`     |
| Grep                            | `<leader>/`           |
| Find Buffer                     | `<leader>fb`          |
| Colorscheme                     | `<leader>fc`          |
| Find Config File                | `<leader>fC`          |
| Workspace Diagnostics           | `<leader>fd`          |
| Find File                       | `<leader>ff`          |
| LazyGit                         | `<leader>fg`          |
| Find Help                       | `<leader>fh`          |
| Keymaps                         | `<leader>fk`          |
| New File                        | `<leader>fn`          |
| Document / Workspace Symbols    | `<leader>fo` / `<leader>fO` |
| Open Recent File                | `<leader>fr`          |
| Resume Last Search              | `<leader>fR`          |
| Live Grep                       | `<leader>fs`          |
| Find Todo                       | `<leader>ft`          |
| Undo History                    | `<leader>fu`          |
| Grep Word / Selection           | `<leader>fw`          |
| **Go To**                       |                       |
| Go to Definition                | `gd` / `<leader>gd`   |
| Go to Declaration               | `gD` / `<leader>gD`   |
| Incoming / Outgoing Calls       | `<leader>gc` / `<leader>gC` |
| Go to Implementation            | `<leader>gi`          |
| Show Git Hunk                   | `<leader>gp`          |
| Show LSP References             | `<leader>gr`          |
| Show LSP Type Definitions       | `<leader>gt`          |
| Hover Documentation             | `K`                   |
| Next/Previous Diagnostic        | `]d` / `[d`           |
| Next/Previous Reference         | `]]` / `[[`           |
| Next/Previous Todo              | `]t` / `[t`           |
| Next/Previous Function          | `]f` / `[f`           |
| Next/Previous Argument          | `]a` / `[a`           |
| Pick Breadcrumb Symbol          | `<leader>;`           |
| **Text Objects**                |                       |
| Function / Class / Argument     | `af` `if` / `ac` `ic` / `aa` `ia` |
| Git Hunk                        | `ih`                  |
| **Git**                         |                       |
| Next/Previous Hunk              | `]h` / `[h`           |
| Stage / Unstage Hunk            | `<leader>hs`          |
| Reset Hunk                      | `<leader>hr`          |
| Stage / Reset Buffer            | `<leader>hS` / `<leader>hR` |
| Preview Hunk Inline             | `<leader>hp`          |
| Blame Line / Toggle Line Blame  | `<leader>hb` / `<leader>hB` |
| Diff View / Close Diff View     | `<leader>hd` / `<leader>hq` |
| File History / Repo History     | `<leader>hf` / `<leader>hF` |
| Git Log / Branches / Status     | `<leader>hl` / `<leader>hc` / `<leader>hg` |
| Open in Browser (GitHub)        | `<leader>ho`          |
| **Trouble**                     |                       |
| Diagnostics / Buffer Diagnostics | `<leader>xx` / `<leader>xX` |
| Symbols Outline                 | `<leader>xs`          |
| LSP Definitions / References    | `<leader>xl`          |
| Quickfix / Location List        | `<leader>xq` / `<leader>xL` |
| **Toggles**                     |                       |
| Format on Save (global / buffer) | `<leader>uf` / `<leader>uF` |
| Inlay Hints                     | `<leader>uh`          |
| Diagnostics                     | `<leader>ud`          |
| Wrap                            | `<leader>uw`          |
| Line / Relative Numbers         | `<leader>ul` / `<leader>uL` |
| Indent Guides                   | `<leader>ug`          |
| Treesitter Highlighting         | `<leader>uT`          |
| **Window Split**                |                       |
| Resize Split                    | `<leader>se`          |
| Split Horizontally              | `<leader>sh`          |
| Set Spell                       | `<leader>ss`          |
| Split Vertically                | `<leader>sv`          |
| Close Split                     | `<leader>sx`          |
| **Completion (Insert Mode)**     |                       |
| Next/Previous Suggestion        | `<C-j>` / `<C-k>` or `<Tab>` / `<S-Tab>` |
| Accept                          | `<CR>`                |
| Open / Close Menu               | `<C-Space>` / `<C-e>` |
| Scroll Docs                     | `<C-b>` / `<C-f>`     |
| Signature Help                  | `<C-s>`               |

</details>

---

## Zed Key Bindings

<details>
<summary>Click to expand</summary>

| Category                          | Key Bindings |
| --------------------------------- | ------------ |
| **General Key Bindings**          |              |
| Exit Insert Mode                  | `jk`         |
| New Search                        | `space f s`  |
| Toggle Hunk Diff                  | `space g p`  |
| Toggle Inlay Hints                | `space t i`  |
| Toggle Zen Mode                   | `space z`    |
| Open Markdown Preview             | `space m p`  |
| Open Markdown Preview to the Side | `space m P`  |
| Search Word Under Cursor          | `space s w`  |
| **LSP Actions**                   |              |
| Toggle Code Actions               | `space c a`  |
| Rename                            | `space c r`  |
| Go to Definition                  | `g d`        |
| Go to Definition (Split)          | `g D`        |
| Go to Implementation              | `g i`        |
| Go to Implementation (Split)      | `g I`        |
| Go to Type Definition             | `g t`        |
| Go to Type Definition (Split)     | `g T`        |
| Find All References               | `g r`        |
| Go to Next Diagnostic             | `] d`        |
| Go to Previous Diagnostic         | `[ d`        |
| Symbol Search                     | `space s s`  |
| Project Symbols Search            | `space s S`  |
| **Git**                           |              |
| Go to Next Hunk                   | `] h`        |
| Go to Previous Hunk               | `[ h`        |
| **Buffers and Workspace**         |              |
| Switch to Previous Buffer         | `shift-h`    |
| Switch to Next Buffer             | `shift-l`    |
| Close Active Item                 | `space b d`  |
| Close Inactive Items              | `space c o`  |
| Save File                         | `space w`    |
| Toggle File Finder                | `space f f`  |
| Toggle Left Dock                  | `space e`    |
| **File Panel**                    |              |
| New File                          | `a`          |
| Rename File                       | `r`          |
| Delete File                       | `d`          |
| Cut File                          | `x`          |
| Copy File                         | `c`          |
| Paste File                        | `p`          |

</details>

---

## VSCode Vim Key Bindings

<details>
<summary>Click to expand</summary>

### Normal Mode Key Bindings

| Description              | Key Bindings                                   |
| ------------------------ | ---------------------------------------------- |
| Peek Definition          | `gpd`                                          |
| Go to Implementations    | `gi`                                           |
| Peek Implementations     | `gpi`                                          |
| Go to References         | `gr`                                           |
| Go to Type Definition    | `gt`                                           |
| Peek Type Definition     | `gpt`                                          |
| Open file tree           | `<leader>e`                                    |
| Move to the previous tab | `<S-h>`                                        |
| Move to the next tab     | `<S-l>`                                        |
| Vertical split           | `leader s v`                                   |
| Horizontal split         | `leader s h`                                   |
| Change focus             | `leader h`, `leader j`, `leader k`, `leader l` |
| Save                     | `leader w`                                     |
| Close tab                | `leader b d`                                   |
| Close other tabs         | `leader c o`                                   |
| Quick fix                | `<leader>c a`                                  |
| Search project files     | `leader f f`                                   |
| Format file              | `leader p`                                     |
| Hover                    | `<S-k>`                                        |

### Visual Mode Key Bindings

| Description                      | Key Bindings |
| -------------------------------- | ------------ |
| Move selected lines              | `J`          |
| Move selected lines              | `K`          |
| Select match tags in visual mode | `S-5`        |

### Vim Insert Mode Key Bindings

| Description           | Key Bindings |
| --------------------- | ------------ |
| Return to normal mode | `jk`         |

### Other Key Bindings

| Description                  | Key Bindings   |
| ---------------------------- | -------------- |
| Toggle Sidebar Visibility    | `space e`      |
| New File                     | `a`            |
| Rename File                  | `r`            |
| Delete File                  | `d`            |
| Cut                          | `x`            |
| Copy                         | `y`            |
| Paste                        | `p`            |
| Collapse Explorer Folders    | `shift+w`      |
| Move to parent folder        | `shift+p`      |
| Toggle Terminal              | `ctrl+shift+j` |
| New Terminal                 | `ctrl+shift+n` |
| Focus Next Terminal          | `ctrl+shift+a` |
| Focus Previous Terminal      | `ctrl+shift+b` |
| Down Motion                  | `ctrl+j`       |
| Up Motion                    | `ctrl+k`       |
| Show Context Menu (Editor)   | `ctrl+o`       |
| Toggle Zen Mode              | `ctrl+z`       |
| Toggle Panel (Negative)      | `ctrl+j`       |
| New Untitled File (Negative) | `ctrl+n`       |

</details>
