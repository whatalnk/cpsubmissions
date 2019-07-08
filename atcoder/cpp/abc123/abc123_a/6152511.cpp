// Contest ID: abc123
// Problem ID: abc123_a ( https://atcoder.jp/contests/abc123/tasks/abc123_a )
// Title: A. Five Antennas
// Language: C++14 (Clang 3.8.0)
// Submitted: 2019-06-29 01:15:07 +0000 UTC ( https://atcoder.jp/contests/abc123/submissions/6152511 ) 

#include <algorithm>
#include <iostream>
#include <queue>
#include <string>

using namespace std;

void solve(int a, int e, int k);

void solve(int a, int e, int k) {
  if (e - a > k) {
    printf(":(\n");
  } else {
    printf("Yay!\n");
  }
}

int main() {
  int a, b, c, d, e, k;
  cin >> a >> b >> c >> d >> e >> k;
  solve(a, e, k);
  return 0;
}
