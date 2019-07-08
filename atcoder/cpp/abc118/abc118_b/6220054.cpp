// Contest ID: abc118
// Problem ID: abc118_b ( https://atcoder.jp/contests/abc118/tasks/abc118_b )
// Title: B. Foods Loved by Everyone
// Language: C++14 (Clang 3.8.0)
// Submitted: 2019-07-02 17:49:16 +0000 UTC ( https://atcoder.jp/contests/abc118/submissions/6220054 ) 

#include <algorithm>
#include <iostream>
#include <map>
#include <queue>
#include <stdio.h>
#include <string>

using namespace std;

void solve(int N, int M) {
  int ans = 0;
  vector<int> food(M + 1, 0);
  for (int i = 0; i < N; i++) {
    int k;
    cin >> k;
    for (int j = 0; j < k; j++) {
      int a;
      cin >> a;
      food[a] += 1;
    }
  }
  for (int x : food) {
    if (x == N) {
      ans += 1;
    }
  }
  printf("%d\n", ans);
}

int main() {
  int N, M;
  cin >> N >> M;
  solve(N, M);
  return 0;
}