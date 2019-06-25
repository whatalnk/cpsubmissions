// Contest ID: abc035
// Problem ID: abc035_a ( https://atcoder.jp/contests/abc035/tasks/abc035_a )
// Title: A. テレビ
// Language: C++14 (Clang 3.8.0)
// Submitted: 2016-11-19 03:33:38 +0000 UTC ( https://atcoder.jp/contests/abc035/submissions/986266 ) 

#include <algorithm>
#include <iostream>
#include <string>
using namespace std;
int main() {
  int w, h;
  cin >> w >> h;
  if (w * 3 == h * 4){
    cout << "4:3" << endl;
  } else {
    cout << "16:9" << endl;    
  }
  return 0;
}
