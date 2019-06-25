// Contest ID: abc129
// Problem ID: abc129_b ( https://atcoder.jp/contests/abc129/tasks/abc129_b )
// Title: B. Balance
// Language: C++14 (Clang 3.8.0)
// Submitted: 2019-06-24 00:42:09 +0000 UTC ( https://atcoder.jp/contests/abc129/submissions/6101822 ) 

#include <algorithm>
#include <iostream>
#include <queue>
#include <string>

using namespace std;

void solve();
static int N, wsum;
static vector<int> W;

void solve() {
  int left = 0;
  int ans = wsum;

  for (uint i = 0; i < N - 1; i++) {
    left += W[i];
    wsum -= W[i];
    ans = min({ans, abs(wsum - left)});
  }
  cout << ans << endl;
}

int main() {
  cin >> N;
  int w;
  wsum = 0;
  for (int i = 0; i < N; i++) {
    cin >> w;
    wsum += w;
    W.emplace_back(w);
  }

  solve();
  return 0;
}
