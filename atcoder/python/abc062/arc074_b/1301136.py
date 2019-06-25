# Contest ID: abc062
# Problem ID: arc074_b ( https://atcoder.jp/contests/abc062/tasks/arc074_b )
# Title: 
# Language: Python3 (3.4.3)
# Submitted: 2017-05-21 03:13:17 +0000 UTC ( https://atcoder.jp/contests/abc062/submissions/1301136 ) 

import heapq
N = int(input())

a = list(map(int, input().split()))
left = []
for i in a[:N]:
    heapq.heappush(left, i)
right = []
for i in a[(2 * N):(3 * N)]:
    heapq.heappush(right, -i)

left_sum = [sum(left)]
right_sum = [-sum(right)]
for k in range(N, 2 * N):

    heapq.heappush(left, a[k])
    v = heapq.heappop(left)
    left_sum.append(left_sum[-1] + a[k] - v)

for k in range(2 * N - 1, N - 1, -1):
    heapq.heappush(right, -a[k])
    v = heapq.heappop(right)
    right_sum.append(right_sum[-1] + a[k] + v)

print(max([a - b for (a, b) in zip(left_sum, right_sum[::-1])]))