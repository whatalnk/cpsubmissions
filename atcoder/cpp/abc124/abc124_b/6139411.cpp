// Contest ID: abc124
// Problem ID: abc124_b ( https://atcoder.jp/contests/abc124/tasks/abc124_b )
// Title: B. Great Ocean View
// Language: C++14 (Clang 3.8.0)
// Submitted: 2019-06-27 12:28:37 +0000 UTC ( https://atcoder.jp/contests/abc124/submissions/6139411 ) 

#include <algorithm>
#include <iostream>
#include <queue>
#include <string>

using namespace std;

void solve(int N, vector<int> H);

void solve(int N, vector<int> H) {
  int ans = 0;
  int hmax = 0;
  for (int h : H) {
    if (h >= hmax) {
      ans += 1;
      hmax = max(hmax, h);
    }
  }
  cout << ans << endl;
}

int main() {
  int N;
  cin >> N;
  vector<int> H(N);
  for (int i = 0; i < N; i++) {
    cin >> H[i];
  }
  solve(N, H);
  return 0;
}
