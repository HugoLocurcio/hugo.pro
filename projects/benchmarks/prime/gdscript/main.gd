# Copyright (c) 2015 Calinou
# This source code form is available under CC0 1.0 Universal.

extends MainLoop

var nb = 1
var nb_test = 2
var square_root
var not_prime = true
var prime_counter = 0

func _init():
	# If the number is even, add 1 to make it odd
	if (nb % 2 == 0):
		nb += 1

	while (true):
		square_root = sqrt(nb)
		not_prime = true
		nb_test = 2

		while (nb_test < square_root and not_prime):
			if (nb % nb_test == 0):
				not_prime = false
				prime_counter += 1
				break
			nb_test += 1

		if (not_prime and prime_counter >= 10000):
			print(nb)
			prime_counter = 0

		nb += 2
