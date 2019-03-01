##########################################################
#	[Unit]
#	Description = Plays a song at start and end of the system
#	After = network.target
#
#	[Service]
#	ExecStart = /root/scripts/conup.sh
#
#	[Install]
#	WantedBy = multi-user.target
#############################################################

SOL3=196
LA3=207.65
SI3=246.94

DO4=261.63
RE4=293.66
MI4=329.63
FA4=349.23
SOL4=392
LA4=440

CORCHEA=100
NEGRA=$CORCHEA*2
BLANCA=$NEGRA*2
SEMICORCHEA=125

DELAY=100

sing_stop(){
	beep   -f $SOL3 -l $CORCHEA					\
		-n -f $SOL3 -l $SEMICORCHEA 			\
		-n -f $SOL3 -l $SEMICORCHEA				\
		-n -f $DO4 -l $NEGRA					\
		-n -f $MI4 -l $SEMICORCHEA				\
		-n -f $SOL3 -l $SEMICORCHEA				\
		-n -f $SOL3 -l $SEMICORCHEA -D $DELAY	\
		-n -f $SOL3 -l $SEMICORCHEA				\
		-n -f $DO4 -l $NEGRA					\
		-n -f $MI4 -l $BLANCA					\
		-n -f $DO4 -l $SEMICORCHEA -D $DELAY	\
	 	-n -f $DO4 -l $SEMICORCHEA				\
		-n -f $SI3 -l $SEMICORCHEA				\
		-n -f $SI3 -l $SEMICORCHEA				\
		-n -f $LA3 -l $SEMICORCHEA				\
		-n -f $LA3 -l $SEMICORCHEA				\
		-n -f $SOL3 -l $NEGRA					\
		-n -f $SOL3 -l $CORCHEA -D $DELAY		\
		-n -f $SOL3 -l $SEMICORCHEA				\
		-n -f $SOL3 -l $SEMICORCHEA				\
		-n -f $SI3 -l $NEGRA					\
		-n -f $RE4 -l $SEMICORCHEA				\
		-n -f $SOL3 -l $SEMICORCHEA -D $DELAY	\
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

sing_start(){
	beep	-f130	-l100	\
		-n	-f262	-l100	\
		-n	-f330	-l100	\
		-n	-f392	-l100	\
		-n	-f523	-l100	\
		-n	-f660	-l100	\
		-n	-f784	-l300	\
		-n	-f660	-l300	\
		-n	-f146	-l100	\
		-n	-f262	-l100	\
		-n	-f311	-l100	\
		-n	-f415	-l100	\
		-n	-f523	-l100	\
		-n	-f622	-l100	\
		-n	-f831	-l300	\
		-n	-f622	-l300	\
		-n	-f155	-l100	\
		-n	-f294	-l100	\
		-n	-f349	-l100	\
		-n	-f466	-l100	\
		-n	-f588	-l100	\
		-n	-f699	-l100	\
		-n	-f933	-l300	\
		-n	-f933	-l100	\
		-n	-f933	-l100	\
		-n	-f933	-l100	\
		-n	-f1047	-l400
}

sing_cucaracha