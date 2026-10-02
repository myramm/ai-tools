# 🤖 AI-TOOLS: Master Collection of Skills, Plugins, MCP & AI Rules

[![Status](https://img.shields.io/badge/Status-Production%20Ready-brightgreen.svg)](#)
[![Agents](https://img.shields.io/badge/Supported%20Agents-Antigravity%20%7C%20Claude%20Code%20%7C%20OpenCode%20%7C%20Cursor%20%7C%20Aider-blue.svg)](#)
[![MCP](https://img.shields.io/badge/MCP-Playwright%20Automation%20%2825%20Tools%29-orange.svg)](#)

Koleksi lengkap dan terintegrasi dari seluruh **AI Skills**, **Plugins**, **MCP (Model Context Protocol) Tools**, **Design Systems**, dan **Rules** untuk memaksimalkan performa AI Coding Assistant (**Google Antigravity CLI**, **Anthropic Claude Code**, **OpenCode AI**, **Cursor**, **Windsurf**, dan **Aider**).

---

## ⚡ 1-Click Quick Install (Linux / VPS / Mac / WSL)

Jalankan perintah ini di terminal untuk langsung memasang seluruh Skills, Plugins, MCP, dan Rules ke sistem Anda:

```bash
curl -fsSL https://raw.githubusercontent.com/myramm/ai-tools/main/install.sh | bash
```

Atau clone repositori dan jalankan secara manual:

```bash
git clone https://github.com/myramm/ai-tools.git ~/.ai-tools
bash ~/.ai-tools/install.sh
```

---

## 📂 Struktur Repositori

```
ai-tools/
├── install.sh                  # Script instalasi 1-klik otomatis
├── skills/                     # Koleksi Skill AI (Antigravity, Claude, Cursor, OpenCode)
│   ├── design-and-frontend/    # 12 Skill Desain Web & Mobile Premium Anti-Slop
│   ├── anti-slop/              # 6 Skill Filter Kebersihan Kode & Kontras Human
│   ├── dev-and-tools/          # 8 Skill Diagnostik, Load Testing, Reverse Eng, Otomatisasi
│   └── antigravity-core/       # Skill Core & Panduan Kustomisasi Antigravity
├── plugins/                    # Plugin Resmi & Ekosistem
│   ├── anti-slop/              # Full Anti-Slop Plugin System (Rules, CLI, Scripts)
│   └── claude-official/        # 40+ Plugin Resmi Claude Code (LSP, Dev, Security, Frameworks)
├── mcp/                        # Model Context Protocol (MCP) Tools
│   ├── playwright/             # Playwright Browser Automation (25 Tools Lengkap)
│   └── configs/                # Template Konfigurasi MCP (Claude, AGY, Cursor)
├── rules/                      # System Rules & Anti-AI Slop Guidelines
└── configs/                    # Template Konfigurasi Agen AI (AGY, Claude, OpenCode, Aider)
```

---

## 🧠 1. Daftar Lengkap AI Skills

### 🎨 A. Design & Frontend Engineering (Anti-Slop UI)
1. **`design-taste-frontend` (v2 & v1)**: Engine perancang interface modern non-template berstandar tinggi.
2. **`gpt-taste`**: Spesialis animasi GSAP (ScrollTrigger, pinning, scrubbing, gapless bento grid).
3. **`high-end-visual-design`**: Desain visual premium agency (tipografi presisi, micro-spacing, subtle shadows).
4. **`image-to-code`**: Konversi visual desain mockup ke kode HTML/CSS/Tailwind yang 100% presisi.
5. **`imagegen-frontend-web`**: Generator referensi visual landing page per-section.
6. **`imagegen-frontend-mobile`**: Generator mockup UI aplikasi native iOS & Android.
7. **`minimalist-ui`**: Tema editorial modern monokrom dan clean flat bento grid.
8. **`industrial-brutalist-ui`**: Tema Swiss typographic print & terminal blueprint.
9. **`redesign-existing-projects`**: Audit dan refactor frontend website lama menjadi modern.
10. **`stitch-design-taste`**: Semantic design system generator (`DESIGN.md` untuk Google Stitch).
11. **`brandkit`**: Generator visual identity, sistem logo, dan brand guidelines deck.
12. **`full-output-enforcement`**: Memaksa AI menghasilkan kode penuh tanpa placeholder (`// TODO`).

### 🛡️ B. Anti-Slop AI Filter Skills
13. **`antislop`**: Core filter untuk memblokir kode generik dan AI-slop template.
14. **`antislop-code`**: Kebersihan komentar kode, modularitas arsitektur, dan zero-bloat.
15. **`antislop-ui`**: Standardisasi komponen visual dan penataan hierarki.
16. **`antislop-copywriting`**: Gaya penulisan copy/prose natural seperti manusia (anti-AI jargon).
17. **`antislop-human`**: Aksesibilitas WCAG, kontras warna optimal, dan navigasi keyboard.
18. **`antislop-layoutmobile`**: Penataan layout responsif multi-device (mobile hingga desktop 4K).

### 🛠️ C. Dev & Tools Engineering
19. **`api-load-tester`**: Load testing endpoint API dengan progressive concurrency & analisis bottleneck.
20. **`apktool`**: Reverse engineering, decompile, dan inspeksi resource file APK Android.
21. **`find-skills`**: Pencari dan penginstal skill AI otomatis dari komunitas.
22. **`automation`**: Otomatisasi script terminal dan continuous integration.
23. **`generative_ui`**: Pembuatan dynamic interactive UI artifact.
24. **`migrate-workflows`**: Migrasi environment & developer configurations.
25. **`permissioned-github`**: Integrasi permissioned GitHub management.
26. **`agy-customizations` & `antigravity_guide`**: Panduan master kustomisasi AGY 2.0.

---

## 🔌 2. Model Context Protocol (MCP) Tools

### 🌐 Playwright MCP (25 Browser Automation Tools)
Server otomatisasi browser berbasis Playwright untuk visual regression testing, web interaction, dan browser execution:
- **Navigasi:** `browser_navigate`, `browser_navigate_back`, `browser_snapshot`, `browser_find`, `browser_wait_for`, `browser_tabs`
- **Interaksi:** `browser_click`, `browser_type`, `browser_fill_form`, `browser_hover`, `browser_drag`, `browser_drop`, `browser_select_option`, `browser_press_key`, `browser_file_upload`
- **Visual:** `browser_take_screenshot`, `browser_resize`, `browser_emulate_media`
- **Eksekusi & Inspeksi:** `browser_evaluate`, `browser_run_code_unsafe`, `browser_console_messages`, `browser_network_requests`, `browser_network_request`, `browser_handle_dialog`, `browser_close`

---

## 📦 3. Claude Code & AI Agent Plugins

### A. Anti-Slop Plugin System (`antislop@anti-slop`)
Plugin pelindung kualitas kode yang menginjeksi filter anti-slop, rules, dan command hygiene ke seluruh interaksi agent.

### B. Claude Official Plugins (40+ Plugins)
- **LSP Language Servers:** `typescript-lsp`, `pyright-lsp`, `rust-analyzer-lsp`, `gopls-lsp`, `clangd-lsp`, `jdtls-lsp`, `kotlin-lsp`, `php-lsp`, `ruby-lsp`, `swift-lsp`, `csharp-lsp`, `lua-lsp`
- **Workflow & Quality:** `feature-dev`, `pr-review-toolkit`, `code-review`, `code-simplifier`, `code-modernization`, `commit-commands`, `ralph-loop`
- **MCP Development:** `mcp-server-dev`, `mcp-tunnels`
- **Agent Extensions:** `skill-creator`, `hookify`, `claude-security`, `claude-md-management`, `playground`, `receipts`, `project-artifact`, `math-olympiad`, `cwc-makers`
- **Integrations:** `discord`, `telegram`, `imessage`

---

## 🚀 4. Integrasi dengan Coding Agents

### 1. Google Antigravity CLI (`agy`)
Konfigurasi file `~/.gemini/antigravity-cli/settings.json`:
```json
{
  "model": "Gemini 3.7 Flash (High)",
  "toolPermission": "always-proceed",
  "trustedWorkspaces": ["/root", "/workspace"]
}
```

### 2. Claude Code CLI (`claude` / `cl`)
Konfigurasi file `~/.claude/settings.json`:
```json
{
  "permissions": { "defaultMode": "dontAsk" },
  "enabledPlugins": { "antislop@anti-slop": true },
  "theme": "dark-ansi"
}
```

---

## 📄 Lisensi
Repositori ini dirilis di bawah lisensi [MIT License](LICENSE).
Dikembangkan untuk komunitas AI Engineering & Developer Cloud.
