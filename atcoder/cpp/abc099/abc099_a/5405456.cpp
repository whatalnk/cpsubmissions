// Contest ID: abc099
// Problem ID: abc099_a ( https://atcoder.jp/contests/abc099/tasks/abc099_a )
// Title: A. ABD
// Language: C++14 (Clang 3.8.0)
// Submitted: 2019-05-15 06:03:40 +0000 UTC ( https://atcoder.jp/contests/abc099/submissions/5405456 ) 

#include <algorithm>
#include <cstdio>
#include <iostream>
#include <queue>
#include <string>

using namespace std;

int n;

void solve() {
  if (n > 999) {
    cout << "ABD" << endl;
  } else {
    cout << "ABC" << endl;
  }
}

int main() {
  cin >> n;
  solve();
  return 0;
}
