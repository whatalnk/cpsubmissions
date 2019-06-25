// Contest ID: abc100
// Problem ID: abc100_a ( https://atcoder.jp/contests/abc100/tasks/abc100_a )
// Title: A. Happy Birthday!
// Language: C++14 (Clang 3.8.0)
// Submitted: 2019-05-17 11:54:41 +0000 UTC ( https://atcoder.jp/contests/abc100/submissions/5428177 ) 

#include <iostream>

using namespace std;

static int A, B;

void solve();

void solve() {
  if (A <= 8 && B <= 8) {
    cout << "Yay!" << endl;
  } else {
    cout << ":(" << endl;
  }
}

int main() {
  cin >> A >> B;
  solve();
  return 0;
}
