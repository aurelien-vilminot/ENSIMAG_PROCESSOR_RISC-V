# TAG = sb
	.text
    lui x31, 0
    la x29, storage3

    lw x30, storage
    sb x30, 0(x29)  # Test sur une valeur plus grande qu'un octet
    lw x31, 0(x29)

    sb x0, 0(x29)   # RAZ de l'emplacement mémoire

    lw x30, storage2
    sb x30, 0(x29)  # Test sur une valeur plus petite qu'un octet
    lw x31, 0(x29)

storage:
    .word -1891285  # Valeur : FFE3242B en hexa signé en complément à deux

storage2:
    .word 0x0B

storage3:
    .word 0

	# max_cycle 100
	# pout_start
    # 00000000
    # 0000002B
    # 0000000B
	# pout_end
