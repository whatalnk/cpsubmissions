// Contest ID: abc124
// Problem ID: abc124_c ( https://atcoder.jp/contests/abc124/tasks/abc124_c )
// Title: C. Coloring Colorfully
// Language: C++14 (Clang 3.8.0)
// Submitted: 2019-06-29 02:44:30 +0000 UTC ( https://atcoder.jp/contests/abc124/submissions/6153140 ) 

#include <algorithm>
#include <iostream>
#include <queue>
#include <string>

using namespace std;

void solve(string S) {
  int a = 0;
  int b = 0;
  for (int i = 0; i < S.length(); i++) {
    if (i % 2 == 0) {
      if (S.substr(i, 1) == "0") {
        a += 1;
      }
    } else {
      if (S.substr(i, 1) != "0") {
        a += 1;
      }
    }
  }

  for (int i = 0; i < S.length(); i++) {
    if (i % 2 == 0) {
      if (S.substr(i, 1) == "1") {
        b += 1;
      }
    } else {
      if (S.substr(i, 1) != "1") {
        b += 1;
      }
    }
  }

  cout << min(a, b) << endl;
}

int main() {
  string S;
  cin >> S;
  solve(S);
  return 0;
}
