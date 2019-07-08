// Contest ID: abc122
// Problem ID: abc122_a ( https://atcoder.jp/contests/abc122/tasks/abc122_a )
// Title: A. Double Helix
// Language: C++14 (Clang 3.8.0)
// Submitted: 2019-06-29 01:36:15 +0000 UTC ( https://atcoder.jp/contests/abc122/submissions/6152628 ) 

#include <algorithm>
#include <iostream>
#include <queue>
#include <string>

using namespace std;

void solve(string b) {
  string ans;
  if (b == "A") {
    ans = "T";
  } else if (b == "T") {
    ans = "A";
  } else if (b == "G") {
    ans = "C";
  } else {
    ans = "G";
  }
  cout << ans << endl;
}

int main() {
  string b;
  cin >> b;
  solve(b);
  return 0;
}
