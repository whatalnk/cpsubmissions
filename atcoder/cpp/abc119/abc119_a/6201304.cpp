// Contest ID: abc119
// Problem ID: abc119_a ( https://atcoder.jp/contests/abc119/tasks/abc119_a )
// Title: A. Still TBD
// Language: C++14 (Clang 3.8.0)
// Submitted: 2019-07-01 00:20:49 +0000 UTC ( https://atcoder.jp/contests/abc119/submissions/6201304 ) 

#include <algorithm>
#include <iostream>
#include <map>
#include <queue>
#include <stdio.h>
#include <string>

using namespace std;

void solve(string S) {
  int yyyy = stoi(S.substr(0, 4));
  int mm = stoi(S.substr(5, 2));
  int dd = stoi(S.substr(8, 2));
  if (yyyy < 2019) {
    cout << "Heisei" << endl;
  } else if (mm < 5) {
    cout << "Heisei" << endl;
  } else {
    cout << "TBD" << endl;
  }
}

int main() {
  string S;
  cin >> S;
  solve(S);
  return 0;
}