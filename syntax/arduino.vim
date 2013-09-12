" Vim syntax file
" Language:    Arduino
" Maintainer:  Sudar <sudar@sudarmuthu.com>
" Original Author:  Johannes Hoff <johannes@johanneshoff.com>
" Last Change: 19 February 2013
" License:     VIM license (:help license, replace vim by arduino.vim)

" Syntax highlighting like in the Arduino IDE
" Automatically generated by the script available at
"    https://bitbucket.org/johannes/arduino-vim-syntax
" Using keywords from <arduino>/lib/keywords.txt
" From version: 

" Thanks to original author Johannes Hoff and Rik, Erik Nomitch, Adam Obeng and Graeme Cross for helpful feedback!

" For version 5.x: Clear all syntax items
" For version 6.x: Quit when a syntax file was already loaded
if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

" Read the C syntax to start with
if version < 600
  so <sfile>:p:h/cpp.vim
else
  runtime! syntax/cpp.vim
endif

syn keyword arduinoConstant  BIN CHANGE DEC DEFAULT EXTERNAL FALLING HALF_PI HEX
syn keyword arduinoConstant  HIGH INPUT INPUT_PULLUP INTERNAL INTERNAL1V1
syn keyword arduinoConstant  INTERNAL2V56 LOW LSBFIRST MSBFIRST OCT OUTPUT PI
syn keyword arduinoConstant  RISING TWO_PI

syn keyword arduinoFunc      analogRead analogReference analogWrite
syn keyword arduinoFunc      attachInterrupt bit bitClear bitRead bitSet
syn keyword arduinoFunc      bitWrite delay delayMicroseconds detachInterrupt
syn keyword arduinoFunc      digitalRead digitalWrite highByte interrupts
syn keyword arduinoFunc      lowByte micros millis noInterrupts noTone pinMode
syn keyword arduinoFunc      pulseIn shiftIn shiftOut tone

syn keyword arduinoMethod    available begin end find findUntil flush loop
syn keyword arduinoMethod    parseFloat parseInt peek print println read
syn keyword arduinoMethod    readBytes readBytesUntil setTimeout setup

syn keyword arduinoModule    Serial Serial1 Serial2 Serial3

syn keyword arduinoStdFunc   abs acos asin atan atan2 ceil constrain cos degrees
syn keyword arduinoStdFunc   exp floor log map max min radians random randomSeed
syn keyword arduinoStdFunc   round sin sq sqrt tan

syn keyword arduinoType      boolean byte null String word

hi def link arduinoType Type
hi def link arduinoConstant Constant
hi def link arduinoStdFunc Function
hi def link arduinoFunc Function
hi def link arduinoMethod Function
hi def link arduinoModule Identifier