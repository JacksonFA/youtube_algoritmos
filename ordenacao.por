função quickSort(vetor, esquerda, direita)
    se esquerda < direita então
        pivô <- particionar(vetor, esquerda, direita)
        quickSort(vetor, esquerda, pivô - 1)
        quickSort(vetor, pivô + 1, direita)

função particionar(vetor, esquerda, direita)
    pivô <- vetor[direita]
    índiceMenor <- esquerda - 1

    para i de esquerda até direita - 1 faça
        se vetor[i] <= pivô então
            índiceMenor <- índiceMenor + 1
            trocar(vetor, índiceMenor, i)

    trocar(vetor, índiceMenor + 1, direita)
    retornar índiceMenor + 1

função trocar(vetor, i, j)
    temp <- vetor[i]
    vetor[i] <- vetor[j]
    vetor[j] <- temp

vetor <- [12, 4, 5, 6, 7, 3, 1, 15, 2]
tamanho <- tamanho do vetor

escreva("Vetor original:", vetor)

quickSort(vetor, 0, tamanho - 1)

escreva("Vetor ordenado:", vetor)
