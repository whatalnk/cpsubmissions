// Contest ID: abc126
// Problem ID: abc126_b ( https://atcoder.jp/contests/abc126/tasks/abc126_b )
// Title: B. YYMM or MMYY
// Language: C++14 (Clang 3.8.0)
// Submitted: 2019-06-26 12:19:20 +0000 UTC ( https://atcoder.jp/contests/abc126/submissions/6129105 ) 

#include <algorithm>
#include <iostream>
#include <queue>
#include <string>

using namespace std;

void solve(string S);

void solve(string S) {
  string ans;
  int l = stoi(S.substr(0, 2));
  int r = stoi(S.substr(2, 2));
  if (l >= 1 && l <= 12 && r >= 1 && r <= 12) {
    ans = "AMBIGUOUS";
  } else if (l >= 1 && l <= 12 && (r > 12 || r == 0)) {
    ans = "MMYY";
  } else if ((l > 12 || l == 0) && r >= 1 && r <= 12) {
    ans = "YYMM";
  } else {
    ans = "NA";
  }
  cout << ans << endl;
}

int main() {
  string S;
  cin >> S;
  solve(S);
  return 0;
}
