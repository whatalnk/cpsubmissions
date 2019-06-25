// Contest ID: abc099
// Problem ID: abc099_c ( https://atcoder.jp/contests/abc099/tasks/abc099_c )
// Title: C. Strange Bank
// Language: C++14 (Clang 3.8.0)
// Submitted: 2019-05-15 11:25:03 +0000 UTC ( https://atcoder.jp/contests/abc099/submissions/5408437 ) 

#include <iostream>

using namespace std;

static int n;
int solve();

int solve() {
  int ans = n;
  for (int i = 0; i <= n; i++) {
    int x = 0;
    int a = i;
    int b = n - i;
    while (a > 0) {
      x += a % 6;
      a /= 6;
    }
    while (b > 0) {
      x += b % 9;
      b /= 9;
    }
    ans = min(ans, x);
  }
  return ans;
}

int main() {
  cin >> n;
  cout << solve() << endl;
  return 0;
}
