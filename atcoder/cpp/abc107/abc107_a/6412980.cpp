// Contest ID: abc107
// Problem ID: abc107_a ( https://atcoder.jp/contests/abc107/tasks/abc107_a )
// Title: A. Train
// Language: C++14 (Clang 3.8.0)
// Submitted: 2019-07-17 04:41:12 +0000 UTC ( https://atcoder.jp/contests/abc107/submissions/6412980 ) 

#include <algorithm>
#include <iostream>
#include <vector>

using namespace std;

void solve(int N, int i) { printf("%d\n", N - i + 1); }

int main() {
  int N, i;
  cin >> N >> i;
  solve(N, i);
  return 0;
}
