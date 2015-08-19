#!/usr/bin/python

# Copyright (c) 2015 Calinou
# This source code form is available under CC0 1.0 Universal.

import math

nb = 1
nb_test = 2
not_prime = True
prime_counter = 0

# If the number is even, add 1 to make it odd
if nb % 2 == 0:
	nb += 1

while True:
	square_root = math.sqrt(nb)
	not_prime = True
	nb_test = 2

	while nb_test < square_root:
		if nb % nb_test == 0:
			not_prime = False
			prime_counter += 1
			break
		nb_test += 1

	if not_prime and prime_counter >= 10000:
		print(nb)
		prime_counter = 0

	nb += 2
