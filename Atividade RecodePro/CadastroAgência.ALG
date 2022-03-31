Algoritmo "CadastroAgência"
// Descrição   : Simula um cadastro de clientes e destinos em memória
// Autor(a)    : Squad23 = Bruno, Felipe, Karol, Marco, Milena, Vanessa.
// Data atual  : 24/10/2021
Var
   // Seção de Declarações das variáveis

   x: caractere // Variável de controle de retorno.

   // Vetores para cadastrar cliente
   nome: vetor [1..5] de caractere
   telefone: vetor [1..5] de caractere

   //Vetor para cadastrar destino
   destino: vetor [1..5] de caractere

   //Variáveis de controle (contadores)
   cont, contCliente, contDestino, opcao: inteiro

Inicio
   // Seção de Comandos, procedimento, funções, operadores, etc...

   cont <- 1
   contCliente <- 1
   contDestino <- 1
   opcao <- 0

   repita // Repete o código até usuário apertar 5
      limpatela
      escreval("Seleciona uma Opção:")
      escreval("1- Cadastar Cliente")
      escreval("2- Cadastar Destino")
      escreval("3- Consultar Clientes")
      escreval("4- Consultar Destinos")
      escreval("5- Sair")
      leia(opcao)

      escolha opcao
      caso 1
         limpatela
         se contCliente < 6 entao
            escreval("Digite o nome do cliente: ")
            leia(nome[contCliente])
            escreval("Digite o telefone: ")
            leia(telefone[contCliente])
            contCliente <- contCliente + 1
         senao
            escreval("Não é possível cadastrar mais Clientes!")
            escreval("Pressione Enter para voltar ao menu")
            leia(x)
         fimse
      caso 2
         limpatela
         se ContDestino < 6 entao
            escreval("Digite o Destino: ")
            leia(destino[contDestino])
            contDestino <- contDestino + 1
         senao
            escreval("Não é possível cadastrar mais Destinos!")
            escreval("Pressione Enter para voltar ao menu")
            leia(x)
         fimse
      caso 3
         limpatela
         se contCliente = cont entao
            escreval("Não existe nenhum cliente cadastrado!")
            escreval("Pressione Enter para voltar ao menu")
            leia(x)
         senao
            escreval("Os clientes cadastrados são: ")
            para cont de 1 ate (contCliente-1) passo 1 faca
               escreval(nome[cont])
               escreval(telefone[cont])
            fimpara
            escreval("Pressione Enter para voltar ao menu")
            leia(x)
         fimse
      caso 4
         limpatela
         se contDestino = cont entao
            escreval("Não existe nenhum destino cadastrado!")
            escreval("Pressione Enter para voltar ao menu")
            leia(x)
         senao
            escreval("Os destinos cadastrados são: ")
            para cont de 1 ate (contDestino-1) passo 1 faca
               escreval(destino[cont])
            fimpara
            escreval("Pressione Enter para voltar ao menu")
            leia(x)
         fimse
      caso 5
         limpatela
         escreval("Obrigado por utilizar nosso sistema!")
      outrocaso
         escreval("Opção inválida!")
         escreval("Pressione Enter para voltar ao menu")
         leia(x)
      fimescolha
   ate opcao = 5

Fimalgoritmo