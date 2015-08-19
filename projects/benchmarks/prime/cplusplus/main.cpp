// Copyright (c) 2015 Calinou
// This source code form is available under CC0 1.0 Universal.

#include <iostream>
#include <cmath>
#include <cstdio>

using namespace std;

int main() {
  unsigned long nb = 1;
  unsigned long nb_test = 2;
  unsigned long square_root = 0;
  bool not_prime = true;
  unsigned long prime_counter = 0;

  // If the number is even, add 1 to make it odd
  if (nb % 2 == 0) {
    nb++;
  }

  while (true) {
    square_root = (unsigned long) sqrt(nb);
    not_prime = true;
    nb_test = 2;
    for (nb_test = 2; nb_test < square_root; nb_test++) {
      if (nb % nb_test == 0) {
        not_prime = false;
        prime_counter++;
        break;
      }
    }

    if (not_prime && prime_counter >= 10000) {
      printf("%lu\n", nb);
      prime_counter = 0;
    }

    nb += 2;
  }
}
