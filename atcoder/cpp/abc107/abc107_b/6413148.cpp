// Contest ID: abc107
// Problem ID: abc107_b ( https://atcoder.jp/contests/abc107/tasks/abc107_b )
// Title: B. Grid Compression
// Language: C++14 (Clang 3.8.0)
// Submitted: 2019-07-17 05:02:54 +0000 UTC ( https://atcoder.jp/contests/abc107/submissions/6413148 ) 

#include <algorithm>
#include <iostream>
#include <vector>

using namespace std;

void solve(int H, int W, vector<vector<int>> a) {
  vector<int> h;
  vector<int> w;
  for (int i = 0; i < H; i++) {
    int rowsum = 0;
    for (int j = 0; j < W; j++) {
      rowsum += a[i][j];
    }
    if (rowsum != 0) {
      h.push_back(i);
    }
  }
  for (int j = 0; j < W; j++) {
    int colsum = 0;
    for (int i = 0; i < H; i++) {
      colsum += a[i][j];
    }
    if (colsum != 0) {
      w.push_back(j);
    }
  }
  for (auto i : h) {
    string row = "";
    for (auto j : w) {
      if (a[i][j] == 1) {
        row += '#';
      } else {
        row += '.';
      }
    }
    if (row != "") {
      cout << row << endl;
    }
  }
}

int main() {
  int H, W;
  cin >> H >> W;
  vector<vector<int>> a(H);
  for (int i = 0; i < H; i++) {
    a[i].resize(W);
    for (int j = 0; j < W; j++) {
      char c;
      cin >> c;
      if (c == '#') {
        a[i][j] = 1;
      } else {
        a[i][j] = 0;
      }
    }
  }
  solve(H, W, a);
  return 0;
}
