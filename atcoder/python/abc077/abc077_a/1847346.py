# Contest ID: abc077
# Problem ID: abc077_a ( https://atcoder.jp/contests/abc077/tasks/abc077_a )
# Title: A. Rotation
# Language: Python3 (3.4.3)
# Submitted: 2017-12-10 01:50:50 +0000 UTC ( https://atcoder.jp/contests/abc077/submissions/1847346 ) 

r1 = input()
r2 = input()
if r1 == r2[::-1] and r2 == r1[::-1]:
    print("YES")
else:
    print("NO")