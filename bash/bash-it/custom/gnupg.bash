# load gpg agent info, if available
if [ -r ~/.gnupg/S.gpg-agent.ssh ]; then
  SSH_AUTH_SOCK=/home/rauch/.gnupg/S.gpg-agent.ssh; export SSH_AUTH_SOCK;
fi
