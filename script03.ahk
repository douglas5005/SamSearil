;   Conteúdo:
;  
;   mais expressões com variáveis
;       var := var + 1
;       var++
;
;   - Condições IF / Else
;       ■ caixa de login + senha
;   - indentação, pra legibilidade
;

$f12::ExitApp        ; Tecla de Emergência


; Algumas continhas pra mostrar que uma variável pode receber ela mesma

$1::
    var1 := 5
    var2 := 10
    var3 := var1 + var2     ; uma variável pode receber outras variáveis
    msgbox %var3%

    var3 := var3            ; e uma variável pode receber ela mesma!!! (...uau?)
    msgbox %var3%

    var1 := 30
    var1 := var1 + 20       ; o lance é que ela pode receber _uma expressão_ que involve a si própria (ah, agora sim show~)
    msgbox %var1%

    numero := 123
    numero++                     ; numero++  é a mesma coisa que digitar:
    msgbox %numero%              ; numero := numero + 1
    


    return


; exemplo de uma tecla que fala quantas vezes você apertou ela

teclaDois := 0      ; a gente declara o valor inicial da variável antes da hotkey!
$2::
    teclaDois++
    msgbox você apertou essa tecla %teclaDois% vezes desde que o script começou
    return


; exemplo

; Exemplo de IF

$4::
    InputBox, valor1 , teste, Digite um número  ; IF verifica se o que está na frente é verdade, e se for, executa o código que está
    if (valor1 = 5)                             ;   envolvido entre as chaves { e }
    {
       msgbox, o número que você digitou foi 5!
    }
    msgbox essa mensagem é mostrada sempre, não importa o que você digitou
    return


; Exemplo de IF / Else

$5::
    inputbox, valor2, teste Digite alguma coisa
    if (valor2 = "Sam")
    {
        msgbox Heya! =)
    }
    else
    {
        msgbox você digitou %valor2%
    }
    return


;
;   Exemplo de uma hotkey que só faz algo (tipo abrir a calculadora) se você acertar a senha,
;       e que fecha sozinho se você errar a senha 3 vezes
;

$6::
    InputBox, valor , teste, Digite a senha     
    if (valor = "AutoHotKey")    
    {
        msgbox acertou! a senha é %valor%
        msgbox abrindo a calculadora do windows
        run, calc
    }               
    Else
    {
        tentativa++
        msgbox a senha não é %valor%
        msgbox você errou a senha %tentativa% vez(es)

        if (tentativa >= 3)
            {
                msgbox limite de tentativas alcançado
                msgbox fechando script
                Exitapp
            }
    }
    return


