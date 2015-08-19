# Copyright (c) 2015 Calinou
# This source code form is available under CC0 1.0 Universal.

# FIXME: Make it work

nb = 1
nb_test = 2
not_prime = true
prime_counter = 0

# If the number is even, add 1 to make it odd
if nb % 2 == 0
  nb++

for nb in [0..Infinity]
  square_root = Math.sqrt(nb)
  not_prime = true

  for nb_test in [nb_test..square_root]
    if nb % nb_test == 0
      not_prime = false
      prime_counter++
      break

  if not_prime && prime_counter >= 10000
    console.log(nb)
    prime_counter = 0
