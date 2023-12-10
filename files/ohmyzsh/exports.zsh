#  ---------------------------------------------------------------------------
#  Description: This file holds all my ZSH exports.
#  Note:        Intended to be used in concert with Oh My Zsh
#  ---------------------------------------------------------------------------
#  Sections:
#  1.  Prompt
#  2.  Language & Encoding
#  3.  Editor
#  4.  GPG
#  5.  Python
#  6.  Homebrew
#  7.  Paths
#  ---------------------------------------------------------------------------

#  --------------------------------------------------
#   1.  Prompt
#  --------------------------------------------------

    export NEWLINE=$'\n'
    export PS1='${NEWLINE}%F{8}${(l.$(afmagic_dashes)..-.)}%F{10}%D{%H:%M:%S%p} %F{7}%3~$(git_prompt_info)$(hg_prompt_info)${NEWLINE}%F{8}${(l.$(afmagic_dashes)..-.)}%F{8}» %{${reset_color}%}'
    export PS2="%F{9}%{%}\ %{%}"
    export RPS1='%F{9}%(?..%{%}%? ↵%{%})$(virtualenv_prompt_info) %F{8}%{%}%n@%m%{%}'

#  --------------------------------------------------
#   3.  Language & Encoding
#  --------------------------------------------------

    # Prefer US English and use UTF-8
    export LANG='en_US.UTF-8';
    export LC_ALL='en_US.UTF-8';

#  --------------------------------------------------
#   4. Editor
#  --------------------------------------------------

    # Preferred editor for local and remote sessions
    if [[ -n $SSH_CONNECTION ]]; then
        export EDITOR='nano'
    else
        export EDITOR='subl'
    fi

#  --------------------------------------------------
#   5.  GPG
#  --------------------------------------------------

    # GPG Agent and Authentication configuration for
    # Yubikey SSH setup
    GPG_TTY=$(tty)
    SSH_AUTH_SOCK="$HOME/.gnupg/S.gpg-agent.ssh"
    export GPG_TTY SSH_AUTH_SOCK
    gpgconf --launch gpg-agent
    gpg-connect-agent updatestartuptty /bye

#  --------------------------------------------------
#   6.  Python
#  --------------------------------------------------

    # Make Python use UTF-8 encoding for output
    # to stdin, stdout, and stderr.
    export PYTHONIOENCODING='UTF-8';
 
#  --------------------------------------------------
#   7. Homebrew
#  --------------------------------------------------

    # Add Homebrew Github API
    export HOMEBREW_GITHUB_API_TOKEN=""
    # Tell homebrew to not autoupdate every single time I run it (just once a week).
    export HOMEBREW_AUTO_UPDATE_SECS=604800

#  --------------------------------------------------
#   8. Paths
#  --------------------------------------------------
    # Custom $PATH with extra locations.
    export PATH="$HOME/Library/Python/3.9/bin:/opt/homebrew/bin:/usr/local/bin:/usr/local/sbin:$HOME/bin:$HOME/go/bin:/Applications/Sublime Text.app/Contents/SharedSupport/bin:$PATH"
