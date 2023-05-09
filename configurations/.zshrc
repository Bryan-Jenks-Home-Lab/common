# EMOJI LOG

GREEN='\033[0;32m'
NORMAL='\033[0;39m'
gcap() { git commit -m "$*" && git push } # This is a helper function that is NEVER called
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

# GIT ALIASES

alias ga="git add $@"
alias gA="git add -A ."
alias gb="git branch"
alias gB="git branch $@"
alias gc="echo 'Use the commit functions for emoji log'"
alias gC="echo 'Use the commit functions for emoji log'"
# alias gC="git commit -m $@"
alias gf="git fetch --prune"
alias gm="git merge $@"
alias gM="git mv $@"
alias gp="git push"
alias gpo="git branch --show-current | xargs git push --set-upstream origin"
alias gP="git pull"
alias gs="git status"
alias gS="git switch $@"
alias gsu="git submodule update --remote"
alias gm="git merge $@"
# alias gwa="git worktree add $@"
alias pup="git pull main:main && git merge main"
alias plog="git log --graph --format='%Cgreen%h %Cred%aN%Cblue%d%Creset %s %C(yellow)(%cr)%Creset'"
