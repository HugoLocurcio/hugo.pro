// Copyright (c) 2015 Calinou
// This source code form is available under CC0 1.0 Universal.

public class Main {
  public static void main(String[] args) {
    int nb = 1;
    int nb_test = 2;
    double square_root = 0;
    boolean not_prime = true;
    int prime_counter = 0;

    // If the number is even, add 1 to make it odd
    if (nb % 2 == 0) {
      nb++;
    }

    while (true) {
      square_root = Math.sqrt(nb);
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
        System.out.println(nb);
        prime_counter = 0;
      }

      nb += 2;
    }
  }
}
