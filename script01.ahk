;
;   Variáveis
;   Os dois jeitos de guardar conteúdo em variável
;   Os dois jeitos de escrever os comandos
;   Continhas usando as variáveis
;

; Guardar texto

pessoa = Sam
linguagem = AutoHotKey
script_n = 1

msgbox %pessoa% começou a aprender %linguagem%, e esse é o %script_n%º script

; Guardar texto do jeito novo

pessoa := "SamSearil"
linguagem := "AHK"
script_n := 1

msgbox, % pessoa " está escrevendo em " linguagem ", e esse continua sendo o " script_n "º script"

; Continhas

var1 := 10
var2 := 25
var3 := var1 + var2

msgbox, % var3
msgbox, % var3 * 5

msgbox, % "var1 * 10 = " var1 * 10 
msgbox, % "10 / 5 = " 10 / 5
msgbox, % "2 ^ 6 = " 2 ** 6

; ahk documentation
; https://www.autohotkey.com/docs/AutoHotkey.htm

