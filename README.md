# Configuração do ambiente

## Instalação

1. Instalar o yadm

```
sudo apt install yadm
```

1. (Opcional) Gerar uma chave e adicionar ao github

```
ssh-keygen -t rsa -b 4096 -C "your_email@example.com"
eval $(ssh-agent -s)
ssh-add ~/.ssh/id_rsa
# xclip -sel clip < ~/.ssh/id_rsa.pub
```

1. Fazer o primeiro clone do projeto

```
yadm clone git@github.com:suderio/dotfiles.git
```

1. Caso o bootstrap não tenha sido executado pelo yadm, executar

```
yadm bootstrap
```

