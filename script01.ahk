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

; Guardar valores com := (expressões)

pessoa := "SamSearil"   ; precisa das " aspas para o AHK não pensar 
linguagem := "AHK"      ;   que é uma variável, mas sim texto.

numero1 := 2
numero2 := 2 + 3 * 2              ; = 8 pois segue a regra da matemática. multiplica primeiro, soma depois.
resultado := numero2 / numero1    ; 8 / 2 = 4

msgbox %pessoa% está escrevendo em %linguagem%, e ele fez uma conta que deu %resultado%

; Expressões

var1 := 10
var2 := 25
var3 := var1 + var2

msgbox %var3%           

msgbox % var3 * 5                 ; dá pra calcular expressões colocando um % depois do msgbox

msgbox % "var1 * 10 = " var1 * 10 
msgbox % "10 / 5 = " 10 / 5
msgbox % "2 ^ 6 = " 2 ** 6

; documentação do AHK
; https://www.autohotkey.com/docs/AutoHotkey.htm

