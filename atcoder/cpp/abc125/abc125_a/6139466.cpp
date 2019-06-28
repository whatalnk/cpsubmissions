// Contest ID: abc125
// Problem ID: abc125_a ( https://atcoder.jp/contests/abc125/tasks/abc125_a )
// Title: A. Biscuit Generator
// Language: C++14 (Clang 3.8.0)
// Submitted: 2019-06-27 12:37:07 +0000 UTC ( https://atcoder.jp/contests/abc125/submissions/6139466 ) 

#include <algorithm>
#include <iostream>
#include <queue>
#include <string>

using namespace std;

void solve(int A, int B, int T);

void solve(int A, int B, int T) {
  int ans = 0;
  int t = A;
  for (;;) {
    if (t <= T) {
      ans += B;
    } else {
      break;
    }
    t += A;
  }
  cout << ans << endl;
}

int main() {
  int A, B, T;
  cin >> A >> B >> T;
  solve(A, B, T);
  return 0;
}
