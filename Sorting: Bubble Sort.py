#!/bin/python3

import math
import os
import random
import re
import sys

# Complete the countSwaps function below.
def countSwaps(arr):
    n = len(arr) 
    count = 0
    for i in range(n-1):  
        for j in range(0, n-i-1): 
            if arr[j] > arr[j+1] : 
                count +=1
                arr[j], arr[j+1] = arr[j+1], arr[j] 
    return print("Array is sorted in %d swaps.\n" %count + "First Element: %d \n" % arr[0]+ "Last Element: %d \n" % arr[-1])
 
if __name__ == '__main__':
    n = int(input())

    a = list(map(int, input().rstrip().split()))

    countSwaps(a)
