#!/bin/bash
SOL3=196
LA3=207.65
SI3=246.94

DO4=261.63
RE4=293.66
MI4=329.63
FA4=349.23
SOL4=392
LA4=440

CORCHEA=200
NEGRA=$CORCHEA*2
BLANCA=$NEGRA*2
SEMICORCHEA=125

DELAY=100

sing_cucaracha(){
	beep   -f $SOL3 -l $CORCHEA					\
		-n -f $SOL3 -l $SEMICORCHEA				\
		-n -f $SOL3 -l $SEMICORCHEA				\
		-n -f $DO4 -l $NEGRA					\
		-n -f $MI4 -l $SEMICORCHEA				\
		-n -f $SOL3 -l $SEMICORCHEA				\
		-n -f $SOL3 -l $SEMICORCHEA				\
		-n -f $SOL3 -l $SEMICORCHEA				\
		-n -f $DO4 -l $NEGRA					\
		-n -f $MI4 -l $BLANCA					\
		-n -f $DO4 -l $SEMICORCHEA				\
	 	-n -f $DO4 -l $SEMICORCHEA				\
		-n -f $SI3 -l $SEMICORCHEA				\
		-n -f $SI3 -l $SEMICORCHEA				\
		-n -f $LA3 -l $SEMICORCHEA				\
		-n -f $LA3 -l $SEMICORCHEA				\
		-n -f $SOL3 -l $NEGRA					\
		-n -f $SOL3 -l $CORCHEA					\
		-n -f $SOL3 -l $SEMICORCHEA				\
		-n -f $SOL3 -l $SEMICORCHEA				\
		-n -f $SI3 -l $NEGRA					\
		-n -f $RE4 -l $SEMICORCHEA				\
		-n -f $SOL3 -l $SEMICORCHEA				\
		-n -f $SOL3 -l $SEMICORCHEA				\
		-n -f $SOL3 -l $SEMICORCHEA				\
		-n -f $SI3 -l $NEGRA					\
		-n -f $RE4 -l $BLANCA					\
		-n -f $SOL4 -l $SEMICORCHEA				\
		-n -f $LA4 -l $SEMICORCHEA				\
		-n -f $SOL4 -l $SEMICORCHEA				\
		-n -f $FA4 -l $SEMICORCHEA				\
		-n -f $MI4 -l $SEMICORCHEA				\
		-n -f $RE4 -l $SEMICORCHEA				\
		-n -f $DO4 -l $BLANCA
}

eject
sing_cucaracha
eject -t

MSG="Termino la cucaracha"
$CHAT_ID="-1001170695214"
$APITOKEN="777269881:AAGmeeNNrG7o-L6izcmDMqXKKhYWJ11hCok"

curl -s -X POST https://api.telegram.org/bot$APITOKEN/sendMessage -d text="$MSG" -d chat_id=$CHAT_ID >/dev/null
