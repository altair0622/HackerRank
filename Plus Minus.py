#!/bin/python3

import math
import os
import random
import re
import sys

# Complete the plusMinus function below.
def plusMinus(arr):
    p_count, m_count, n_count = 0, 0, 0
    for i in arr:
        if i > 0:
            p_count +=1
        elif i < 0:
            m_count +=1
        else:
            n_count +=1
    A = p_count/(p_count+m_count+n_count)
    B = m_count/(p_count+m_count+n_count)
    C = n_count/(p_count+m_count+n_count)
    print("%.6f" % A +'\n'+ "%.6f" % B +'\n'+ "%.6f" % C)



if __name__ == '__main__':
    n = int(input())

    arr = list(map(int, input().rstrip().split()))

    plusMinus(arr)
