;   Conteúdo:
;   
;   - mandar cliques com o comando Click
;   - como conseguir a posição do mouse com o comando MouseGetPos
;   
;   - Loop usando While
;

$f12::ExitApp


; dá um clique duplo onde o cursor estiver

$1::            
    click
    sleep 50
    click
    return

; descobrir em qual posição X, Y alguma coisa está dentro da janela, usando o comando MouseGetPos

$2::
    MouseGetPos, mouse_x, mouse_y
    msgbox %mouse_x%, %mouse_y%
    return

; fazer com um programinha que clica nas coisas sozinho

; -- programa aqui --
; -- só na hora... --
; 

; Mostrar exemplos do comando While

$3::
    var := 1
    somador := 0
    while (var <= 50)
    {
        somador := somador + var1
        var++
    }
    msgbox a soma dos números de 1 a 50 é %somador%
    return

$4::
    var := 7
    texto := ""
    i := 1
    while (i <= 200)
    {
        texto := texto . var . ", "
        var := var + 7
        i++
    }
    msgbox %texto%
    return

; Fazer um clicador com botões separados pra ativar e desativar

$q::
    clicador := TRUE
    while (clicador)
    {
        click
        sleep 50
    }
    return

$w::clicador := FALSE


