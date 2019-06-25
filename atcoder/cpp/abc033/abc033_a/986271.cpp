// Contest ID: abc033
// Problem ID: abc033_a ( https://atcoder.jp/contests/abc033/tasks/abc033_a )
// Title: A. 暗証番号
// Language: C++14 (Clang++ 3.4)
// Submitted: 2016-11-19 03:40:48 +0000 UTC ( https://atcoder.jp/contests/abc033/submissions/986271 ) 

#include <algorithm>
#include <iostream>
#include <string>
using namespace std;
int main() {
  int n;
  cin >> n;
  if (n % 1111 == 0){
    cout << "SAME" << endl;
  } else {
    cout << "DIFFERENT" << endl;    
  }
  return 0;
}
