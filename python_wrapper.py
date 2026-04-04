#!/usr/bin/env python3
import os
import sys 
import subprocess
import math

vec_size = 10_000_000
# N = 10
N = 40

cmd = sys.argv[1]

times = []

for k in range(0,N):

    proc = subprocess.Popen(cmd + f" {vec_size}",
                            cwd=os.getcwd(),
                            shell=True,
                            stdout=subprocess.PIPE,
                            stderr=subprocess.PIPE,
                            universal_newlines=True)
    out, err = proc.communicate()
    error_code = proc.returncode

    out_lines = out.splitlines()
    for line in out_lines:
        if 'Elapsed' in line:
            words = line.split()
            times.append(float(words[3])*1000)
        print(line)

    if error_code != 0:
        raise Exception(err)

mean = 0.0
for time in times:
    mean += time 
    # print(time)
mean = mean/N

std_dev = 0.0
for time in times:
    std_dev += (time - mean)**2
std_dev = math.sqrt(std_dev/(N-1))
SEM = std_dev/math.sqrt(N)

result = f"Mean time = {mean:.3f} \n" + \
         f"std.dev = {std_dev:12.6e} ({(std_dev/mean*100):.2f}%) \n" + \
         f"SEM = {SEM:12.6e} ({(SEM/mean*100):.2f}%)"

print(result)


