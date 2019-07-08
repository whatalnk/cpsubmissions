// Contest ID: abc122
// Problem ID: abc122_c ( https://atcoder.jp/contests/abc122/tasks/abc122_c )
// Title: C. GeT AC
// Language: C++14 (Clang 3.8.0)
// Submitted: 2019-06-29 04:10:02 +0000 UTC ( https://atcoder.jp/contests/abc122/submissions/6153822 ) 

#include <algorithm>
#include <iostream>
#include <queue>
#include <stdio.h>
#include <string>

using namespace std;

int main() {
  int N, Q;
  cin >> N >> Q;
  string S;
  cin >> S;
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
    scanf("%d %d", &l, &r);
    printf("%d\n", tt[r - 1] - tt[l - 1]);
  }
  return 0;
}
