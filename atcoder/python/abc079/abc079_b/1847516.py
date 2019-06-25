# Contest ID: abc079
# Problem ID: abc079_b ( https://atcoder.jp/contests/abc079/tasks/abc079_b )
# Title: B. Lucas Number
# Language: Python3 (3.4.3)
# Submitted: 2017-12-10 02:24:40 +0000 UTC ( https://atcoder.jp/contests/abc079/submissions/1847516 ) 

l = [0] * 100
l[0] = 2
l[1] = 1
for i in range(2, 90):
    l[i] = l[i-1] + l[i-2]

n = int(input())
print(l[n])