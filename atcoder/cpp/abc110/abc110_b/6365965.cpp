// Contest ID: abc110
// Problem ID: abc110_b ( https://atcoder.jp/contests/abc110/tasks/abc110_b )
// Title: B. 1 Dimensional World's Tale
// Language: C++14 (Clang 3.8.0)
// Submitted: 2019-07-14 04:00:42 +0000 UTC ( https://atcoder.jp/contests/abc110/submissions/6365965 ) 

#include <algorithm>
#include <cmath>
#include <cstdio>
#include <iomanip>
#include <iostream>
#include <map>
#include <queue>
#include <sstream>
#include <string>

using namespace std;

void solve(int N, int M, int X, int Y, vector<int> x, vector<int> y) {
  int xmax = *max_element(x.begin(), x.end());
  int ymin = *min_element(y.begin(), y.end());
  xmax = max(xmax, X);
  ymin = min(ymin, Y);
  if (xmax < ymin) {
    printf("No War\n");
  } else {
    printf("War\n");
  }
}

int main() {
  int N, M, X, Y;
  cin >> N >> M >> X >> Y;
  vector<int> x(N);
  vector<int> y(M);

  for (int i = 0; i < N; i++) {
    cin >> x[i];
  }
  for (int i = 0; i < M; i++) {
    cin >> y[i];
  }
  solve(N, M, X, Y, x, y);
  return 0;
}