#!/usr/bin/ruby

# Copyright (c) 2015 Calinou
# This source code form is available under CC0 1.0 Universal.

nb = 1
nb_test = 2
not_prime = true
prime_counter = 0

if nb % 2 == 0 # If the number is even, add 1 to make it odd
	nb += 1
end

while true
	square_root = nb ** 0.5
	not_prime = true
	nb_test = 2

	while nb_test < square_root
		if nb % nb_test == 0
			not_prime = false
			prime_counter += 1
			break
		end

		nb_test += 1
	end

	if not_prime and prime_counter >= 10000
		puts nb
		prime_counter = 0
	end

	nb += 2
end
