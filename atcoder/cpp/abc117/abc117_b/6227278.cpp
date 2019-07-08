// Contest ID: abc117
// Problem ID: abc117_b ( https://atcoder.jp/contests/abc117/tasks/abc117_b )
// Title: B. Polygon
// Language: C++14 (Clang 3.8.0)
// Submitted: 2019-07-03 12:48:06 +0000 UTC ( https://atcoder.jp/contests/abc117/submissions/6227278 ) 

#include <algorithm>
#include <iostream>
#include <map>
#include <queue>
#include <stdio.h>
#include <string>

using namespace std;

void solve(int N, vector<int> l) {
  int lsum = 0;
  for (int i = 0; i < N; i++) {
    lsum += l[i];
  }
  int lmax = *max_element(l.begin(), l.end());
  if (lmax < lsum - lmax) {
    printf("Yes\n");
  } else {
    printf("No\n");
  }
}

int main() {
  int N;
  cin >> N;
  vector<int> l(N);
  for (int i = 0; i < N; i++) {
    cin >> l[i];
  }
  solve(N, l);
  return 0;
}