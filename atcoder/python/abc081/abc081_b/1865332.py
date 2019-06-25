# Contest ID: abc081
# Problem ID: abc081_b ( https://atcoder.jp/contests/abc081/tasks/abc081_b )
# Title: B. Shift only
# Language: Python3 (3.4.3)
# Submitted: 2017-12-11 09:33:43 +0000 UTC ( https://atcoder.jp/contests/abc081/submissions/1865332 ) 

n = int(input())
a = list(map(int, input().split(" ")))
b = [0] * n
for i in range(n):
    while a[i] % 2 == 0:
        a[i] /= 2
        b[i] += 1

print(min(b))