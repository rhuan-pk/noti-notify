nn_notify() {
	CRMMSG=6
	CRAM=$(free -h | tr ' ' '-' | cut -d '-' -f 18 | sed '/^$/d' | cut -d ',' -f 1 | head -n 1)
	[ ${CRAM} -ge ${CRMMSG} ] && noti -t "Consumo de RAM!" -m "O consumo de memória RAM está acima de ${CRMMSG}G."
}
