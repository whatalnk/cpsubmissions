// Contest ID: abc121
// Problem ID: abc121_a ( https://atcoder.jp/contests/abc121/tasks/abc121_a )
// Title: A. White Cells
// Language: C++14 (Clang 3.8.0)
// Submitted: 2019-06-29 01:19:19 +0000 UTC ( https://atcoder.jp/contests/abc121/submissions/6152529 ) 

#include <algorithm>
#include <iostream>
#include <queue>
#include <string>

using namespace std;

void solve(int H, int W, int h, int w);

void solve(int H, int W, int h, int w) {
  int ans = H * W - H * w - h * W + h * w;
  printf("%d\n", ans);
}

int main() {
  int H, W, h, w;
  cin >> H >> W >> h >> w;
  solve(H, W, h, w);
  return 0;
}
