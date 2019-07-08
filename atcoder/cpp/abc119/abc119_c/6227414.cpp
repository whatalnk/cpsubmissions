// Contest ID: abc119
// Problem ID: abc119_c ( https://atcoder.jp/contests/abc119/tasks/abc119_c )
// Title: C. Synthetic Kadomatsu
// Language: C++14 (Clang 3.8.0)
// Submitted: 2019-07-03 12:59:55 +0000 UTC ( https://atcoder.jp/contests/abc119/submissions/6227414 ) 

#include <algorithm>
#include <iostream>
#include <map>
#include <queue>
#include <stdio.h>
#include <string>

using namespace std;
const long long INF = 1e9;
static int N, A, B, C;
static vector<int> l;

long long dfs(int cur, int a, int b, int c) {
  if (cur == N) {
    if (min({a, b, c}) > 0) {
      return abs(a - A) + abs(b - B) + abs(c - C) - 30;
    } else {
      return INF;
    }
  }
  long long ret0 = dfs(cur + 1, a, b, c);
  long long ret1 = dfs(cur + 1, a + l[cur], b, c) + 10;
  long long ret2 = dfs(cur + 1, a, b + l[cur], c) + 10;
  long long ret3 = dfs(cur + 1, a, b, c + l[cur]) + 10;
  return min({ret0, ret1, ret2, ret3});
}

void solve(int N, int A, int B, int C, vector<int> l) {
  long long ans = dfs(0, 0, 0, 0);
  printf("%lld\n", ans);
}

int main() {
  cin >> N >> A >> B >> C;
  l.resize(N);
  for (int i = 0; i < N; i++) {
    cin >> l[i];
  }
  solve(N, A, B, C, l);
  return 0;
}