// Contest ID: abc122
// Problem ID: abc122_c ( https://atcoder.jp/contests/abc122/tasks/abc122_c )
// Title: C. GeT AC
// Language: C++14 (Clang 3.8.0)
// Submitted: 2019-06-29 04:13:37 +0000 UTC ( https://atcoder.jp/contests/abc122/submissions/6153855 ) 

#include <algorithm>
#include <iostream>
#include <queue>
#include <stdio.h>
#include <string>

using namespace std;

void solve(int N, int Q, string S) {
  vector<int> t(N + 1, 0);
  for (int i = 0; i < N; i++) {
    if (S[i] == 'A' && S[i + 1] == 'C') {
      t[i] = 1;
    }
  }
  vector<int> tt(N + 1, 0);
  for (int i = 0; i < N; i++) {
    tt[i + 1] = tt[i] + t[i];
  }
  int l, r;
  for (int i = 0; i < Q; i++) {
    cin >> l >> r;
    cout << tt[r - 1] - tt[l - 1] << endl;
    ;
  }
}
int main() {
  int N, Q;
  cin >> N >> Q;
  string S;
  cin >> S;

  solve(N, Q, S);
  return 0;
}
