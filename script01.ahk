;   Conteúdo:
;
;   - Variáveis
;   - Comando msgbox
;   - Os dois jeitos de guardar conteúdo em variável
;   - Continhas usando as variáveis
;

; Guardar valores com = (coisas bem simples) 

pessoa = Sam
linguagem = AutoHotKey
script_n = 1

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

