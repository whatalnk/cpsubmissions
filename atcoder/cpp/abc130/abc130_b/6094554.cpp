// Contest ID: abc130
// Problem ID: abc130_b ( https://atcoder.jp/contests/abc130/tasks/abc130_b )
// Title: B. Bounding
// Language: C++14 (Clang 3.8.0)
// Submitted: 2019-06-23 08:49:39 +0000 UTC ( https://atcoder.jp/contests/abc130/submissions/6094554 ) 

#include <algorithm>
#include <iostream>
#include <queue>
#include <string>

using namespace std;

int solve();
static int N, X;
static vector<int> L;

int solve() {
  int d = 0;
  int ret = 1;
  for (auto l : L) {
    d += l;
    if (d <= X) {
      ret += 1;
    }
  }
  return ret;
}

int main() {
  cin >> N >> X;
  for (int i = 0; i < N; i++) {
    int l;
    cin >> l;
    L.emplace_back(l);
  }
  cout << solve() << endl;
  return 0;
}
