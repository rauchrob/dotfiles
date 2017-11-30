# Use gpg2 instead of gpg, if available

GPG2=$(which gpg2)
if [ -n "$GPG2" -a -x "$GPG2" ]; then
  alias gpg=gpg2
fi

# use gpg-agent ssh auth sock, if available
GPG_AGENT_SOCK=~/.gnupg/S.gpg-agent.ssh

if [ -r $GPG_AGENT_SOCK ]; then
  export SSH_AUTH_SOCK=$GPG_AGENT_SOCK
fi
