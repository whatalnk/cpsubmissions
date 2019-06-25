// Contest ID: agc033
// Problem ID: agc033_a ( https://atcoder.jp/contests/agc033/tasks/agc033_a )
// Title: A. Darker and Darker
// Language: C++14 (Clang 3.8.0)
// Submitted: 2019-05-14 17:52:09 +0000 UTC ( https://atcoder.jp/contests/agc033/submissions/5402393 ) 

#include <algorithm>
#include <iostream>
#include <queue>
#include <string>

using namespace std;

const int MAX_H = 1000;
const int MAX_W = 1000;

typedef pair<int, int> P;
typedef pair<P, int> PP;

int H, W;
char field[MAX_H][MAX_W];
bool visited[MAX_H][MAX_W];
queue<PP> que;

int solve() {
  int cnt;
  PP pp;
  P p;
  int i, j, ni, nj;

  int di[4] = {-1, 0, 1, 0};
  int dj[4] = {0, 1, 0, -1};

  while (que.size()) {
    pp = que.front();
    que.pop();
    p = pp.first;
    cnt = pp.second;
    i = p.first;
    j = p.second;
    for (int d = 0; d < 4; d++) {
      ni = i + di[d];
      nj = j + dj[d];
      if (ni >= 0 && ni < H && nj >= 0 && nj < W && !visited[ni][nj] &&
          field[ni][nj] == '.') {
        que.push(make_pair(make_pair(ni, nj), cnt + 1));
        visited[ni][nj] = true;
        field[ni][nj] = '#';
      }
    }
  }
  return cnt;
}

int main() {
  cin >> H >> W;
  char cell;
  for (int i = 0; i < H; i++) {
    for (int j = 0; j < W; j++) {
      cin >> cell;
      if (cell == '#') {
        visited[i][j] = true;
        que.push(make_pair(make_pair(i, j), 0));
      } else {
        visited[i][j] = false;
      }
      field[i][j] = cell;
    }
  }
  cout << solve() << endl;
  return 0;
}
