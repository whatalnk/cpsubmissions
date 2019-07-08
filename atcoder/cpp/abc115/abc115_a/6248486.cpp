// Contest ID: abc115
// Problem ID: abc115_a ( https://atcoder.jp/contests/abc115/tasks/abc115_a )
// Title: A. Christmas Eve Eve Eve
// Language: C++14 (Clang 3.8.0)
// Submitted: 2019-07-05 23:52:38 +0000 UTC ( https://atcoder.jp/contests/abc115/submissions/6248486 ) 

#include <algorithm>
#include <iostream>
#include <map>
#include <queue>
#include <stdio.h>
#include <string>

using namespace std;

void solve(int D) {
  string ans = "Christmas";
  for (int i = 25; i > D; i--) {
    ans += " Eve";
  }
  printf("%s\n", ans.c_str());
}

int main() {
  int D;
  cin >> D;
  solve(D);
  return 0;
}