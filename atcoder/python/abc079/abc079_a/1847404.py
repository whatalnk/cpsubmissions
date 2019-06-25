# Contest ID: abc079
# Problem ID: abc079_a ( https://atcoder.jp/contests/abc079/tasks/abc079_a )
# Title: A. Good Integer
# Language: Python3 (3.4.3)
# Submitted: 2017-12-10 01:58:17 +0000 UTC ( https://atcoder.jp/contests/abc079/submissions/1847404 ) 

n = input()
if (n[0] == n[1] == n[2]) or (n[1] == n[2] == n[3]):
    print("Yes")
else:
    print("No")
