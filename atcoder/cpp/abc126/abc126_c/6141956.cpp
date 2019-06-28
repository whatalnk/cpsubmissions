// Contest ID: abc126
// Problem ID: abc126_c ( https://atcoder.jp/contests/abc126/tasks/abc126_c )
// Title: C. Dice and Coin
// Language: C++14 (Clang 3.8.0)
// Submitted: 2019-06-27 16:57:10 +0000 UTC ( https://atcoder.jp/contests/abc126/submissions/6141956 ) 

#include <algorithm>
#include <iostream>
#include <queue>
#include <string>

using namespace std;

void solve(int N, int K);

void solve(int N, int K) {
  double ans = 0;
  for (int i = 1; i <= N; i++) {
    double tmp = 1.0 / N;
    int pt = i;
    for (;;) {
      if (pt >= K) {
        break;
      }
      pt *= 2;
      tmp /= 2;
    }
    ans += tmp;
  }
  printf("%.12f\n", ans);
}

int main() {
  int N, K;
  cin >> N >> K;
  solve(N, K);
  return 0;
}
