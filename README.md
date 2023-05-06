# common

> A repository to contain common code and configuration files and snippets for reference

## Emoji Log

To be placed in your `~/.bashrc` or `~/.zshrc`

```bash
GREEN='\033[0;32m'
NORMAL='\033[0;39m'
gcap() { git add . && git commit -m "$*" && git push } # This is a helper function that is NEVER called
gnew() { gcap "📦 NEW: $@" }
gipr() { gcap "👌 IMPROVE: $@" }
gfix() { gcap "🐛 FIX: $@" }
grlz() { gcap "🚀 RELEASE: $@" }
gdoc() { gcap "📖 DOC: $@" }
gtst() { gcap "🧪️ TEST: $@" }
gbrk() { gcap "❗️ BREAKING: $@" }

gtype() {
echo "$GREEN gnew$NORMAL -- 📦 NEW
$GREEN gipr$NORMAL -- 👌 IMPROVE
$GREEN gfix$NORMAL -- 🐛 FIX
$GREEN grlz$NORMAL -- 🚀 RELEASE
$GREEN gdoc$NORMAL -- 📖 DOC
$GREEN gtst$NORMAL -- 🧪️ TEST
$GREEN gbrk$NORMAL -- ❗️ BREAKING"
}

```
