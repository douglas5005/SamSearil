;   Conteúdo:
;
;   - Variáveis
;   - Comando msgbox
;   - Os dois jeitos de guardar conteúdo em variável
;   - Continhas usando as variáveis
;

; Guardar valores dentro de uma palavra com " = " (só para coisas bem simples) 
;   (o nome disso é "variável")

pessoa = Sam
linguagem = AutoHotKey
script_n = 1

; Usando o comando msgbox para mostrar texto na tela. 
; Para falar para o AHK que tem alguma coisa dentro de uma palavra

msgbox %pessoa% começou a aprender %linguagem%, e esse é o %script_n%º script

; Guardar valores com := (para expressões)

pessoa := "SamSearil"   ; precisa das aspas " para o AHK não pensar
linguagem := "AHK"      ;   que é uma variável, mas sim texto.

numero1 := 2
numero2 := 2 + 3 / 5    ; o sinal de := faz o AHK interpretar a conta que está na frente do :=
                        ; e colocar o resultado dentro da variável número2
                        ; se fosse o sinal de = , colocaria "2 + 3 * 2" como se fosse texto.

resultado := numero2 / numero1  ; 8 / 2 = 4

msgbox %pessoa% está escrevendo em %linguagem%, e ele fez uma conta que deu %resultado%

; Expressões

var1 := 10
var2 := 25
var3 := var1 * 5 / var2    ; dá pra usar variáveis nas expressões

msgbox %var3%               

msgbox % var3 * 5          ; dá pra mandar um comando calcular expressões colocando um "% " antes do termo
msgbox % var1 * 10 

msgbox % "O resultado de 10 * 5 " 10 / 5 ; dá pra misturar texto e expressões, desde que separado certinho pelas aspas "
msgbox % "2 ^ 6 = " 2 ** 6

; documentação do AHK
; https://www.autohotkey.com/docs/AutoHotkey.htm

