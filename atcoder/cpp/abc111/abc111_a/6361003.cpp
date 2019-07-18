// Contest ID: abc111
// Problem ID: abc111_a ( https://atcoder.jp/contests/abc111/tasks/abc111_a )
// Title: A. AtCoder Beginner Contest 999
// Language: C++14 (Clang 3.8.0)
// Submitted: 2019-07-13 13:20:33 +0000 UTC ( https://atcoder.jp/contests/abc111/submissions/6361003 ) 

#include <algorithm>
#include <cmath>
#include <cstdio>
#include <iomanip>
#include <iostream>
#include <map>
#include <queue>
#include <sstream>
#include <string>

using namespace std;

void solve(string n) {
  string ans = "";
  for (int i = 0; i < n.length(); i++) {
    if (n[i] == '1') {
      ans += "9";
    } else {
      ans += "1";
    }
  }
  printf("%s\n", ans.c_str());
}

int main() {
  string n;
  cin >> n;
  solve(n);
  return 0;
}