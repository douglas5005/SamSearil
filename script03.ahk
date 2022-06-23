;
;   Condições IF,
;       indentação, pra não ficar monolítico
;   Mandar cliques
;   Loops
;

f12::ExitApp

$1::
    InputBox, valor , teste, Qual o valor?
    if (valor = 5)
    {
        valor++
        msgbox, o valor agora é %valor%
    }
    return


$2::
    InputBox, valor , teste, Digite a senha
    if (valor = "AutoHotKey")
        msgbox, acertou, a senha é %valor%
    Else
        msgbox, a senha não é %valor%
    return

$3::click

$4::
    run, notepad
    sleep 1000
    loop 30
        send, teste{enter}
    return

$5::
    run, notepad
    sleep 1000
    loop 30
        {
            send, teste
            sleep, 50
            send {enter}
        }
return


