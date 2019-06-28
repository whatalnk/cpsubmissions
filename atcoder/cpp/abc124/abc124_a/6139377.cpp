// Contest ID: abc124
// Problem ID: abc124_a ( https://atcoder.jp/contests/abc124/tasks/abc124_a )
// Title: A. Buttons
// Language: C++14 (Clang 3.8.0)
// Submitted: 2019-06-27 12:22:43 +0000 UTC ( https://atcoder.jp/contests/abc124/submissions/6139377 ) 

#include <algorithm>
#include <iostream>
#include <queue>
#include <string>

using namespace std;

void solve(int A, int B);

void solve(int A, int B) {
  int ans = max({2 * A - 1, 2 * B - 1, A + B});
  cout << ans << endl;
}

int main() {
  int A, B;
  cin >> A >> B;
  solve(A, B);
  return 0;
}
