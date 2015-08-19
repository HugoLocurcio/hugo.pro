-- Copyright (c) 2015 Calinou
-- This source code form is available under CC0 1.0 Universal.

nb = 1
prime_counter = 0

-- If the number is even, add 1 to make it odd
if nb % 2 == 0 then
	nb = nb + 1
end

while true do
	square_root = math.sqrt(nb)
	not_prime = true
	nb_test = 2

	while nb_test < square_root do
		if nb % nb_test == 0 then
			not_prime = false
			prime_counter = prime_counter + 1
			break
		end

		nb_test = nb_test + 1
	end

	if not_prime and prime_counter >= 10000 then
		print(nb)
		prime_counter = 0
	end

	nb = nb + 2
end
