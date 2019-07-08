// Contest ID: abc132
// Problem ID: abc132_c ( https://atcoder.jp/contests/abc132/tasks/abc132_c )
// Title: C. Divide the Problems
// Language: C++14 (Clang 3.8.0)
// Submitted: 2019-06-29 12:19:50 +0000 UTC ( https://atcoder.jp/contests/abc132/submissions/6169684 ) 

#include <algorithm>
#include <iostream>
#include <queue>
#include <queue>
#include <stdio.h>
#include <string>

using namespace std;

void solve(int N, vector<int> d) {
  sort(d.begin(), d.end());
  int l = d[N / 2 - 1];
  int r = d[N / 2];
  cout << r - l << endl;
}

int main() {
  int N;
  cin >> N;
  vector<int> d(N);
  for (int i = 0; i < N; i++) {
    cin >> d[i];
  }
  solve(N, d);
  return 0;
}