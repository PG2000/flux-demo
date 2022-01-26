{ pkgs ? import (fetchTarball "https://github.com/nixos/nixpkgs/archive/a7ecde854aee5c4c7cd6177f54a99d2c1ff28a31.tar.gz") {} }:

pkgs.mkShell {

  buildInputs = [
    pkgs.age
    pkgs.ansible
    pkgs.awscli2
    pkgs.cloudfoundry-cli
    pkgs.coreutils-full
    pkgs.cue
    pkgs.curl
    pkgs.docker
    pkgs.findutils
    pkgs.fluxcd
    pkgs.fly
    pkgs.fzf
    pkgs.git
    pkgs.git-remote-codecommit
    pkgs.gomplate
    pkgs.gopass
    pkgs.jq
    pkgs.kubectl
    pkgs.kubernetes-helm
    pkgs.krew
    pkgs.minikube
    pkgs.k9s
    pkgs.htop
    pkgs.ripgrep
    pkgs.sops
    pkgs.ssm-session-manager-plugin
    pkgs.stern
    pkgs.tektoncd-cli
    pkgs.terraform
    pkgs.tree
    pkgs.tmux
    pkgs.velero
    pkgs.watch
    pkgs.wget
    pkgs.which
    pkgs.yq
    pkgs.zlib
  ];

  shellHook = ''
    alias c='clear'
    alias vim='nvim'
    source ~/.aliases
    source ~/.functions
    export PATH="$PATH:$HOME/.krew/bin"
  '';

  AWS_PROFILE = builtins.getEnv "AWS_PROFILE"; 

}

