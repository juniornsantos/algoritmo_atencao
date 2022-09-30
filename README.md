# Algoritimo de adivinhação em Lisp/Common Lisp
Esta é a versão 1.0.0 de um algoritimo que 'advinha' o número que o usuário está pensando em Lisp e em de código aberto.
Funciona semelhante aos "Algoritmos do Instagram, Tiktok ..." com apenas três entradas ou cliques o algoritmo sabe o que você está interessado e direciona conteudos para voce.
Então vamos chama-lo de "aknator de pobre". Caso tenha LISP instalada no seu desktop você pode executar no prompt do seu windows.

## Funcionamento
Crie uma variavel do tipo lista com 21 (vinte e um) itens, no momento esses itens devem ser numeros.
<br />Você pode definir os numeros que quiser, Exemplo abaixo:

```go
(setq alt (list 79 123 45 10 13 63 19 2 5 8 1 98 17 25 3 88 9 12 35 18 101))
```
Pegamos a lista criada acima e dividimos em tres colunas, ambas com sete(óbvio)🤯 e lembrando que obrigatoriamente tem que ser divisível por três.
<p>E em seguida perguntamos ao usuario em qual linha o número se encontra.

LINHA   | NUMEROS
--------- | ------
Linha A | 79 123 45 10 13 63 19
Linha B | 2 5 8 1 98 17 25
Linha C | 3 88 9 12 35 18 101
```sh
1° pergunta, qual linha o numero está: B
```
Repetimos o processo mais duas vezes.

LINHA   | NUMEROS
--------- | ------
Linha A | 79 10 19 8 17 88 35
Linha B | 123 13 2 1 25 9 18
Linha C | 45 63 5 98 3 12 101
```sh
2° pergunta, qual linha o numero está: C
```

LINHA   | NUMEROS
--------- | ------
Linha A | 79 8 35 5 12 13 25
Linha B | 10 17 45 98 101 2 9
Linha C | 19 88 63 3 123 1 18
```sh
3° pergunta, qual linha o numero está: B
```

### RESPOSTA DO ALGORITMO

```sh
O NUMERO QUE VOCE PENSOU FOI O 98
```

## Support
Você pode obter suporte da comunidade por meio de:

<a href = "https://api.whatsapp.com/send?phone=5588998686890"><img src="https://img.shields.io/badge/WhatsApp-25D366?style=for-the-badge&logo=whatsapp&logoColor=white" target="_blank"></a>
<a href = "https://t.me/JuniorNogueira"><img src="https://img.shields.io/badge/Telegram-2CA5E0?style=for-the-badge&logo=telegram&logoColor=white" target="_blank"></a>