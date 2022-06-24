;   Conteúdo:
;
;   > Hotkeys e alguns Comandos
;       - run
;       - sleep
;       - send
;       - soundbeep
;       >> inputbox <<
;   
;   > Problemas com hotkeys
;       - falta do $ em hotkeys que usam SEND
;       - hotkeys "combo" travando teclas quando sem o ~
;
;   > Importância de uma Hotkey de Emergência pra parar tudo, com o comando ExitApp
;

a::                 ; não ensinar a colocar o $ ainda e deixar dar erro no próximo comando SEND
msgbox, você apertou a tecla A!
return

; exemplo dos comandos Run, Sleep e Send 

$1::
run, notepad
sleep, 1000
send, testando      ; vai ativar a tecla A de cima quando chegar no A do testAndo
return


; exemplo dos comandos SoundBeep e InputBox

$2::
SoundBeep, 700, 500
sleep, 250
SoundBeep, 1100, 500
InputBox, var, título, Digite algo
msgbox, você digitou %var%
return


$f12::
ExitApp




; larguei. fica pro futuro~~ rss

; 1 & 2::
; msgbox, você apertou a tecla 2 enquanto segurava a tecla 1
; return

; RButton & 1::    ; ensinar sobre colocar ~ no começo quando quiser que o AHK não bloqueie a função normal da 1ª tecla do combo
; msgbox, também funciona com o mouse!
; return

