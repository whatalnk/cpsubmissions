# Contest ID: code-thanks-festival-2017-open
# Problem ID: code_thanks_festival_2017_c ( https://atcoder.jp/contests/code-thanks-festival-2017-open/tasks/code_thanks_festival_2017_c )
# Title: C. Factory
# Language: Python3 (3.4.3)
# Submitted: 2019-05-05 18:56:41 +0000 UTC ( https://atcoder.jp/contests/code-thanks-festival-2017-open/submissions/5283976 ) 

import heapq

n, k = list(map(int, input().split(" ")))
h = []
for i in range(n):
    a, b = list(map(int, input().split(" ")))
    heapq.heappush(h, (a, b))

ans = 0

for i in range(k):
    a, b = heapq.heappop(h)
    ans += a
    heapq.heappush(h, (a + b, b))

print(ans)