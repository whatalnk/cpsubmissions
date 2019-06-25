// Contest ID: abc038
// Problem ID: abc038_a ( https://atcoder.jp/contests/abc038/tasks/abc038_a )
// Title: A. お茶
// Language: C++14 (Clang 3.8.0)
// Submitted: 2016-11-17 03:08:09 +0000 UTC ( https://atcoder.jp/contests/abc038/submissions/984827 ) 

#include <algorithm>
#include <iostream>
#include <string>
using namespace std;
int main() {
  string s;
  cin >> s;
  int n = s.length();
  if (s.compare(n-1, 1, "T") == 0) {
    cout << "YES" << endl;
  } else {
    cout << "NO" << endl;    
  }
  return 0;
}
