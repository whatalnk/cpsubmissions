# Contest ID: abc076
# Problem ID: abc076_b ( https://atcoder.jp/contests/abc076/tasks/abc076_b )
# Title: B. Addition and Multiplication
# Language: Python3 (3.4.3)
# Submitted: 2017-12-10 02:06:27 +0000 UTC ( https://atcoder.jp/contests/abc076/submissions/1847456 ) 

n = int(input())
k = int(input())
number = 1
for i in range(n):
    number = min(number * 2, number + k)
print(number)
