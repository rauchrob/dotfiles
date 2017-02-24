# use gpg-agent ssh auth sock, if available
GPG_AGENT_SOCK=~/.gnupg/S.gpg-agent.ssh

if [ -r $GPG_AGENT_SOCK ]; then
  export SSH_AUTH_SOCK=$GPG_AGENT_SOCK
fi
