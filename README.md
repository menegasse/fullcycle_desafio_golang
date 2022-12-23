# DESAFIO COM GOLANG

> Esse desafio é muito empolgante principalmente se >você nunca trabalhou com a linguagem Go!
> Você terá que publicar uma imagem no docker hub. Quando executarmos:
>
> docker run <seu-user>/fullcycle
>
> Temos que ter o seguinte resultado: Full Cycle Rocks!!
>
> Se você perceber, essa imagem apenas realiza um print da mensagem como resultado final, logo, vale a pena dar uma
> conferida no próprio site da Go Lang para aprender como fazer um "olá mundo".
>
> Lembrando que a Go Lang possui imagens oficiais prontas, vale a pena consultar o Docker Hub.
>
> 3. A imagem de nosso projeto Go precisa ter menos de 2MB =)
>
> Dica: No vídeo de introdução sobre o Docker quando falamos sobre o sistema de arquivos em camadas, apresento uma
> imagem "raiz", talvez seja uma boa utilizá-la.
>
> Divirta-se

<br/>

# Criando a Imagem

### A partir do Dockerfile:

```bash
docker build -t menegasse/fulcycle .
```

### Baixando do [DockerHub](https://hub.docker.com/repository/docker/menegasse/fullcycle):

```bash
docker pull menegasse/fulcycle
```

# Criando o Container

O seguinte comando serve para criar o container:

```bash
docker run menegasse/fulcycle
```

Após rodar o comando de criação do container deve aparecer a seguinte mensagem no terminal:

```bash
Full Cycle Rocks!!
```
