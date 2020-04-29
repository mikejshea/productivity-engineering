time ls ./ubuntu-vb/*.json | xargs -P 3 -I % sh -c \
  'PACKER_KEY_INTERVAL=10ms /c/packer/packer build --force --var-file % ubuntu1804-vbox-desktop.json'
