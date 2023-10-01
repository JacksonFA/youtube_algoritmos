programa {
  inclua biblioteca Matematica

  inteiro vetor[] = { 1, 3, 5, 7, 9, 11, 13, 15, 17, 19 }
  inteiro tamanho = 10
  inteiro chave

  funcao inicio() {
    escreva("Dado o vetor: ", vetor, "\n")
    escreva("Digite um valor a ser buscado no vetor: ")
    leia(chave)
    escreva("\n")
    inteiro resultado = buscaBinaria()
    se (resultado != -1) {
        escreva("A chave ", chave, " foi encontrada na posição ", resultado)
    } senao {
        escreva("A chave ", chave, " não foi encontrada no vetor")
    }
  }

  funcao buscaBinaria() {
    inteiro esquerda = 0
    inteiro direita = tamanho - 1
    escreva("esquerda: ", esquerda, "\n")
    escreva("direita: ", direita, "\n")
    enquanto (esquerda <= direita) {
      inteiro meio = Matematica.arredondar((esquerda + direita) / 2, 0)
      escreva("meio: ", meio, "\n")
      se (vetor[meio] == chave) {
          retorne meio
      } senao se (vetor[meio] < chave) {
          esquerda = meio + 1
      } senao {
          direita = meio - 1
      }
      escreva("esquerda: ", esquerda, "\n")
      escreva("direita: ", direita, "\n")
    }
    retorne -1
  }
}
