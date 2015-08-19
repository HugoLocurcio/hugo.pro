// Copyright (c) 2015 Calinou
// This source code form is available under CC0 1.0 Universal.

using System;

public class Prime {
  public static void Main() {
    uint nb = 1;
    uint nb_test = 2;
    double square_root = 0.0f;
    bool not_prime = true;
    uint prime_counter = 0;

    // If the number is even, add 1 to make it odd
    if (nb % 2 == 0) {
    	nb++;
    }

    while (true) {
      square_root = Math.Sqrt(nb);
    	not_prime = true;
    	nb_test = 2;
    	while (nb_test < square_root) {
    		if (nb % nb_test == 0) {
    			not_prime = false;
          prime_counter++;
          break;
        }

        nb_test += 1;
      }
      if (not_prime && prime_counter >= 10000) {
        Console.WriteLine(nb);
        prime_counter = 0;
      }
      nb += 2;
    }
  }
}
