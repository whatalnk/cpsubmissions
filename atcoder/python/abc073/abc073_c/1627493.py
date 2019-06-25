# Contest ID: abc073
# Problem ID: abc073_c ( https://atcoder.jp/contests/abc073/tasks/abc073_c )
# Title: C. Write and Erase
# Language: Python3 (3.4.3)
# Submitted: 2017-09-25 08:46:00 +0000 UTC ( https://atcoder.jp/contests/abc073/submissions/1627493 ) 

from collections import defaultdict

def solve():
    dic = defaultdict(int)
    n = int(input())
    ans = 0
    for _ in range(n):
        a = int(input())
        dic[a] = (dic[a] + 1) % 2
    print(sum(dic.values()))

if __name__ == '__main__':
    solve()