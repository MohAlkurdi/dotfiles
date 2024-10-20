# Dotfiles

Neovim, Zed, VSCode and Wezterm config & keybindings

<img width="1440" alt="image" src="https://github.com/user-attachments/assets/e652f3ab-222d-4d81-aa63-10fd5dc18780">

---

## Installation

- Just copy pasta the things you need to your settings or keymaps files 😉

## Neovim Key Bindings

<details>
<summary>Click to expand</summary>

| Category                    | Key Bindings |
| --------------------------- | ------------ |
| **Buffer Management**       |              |
| Close All Buffers           | `<leader>ba` |
| Close Buffer                | `<leader>bc` |
| Delete Buffer               | `<leader>bd` |
| **Code Actions**            |              |
| Show Buffer Diagnostics     | `<leader>cD` |
| Available Code Action       | `<leader>ca` |
| Show Line Diagnostics       | `<leader>cd` |
| Close Other Tabs            | `<leader>co` |
| Smart Rename                | `<leader>cr` |
| Restart LSP                 | `<leader>cs` |
| Change Word Under Cursor    | `<leader>cw` |
| **Find**                    |              |
| Find Buffer                 | `<leader>fb` |
| Colorscheme                 | `<leader>fc` |
| Find File                   | `<leader>ff` |
| LazyGit                     | `<leader>fg` |
| Find Help                   | `<leader>fh` |
| New File                    | `<leader>fn` |
| Open Recent File            | `<leader>fr` |
| Live Grep                   | `<leader>fs` |
| Find Todo                   | `<leader>ft` |
| **Go To**                   |              |
| Go to Declaration           | `<leader>gD` |
| Show LSP References         | `<leader>gR` |
| Show LSP Definitions        | `<leader>gd` |
| Go to Implementation        | `<leader>gi` |
| Show Git Hunk               | `<leader>gp` |
| Show LSP Type Definitions   | `<leader>gt` |
| **Window Split**            |              |
| Resize Split                | `<leader>se` |
| Split Horizontally          | `<leader>sh` |
| Set Spell                   | `<leader>ss` |
| Split Vertically            | `<leader>sv` |
| Close Split                 | `<leader>sx` |
| **General Keymaps**         |              |
| Exit Insert Mode            | `jk`         |
| Fast Save                   | `<leader>w`  |
| Move Lines Up/Down (Visual) | `J/K`        |
| Switch to Next Buffer       | `<S-l>`      |
| Switch to Previous Buffer   | `<S-h>`      |
| Toggle File Explorer        | `<leader>e`  |

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
