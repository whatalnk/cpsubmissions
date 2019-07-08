// Contest ID: abc116
// Problem ID: abc116_b ( https://atcoder.jp/contests/abc116/tasks/abc116_b )
// Title: B. Collatz Problem
// Language: C++14 (Clang 3.8.0)
// Submitted: 2019-07-05 02:40:34 +0000 UTC ( https://atcoder.jp/contests/abc116/submissions/6240575 ) 

#include <algorithm>
#include <iostream>
#include <map>
#include <queue>
#include <stdio.h>
#include <string>

using namespace std;

int f(int n) {
  if (n % 2 == 0) {
    return n / 2;
  } else {
    return 3 * n + 1;
  }
}

void solve(int s) {
  vector<bool> v(1e6 + 1, false);
  vector<int> a(1e6 + 1);
  a[1] = s;
  v[a[1]] = true;
  for (int i = 2;; i++) {
    int x = f(a[i - 1]);
    a[i] = x;
    if (v[x]) {
      printf("%d\n", i);
      break;
    } else {
      v[x] = true;
    }
  }
}

int main() {
  int s;
  cin >> s;
  solve(s);
  return 0;
}