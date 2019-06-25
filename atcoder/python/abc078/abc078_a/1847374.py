# Contest ID: abc078
# Problem ID: abc078_a ( https://atcoder.jp/contests/abc078/tasks/abc078_a )
# Title: A. HEX
# Language: Python3 (3.4.3)
# Submitted: 2017-12-10 01:54:53 +0000 UTC ( https://atcoder.jp/contests/abc078/submissions/1847374 ) 

x, y = input().split(" ")
if x < y:
    print("<")
elif x == y:
    print("=")
else:
    print(">")