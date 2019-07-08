// Contest ID: abc115
// Problem ID: abc115_b ( https://atcoder.jp/contests/abc115/tasks/abc115_b )
// Title: B. Christmas Eve Eve
// Language: C++14 (Clang 3.8.0)
// Submitted: 2019-07-05 23:55:17 +0000 UTC ( https://atcoder.jp/contests/abc115/submissions/6248498 ) 

#include <algorithm>
#include <iostream>
#include <map>
#include <queue>
#include <stdio.h>
#include <string>

using namespace std;

void solve(int N) {
  int ans = 0;
  int maxp = 0;
  for (int i = 0; i < N; i++) {
    int p;
    cin >> p;
    ans += p;
    maxp = max(maxp, p);
  }
  printf("%d\n", ans - maxp / 2);
}

int main() {
  int N;
  cin >> N;
  solve(N);
  return 0;
}