// Copyright (c) 2015 Calinou
// This source code form is available under CC0 1.0 Universal.

package main

import "math"

func main() {
	var nb uint32
	var nb_test uint32
	var square_root float64
	var not_prime bool
	var prime_counter uint16

	nb = 1
	nb_test = 2
	not_prime = true

	// If the number is even, add 1 to make it odd
	if nb % 2 == 0 {
		nb++
	}

	for nb = nb; true; nb += 2 {
		square_root = math.Sqrt(float64(nb))
		not_prime = true
		for nb_test = 2; float64(nb_test) < square_root; nb_test++ {
			if nb % nb_test == 0 {
				not_prime = false
				prime_counter++
				break
			}
		}
		if not_prime && prime_counter >= 10000 {
			println(nb)
			prime_counter = 0
		}
	}
}
