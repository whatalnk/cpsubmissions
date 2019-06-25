// Contest ID: abc131
// Problem ID: abc131_a ( https://atcoder.jp/contests/abc131/tasks/abc131_a )
// Title: A. Security
// Language: C++14 (Clang 3.8.0)
// Submitted: 2019-06-22 12:34:07 +0000 UTC ( https://atcoder.jp/contests/abc131/submissions/6066486 ) 

#include <algorithm>
#include <iostream>
#include <queue>
#include <string>

using namespace std;

static string S;
string solve();

string solve() {
  for (uint i = 0; i < 3; i++) {
    if (S[i] == S[i + 1]) {
      return "Bad";
    }
  }
  return "Good";
}

int main() {
  cin >> S;
  cout << solve() << endl;
  return 0;
}
