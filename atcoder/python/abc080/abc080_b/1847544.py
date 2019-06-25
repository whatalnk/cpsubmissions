# Contest ID: abc080
# Problem ID: abc080_b ( https://atcoder.jp/contests/abc080/tasks/abc080_b )
# Title: B. Harshad Number
# Language: Python3 (3.4.3)
# Submitted: 2017-12-10 02:35:45 +0000 UTC ( https://atcoder.jp/contests/abc080/submissions/1847544 ) 

n = input()
fx = sum(map(int, list(n)))
if int(n) % fx == 0:
    print("Yes")
else:
    print("No")
