;   Conteúdo:
;
;   - Condições IF / Else
;       ■ caixa de login + senha
;   - indentação, pra legibilidade
;

$f12::ExitApp        ; Tecla de Emergência

; Exemplo de IF

$1::
    InputBox, valor1 , teste, Digite um número  ; IF verifica se o que está na frente é verdade, e se for, executa o código que está
    if (valor1 = 5)                             ;   envolvido entre as chaves { e }
    {
       msgbox, o número que você digitou foi 5!
    }
    msgbox essa mensagem é mostrada sempre, não importa o que você digitou
    return


; Exemplo de IF / Else

$2::
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

$3::
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


