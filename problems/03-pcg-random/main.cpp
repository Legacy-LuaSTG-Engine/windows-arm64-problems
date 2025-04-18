#include <cstdio>
#include <random>
#include "pcg_random.hpp"

int main() {
    pcg64_fast rng;
    std::uniform_real_distribution<float> dist(0.0f, 10.0f);
    for (int32_t i = 0; i < 10; i += 1) {
        std::printf("%f\n", dist(rng));
    }
    return 0;
}
