// Contest ID: abc127
// Problem ID: abc127_d ( https://atcoder.jp/contests/abc127/tasks/abc127_d )
// Title: D. Integer Cards
// Language: C++14 (Clang 3.8.0)
// Submitted: 2019-06-29 10:48:16 +0000 UTC ( https://atcoder.jp/contests/abc127/submissions/6157729 ) 

#include <algorithm>
#include <iostream>
#include <queue>
#include <queue>
#include <stdio.h>
#include <string>

using namespace std;

void solve(int N, int M) {
  long long ans = 0;
  priority_queue<pair<int, int>> que;
  for (int i = 0; i < N; i++) {
    int a;
    cin >> a;
    que.push(make_pair(a, 1));
  }
  for (int i = 0; i < M; i++) {
    int b, c;
    cin >> b >> c;
    que.push(make_pair(c, b));
  }
  for (int i = 0; i < N; i++) {
    auto x = que.top();
    que.pop();
    ans += x.first;
    if (x.second > 1) {
      x.second -= 1;
      que.push(x);
    }
  }
  printf("%lld\n", ans);
}

int main() {
  int N, M;
  scanf("%d %d", &N, &M);
  solve(N, M);
  return 0;
}