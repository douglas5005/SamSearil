;   Conteúdo:
;
;   > Hotkeys e alguns Comandos
;       - run
;       - sleep
;       - send
;       - soundbeep
;       - inputbox
;   
;   > Problemas com hotkeys
;       - falta do $ em hotkeys que usam SEND
;       - hotkeys "combo" travando teclas quando sem o ~
;
;   > Importância de uma Hotkey de Encerramento
;

a::             ; não ensinar a colocar o $ ainda e deixar dar erro no próximo SEND
msgbox, você apertou a tecla A!
return

$!a::
run, notepad
sleep, 1000
send, testando  ; vai ativar o exemplo anterior quando chegar no A do testAndo
return

$^a::
SoundBeep, 700, 500
sleep, 250
SoundBeep, 1100, 500
InputBox, var, título, Digite algo
msgbox, você digitou %var%
return

~1 & 2::
msgbox, você apertou a tecla 2 enquanto segurava a tecla 1
return

RButton & 1::    ; ensinar sobre colocar ~ quando quiser que o AHK não bloqueie a função normal
msgbox, também funciona com o mouse!
return

f12::ExitApp