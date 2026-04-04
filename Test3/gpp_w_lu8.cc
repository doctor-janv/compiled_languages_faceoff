#include <iostream>
#include <chrono>
#include <iomanip>

#include <vector>
#include <string>

#include "../common/disabled_alloc.hpp"

typedef std::vector<double,Alloc<double>> Vector;

void initVector(Vector& vec, int64_t N)
{
    vec.resize(N);
    for (int64_t i=0; i<N; ++i)
        vec[i] = static_cast<double>(i);
}

void operation1(const Vector& vec1, Vector& vec2, int64_t N, double& sum)
{
    constexpr int64_t LUF = 8; //Loop unrolling factor
    sum = 0.0;

    const int64_t mod_N_LUF = N % LUF;

    for (int64_t i = 0; i < mod_N_LUF; ++i)
        sum += vec1[i]*vec2[i];

    for (int64_t i = mod_N_LUF; i < N; i += LUF)
    {
        sum += vec1[i + 0]*vec2[i + 0];    
        sum += vec1[i + 1]*vec2[i + 1];    
        sum += vec1[i + 2]*vec2[i + 2];    
        sum += vec1[i + 3]*vec2[i + 3];    
        sum += vec1[i + 4]*vec2[i + 4];    
        sum += vec1[i + 5]*vec2[i + 5];    
        sum += vec1[i + 6]*vec2[i + 6];    
        sum += vec1[i + 7]*vec2[i + 7];    
    }
}

int main(int argc, char** argv)
{
    const std::string N_str = argv[1];
    
    const int64_t N = std::stoll(N_str);

    Vector vec1;
    Vector vec2;
    double sum;

    initVector(vec1, N);
    initVector(vec2, N);
    
    const auto start = std::chrono::steady_clock::now();

    operation1(vec1, vec2, N, sum);
    
    const auto end = std::chrono::steady_clock::now();

    const auto duration = std::chrono::duration<double>(end - start);

    std::cout << "Elapsed time = " 
              << std::scientific << std::setprecision(6)
              << duration.count() << " seconds " << sum << std::endl;

    return 0;
}