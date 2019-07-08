// Contest ID: abc129
// Problem ID: abc129_d ( https://atcoder.jp/contests/abc129/tasks/abc129_d )
// Title: D. Lamp
// Language: C++14 (Clang 3.8.0)
// Submitted: 2019-06-29 05:52:59 +0000 UTC ( https://atcoder.jp/contests/abc129/submissions/6154724 ) 

#include <algorithm>
#include <iostream>
#include <queue>
#include <stdio.h>
#include <string>

using namespace std;

void solve(int H, int W, vector<vector<string>> room) {
  vector<vector<int>> U(H);
  for (int i = 0; i < H; i++) {
    U[i].resize(W);
  }
  for (int j = 0; j < W; j++) {
    for (int i = 0; i < H; i++) {
      if (room[i][j] == "#") {
        U[i][j] = 0;
      } else if (i == 0) {
        U[i][j] = 1;
      } else {
        U[i][j] = U[i - 1][j] + 1;
      }
    }
  }

  vector<vector<int>> D(H);
  for (int i = 0; i < H; i++) {
    D[i].resize(W);
  }
  for (int j = 0; j < W; j++) {
    for (int i = H - 1; i >= 0; i--) {
      if (room[i][j] == "#") {
        D[i][j] = 0;
      } else if (i == H - 1) {
        D[i][j] = 1;
      } else {
        D[i][j] = D[i + 1][j] + 1;
      }
    }
  }

  vector<vector<int>> L(H);
  for (int i = 0; i < H; i++) {
    L[i].resize(W);
    for (int j = 0; j < W; j++) {
      if (room[i][j] == "#") {
        L[i][j] = 0;
      } else if (j == 0) {
        L[i][j] = 1;
      } else {
        L[i][j] = L[i][j - 1] + 1;
      }
    }
  }

  vector<vector<int>> R(H);
  for (int i = 0; i < H; i++) {
    R[i].resize(W);
    for (int j = W - 1; j >= 0; j--) {
      if (room[i][j] == "#") {
        R[i][j] = 0;
      } else if (j == W - 1) {
        R[i][j] = 1;
      } else {
        R[i][j] = R[i][j + 1] + 1;
      }
    }
  }
  int ans = 0;
  for (int i = 0; i < H; i++) {
    for (int j = 0; j < W; j++) {
      ans = max(ans, U[i][j] + D[i][j] + L[i][j] + R[i][j] - 3);
    }
  }
  printf("%d\n", ans);
}

int main() {
  int H, W;
  scanf("%d %d", &H, &W);
  vector<vector<string>> room(H);
  for (int i = 0; i < H; i++) {
    room[i].resize(W);
    string row;
    cin >> row;
    for (int j = 0; j < W; j++) {
      room[i][j] = row[j];
    }
  }
  solve(H, W, room);
  return 0;
}