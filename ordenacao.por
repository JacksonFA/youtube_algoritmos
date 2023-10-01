programa {
  inteiro vetor[] = { 12, 4, 5, 6, 7, 3, 1, 15, 2 }
  inteiro tamanho = 9

  funcao inicio() {
    escreva("Vetor original: ", vetor, "\n")
    ordenar(0, tamanho - 1)
    escreva("Vetor ordenado: ", vetor, "\n")
  }

  funcao ordenar(inteiro comeco, inteiro final) {
    se (comeco < final) {
      inteiro pivo = particionar(comeco, final)
      escreva("recursão 1 \n")
      ordenar(comeco, pivo - 1)
      escreva("recursão 1 realizada \n")
      escreva("recursão 2 \n")
      ordenar(pivo + 1, final)
      escreva("recursão 2 realizada \n")
    }
  }

  funcao particionar(inteiro comeco, inteiro final) {
    inteiro pivo = vetor[final]
    inteiro indiceMenor = comeco - 1
    para (inteiro i = comeco; i < final; i++) {
      se (vetor[i] <= pivo) {
        indiceMenor += 1
        trocar(indiceMenor, i)
      }
    }
    trocar(indiceMenor + 1, final)
    escreva("Vetor atualizado: ", vetor, "\n")
    retorne indiceMenor + 1
  }

  funcao trocar(inteiro menor, inteiro maior) {
    inteiro temp = vetor[menor]
    vetor[menor] = vetor[maior]
    vetor[maior] = temp
  }
}