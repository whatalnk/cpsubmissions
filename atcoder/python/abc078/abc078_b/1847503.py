# Contest ID: abc078
# Problem ID: abc078_b ( https://atcoder.jp/contests/abc078/tasks/abc078_b )
# Title: B. ISU
# Language: Python3 (3.4.3)
# Submitted: 2017-12-10 02:19:29 +0000 UTC ( https://atcoder.jp/contests/abc078/submissions/1847503 ) 

x, y, z = map(int, input().split())
x -= 2 * z
x -= y
if x < 0:
    print(0)
else:
    print(1 + x // (y + z))