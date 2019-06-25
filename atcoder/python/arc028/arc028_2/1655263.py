# Contest ID: arc028
# Problem ID: arc028_2 ( https://atcoder.jp/contests/arc028/tasks/arc028_2 )
# Title: B. 特別賞
# Language: Python3 (3.4.3)
# Submitted: 2017-10-07 05:03:15 +0000 UTC ( https://atcoder.jp/contests/arc028/submissions/1655263 ) 

import heapq

n, k = map(int, input().split(" "))
x = list(map(int, input().split(" ")))
hq = []
rank = 1
for _ in range(k):
    heapq.heappush(hq, (-x.pop(0), rank))
    rank += 1

print(hq[0][1])
for i in range(n - k):
    heapq.heappush(hq, (-x.pop(0), rank))
    heapq.heappop(hq)
    print(hq[0][1])
    rank += 1