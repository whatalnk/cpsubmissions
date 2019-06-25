# Contest ID: abc073
# Problem ID: abc073_b ( https://atcoder.jp/contests/abc073/tasks/abc073_b )
# Title: B. Theater
# Language: Python3 (3.4.3)
# Submitted: 2017-09-25 08:39:24 +0000 UTC ( https://atcoder.jp/contests/abc073/submissions/1627475 ) 

def solve():
    n = int(input())
    ans = 0
    for _ in range(n):
        x, y = map(int, input().split(" "))
        ans += (y - x + 1)
    print(ans)

if __name__ == '__main__':
    solve()