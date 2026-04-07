#include <iostream>
#include <chrono>
#include <iomanip>

#include <vector>
#include <string>
#include <math.h>

#include "../common/disabled_alloc.hpp"

typedef std::vector<double,Alloc<double>> Vector;

void initVector(Vector& vec, int64_t N)
{
    vec.resize(N);
    for (int64_t i=0; i<N; ++i)
        vec[i] = static_cast<double>(i)/static_cast<double>(N);
}

void operation(const Vector& vec, int64_t N, double& sum)
{
    sum = 0.0;
    for (int64_t i=0; i<N; ++i)
        sum += log(vec[i]);
}

int main(int argc, char** argv)
{
    const std::string N_str = argv[1];

    const int64_t N = std::stoll(N_str);

    Vector vec;
    double sum;

    initVector(vec, N);

    const auto start = std::chrono::steady_clock::now();

    operation(vec, N, sum);

    const auto end = std::chrono::steady_clock::now();

    const auto duration = std::chrono::duration<double>(end - start);

    std::cout << "Elapsed time = "
              << std::scientific << std::setprecision(6)
              << duration.count() << " seconds " << sum << std::endl;

    return 0;
}
