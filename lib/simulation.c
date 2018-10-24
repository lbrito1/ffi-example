// Compiled with: gcc -v -O3 -shared -o simulation.so -fPIC simulation.c
#include <math.h>

long c_simulation(int input) {
  long output = 0;
  for (int i = 0; i < 1000; i++) {
    for (int j = 0; j < 1000; j++) {
      output += i * j * input;
    }
  }
  return output;
}
