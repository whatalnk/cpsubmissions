// Contest ID: abc109
// Problem ID: abc109_b ( https://atcoder.jp/contests/abc109/tasks/abc109_b )
// Title: B. Shiritori
// Language: C++14 (Clang 3.8.0)
// Submitted: 2019-07-15 13:31:57 +0000 UTC ( https://atcoder.jp/contests/abc109/submissions/6398543 ) 

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

void solve(int N, vector<string> W) {
  map<string, bool> m;
  m[W[0]] = true;
  for (int i = 0; i < N - 1; i++) {
    char &a = W[i].back();
    char &b = W[i + 1].front();
    if (a == b && (m.find(W[i + 1]) == m.end())) {
      m[W[i + 1]] = true;
      continue;
    } else {
      printf("No\n");
      return;
    }
  }
  printf("Yes\n");
}

int main() {
  int N;
  cin >> N;
  vector<string> W(N);
  for (int i = 0; i < N; i++) {
    cin >> W[i];
  }
  solve(N, W);
  return 0;
}