// Contest ID: abc121
// Problem ID: abc121_b ( https://atcoder.jp/contests/abc121/tasks/abc121_b )
// Title: B. Can you solve this?
// Language: C++14 (GCC 5.4.1)
// Submitted: 2019-06-29 02:34:06 +0000 UTC ( https://atcoder.jp/contests/abc121/submissions/6153050 ) 

#include <algorithm>
#include <iostream>
#include <queue>
#include <string>

using namespace std;

void solve(int N, int M, int C, vector<int> B) {
  int ans = 0;
  for (int i = 0; i < N; i++) {
    int x = C;
    for (int j = 0; j < M; j++) {
      int a;
      cin >> a;
      x += a * B[j];
    }
    if (x > 0) {
      ans += 1;
    }
  }

  cout << ans << endl;
}

int main() {
  int N, M, C;
  cin >> N >> M >> C;
  vector<int> B(M);
  for (int i = 0; i < M; i++) {
    cin >> B[i];
  }
  solve(N, M, C, B);
  return 0;
}
