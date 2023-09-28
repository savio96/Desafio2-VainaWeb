//Verifique se os "n�meros" s�o Primos; e se os n�meros do "multiplicador" s�o divis�veis por 3.

programa {

  inclua biblioteca Util --> u

  funcao inicio() {
    inteiro numeros[10] = {2, 3, 6, 7, 11, 12, 17, 19, 23, 29}
    inteiro multiplicador[10] = {3, 6, 10, 12, 15, 18, 21, 26, 27, 31}

    para(inteiro i = 0; i < 10; i++){
        se(ehPrimo(numeros[i])){

          escreva("� um n�mero primo.\n")
          
        }senao{
          escreva("N�o � um n�mero primo.\n")
        }
      
    }

    
    // limpa()

    para(inteiro f = 0; f < 10; f++){
        se(multiplicador[f] % 3 == 0){
          escreva("� divisivel por 3!\n")
        }senao{
          escreva("Ops, n�o � divis�vel por 3.\n")
        }
    }
  }

  funcao ehPrimo(inteiro num){
    inteiro quantDivisores = 0

    para(inteiro i = 1; i <= num; i++){
      se(ehDivisaoExata(num, i)){
             quantDivisores++
         }
    }
    se (quantDivisores == 2) {
         retorne verdadeiro
     } senao {
          retorne falso
     }
  }

  funcao ehDivisaoExata(inteiro dividendo, inteiro divisor) {
     retorne (dividendo % divisor) == 0
 }
}