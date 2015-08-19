// Copyright (c) 2015 Halamix2
// This source code form is available under CC0 1.0 Universal.

fn main() {
	let mut nb = 1;
	let mut prime_counter = 10000;

	// If the number is even, add 1 to make it odd
	if nb % 2 == 0 {
		nb += 1;
	}

	loop {
		let square_root = (nb as f64).sqrt() as i32;
		let mut not_prime = true;
		let mut nb_test = 2;

		while nb_test < square_root {
			if nb % nb_test == 0 {
				not_prime = false;
				prime_counter += 1;
				break;
			}

			nb_test += 1;
		}

		if not_prime && prime_counter >= 10000 {
			println!("{}", nb);
			prime_counter = 0;
		}

		nb += 2;
	}
}
