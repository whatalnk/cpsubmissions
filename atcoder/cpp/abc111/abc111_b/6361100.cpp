// Contest ID: abc111
// Problem ID: abc111_b ( https://atcoder.jp/contests/abc111/tasks/abc111_b )
// Title: B. AtCoder Beginner Contest 111
// Language: C++14 (Clang 3.8.0)
// Submitted: 2019-07-13 13:29:29 +0000 UTC ( https://atcoder.jp/contests/abc111/submissions/6361100 ) 

#include <algorithm>
#include <cmath>
#include <cstdio>
#include <iomanip>
#include <iostream>
#include <map>
#include <queue>
#include <sstream>
#include <string>

using namespace std;

void solve(int n) {
  int ans = 111;
  for (int i = 1; i < 10; i++) {
    ans = 111 * i;
    if (n <= ans) {
      break;
    }
  }
  printf("%d\n", ans);
}

int main() {
  int n;
  cin >> n;
  solve(n);
  return 0;
}