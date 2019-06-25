// Contest ID: abc034
// Problem ID: abc034_a ( https://atcoder.jp/contests/abc034/tasks/abc034_a )
// Title: A. テスト
// Language: C++14 (Clang++ 3.4)
// Submitted: 2016-11-19 03:37:06 +0000 UTC ( https://atcoder.jp/contests/abc034/submissions/986268 ) 

#include <algorithm>
#include <iostream>
#include <string>
using namespace std;
int main() {
  int x, y;
  cin >> x >> y;
  if (x < y){
    cout << "Better" << endl;
  } else {
    cout << "Worse" << endl;    
  }
  return 0;
}
