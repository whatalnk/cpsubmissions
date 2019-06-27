// Contest ID: abc127
// Problem ID: abc127_b ( https://atcoder.jp/contests/abc127/tasks/abc127_b )
// Title: B. Algae
// Language: C++14 (Clang 3.8.0)
// Submitted: 2019-06-26 12:27:59 +0000 UTC ( https://atcoder.jp/contests/abc127/submissions/6129196 ) 

#include <algorithm>
#include <iostream>
#include <queue>
#include <string>

using namespace std;

void solve(int r, int D, int x);

void solve(int r, int D, int x) {
  int cur = x;
  for (int i = 0; i < 10; i++) {
    int nex = r * cur - D;
    printf("%d\n", nex);
    cur = nex;
  }
}

int main() {
  int r, D, x;
  cin >> r >> D >> x;
  solve(r, D, x);
  return 0;
}
