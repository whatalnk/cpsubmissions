// Contest ID: abc122
// Problem ID: abc122_b ( https://atcoder.jp/contests/abc122/tasks/abc122_b )
// Title: B. ATCoder
// Language: C++14 (Clang 3.8.0)
// Submitted: 2019-06-29 02:26:49 +0000 UTC ( https://atcoder.jp/contests/abc122/submissions/6152988 ) 

#include <algorithm>
#include <iostream>
#include <queue>
#include <string>

using namespace std;

bool check(string s) {
  if (s == "A" || s == "T" || s == "G" || s == "C") {
    return true;
  } else {
    return false;
  }
}

void solve(string s) {
  int ans = 0;
  int cur = 0;
  int n = s.length();
  for (int i = 0; i < n; i++) {
    if (check(s.substr(i, 1))) {
      cur += 1;
    } else {
      ans = max(ans, cur);
      cur = 0;
    }
  }
  ans = max(ans, cur);

  cout << ans << endl;
}

int main() {
  string s;
  cin >> s;
  solve(s);
  return 0;
}
