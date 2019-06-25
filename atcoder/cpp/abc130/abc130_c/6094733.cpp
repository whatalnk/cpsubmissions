// Contest ID: abc130
// Problem ID: abc130_c ( https://atcoder.jp/contests/abc130/tasks/abc130_c )
// Title: C. Rectangle Cutting
// Language: C++14 (Clang 3.8.0)
// Submitted: 2019-06-23 09:04:19 +0000 UTC ( https://atcoder.jp/contests/abc130/submissions/6094733 ) 

#include <algorithm>
#include <iostream>
#include <queue>
#include <string>

using namespace std;

void solve();
static int W, H, x, y;

void solve() {
  double S = double(W) * double(H) / 2;
  int flag;
  if (x * 2 == W && y * 2 == H) {
    flag = 1;
  } else {
    flag = 0;
  }
  printf("%lf %d\n", S, flag);
}

int main() {
  cin >> W >> H >> x >> y;
  solve();
  return 0;
}
