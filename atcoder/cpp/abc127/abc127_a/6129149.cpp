// Contest ID: abc127
// Problem ID: abc127_a ( https://atcoder.jp/contests/abc127/tasks/abc127_a )
// Title: A. Ferris Wheel
// Language: C++14 (Clang 3.8.0)
// Submitted: 2019-06-26 12:23:23 +0000 UTC ( https://atcoder.jp/contests/abc127/submissions/6129149 ) 

#include <algorithm>
#include <iostream>
#include <queue>
#include <string>

using namespace std;

void solve(int A, int B);

void solve(int A, int B) {
  int ans;
  if (A >= 13) {
    ans = B;
  } else if (A >= 6) {
    ans = B / 2;
  } else {
    ans = 0;
  }
  cout << ans << endl;
}

int main() {
  int A, B;
  cin >> A >> B;
  solve(A, B);
  return 0;
}
