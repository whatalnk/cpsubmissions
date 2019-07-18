// Contest ID: abc108
// Problem ID: abc108_b ( https://atcoder.jp/contests/abc108/tasks/abc108_b )
// Title: B. Ruined Square
// Language: C++14 (Clang 3.8.0)
// Submitted: 2019-07-16 02:21:28 +0000 UTC ( https://atcoder.jp/contests/abc108/submissions/6402356 ) 

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

void solve(int x1, int y1, int x2, int y2) {
  vector<int> rot = {0, -1, 1, 0};
  vector<int> v1 = {x2 - x1, y2 - y1};
  vector<int> v2 = {rot[0] * v1[0] + rot[1] * v1[1],
                    rot[2] * v1[0] + rot[3] * v1[1]};
  vector<int> p3 = {x2 + v2[0], y2 + v2[1]};
  vector<int> v3 = {rot[0] * v2[0] + rot[1] * v2[1],
                    rot[2] * v2[0] + rot[3] * v2[1]};
  vector<int> p4 = {p3[0] + v3[0], p3[1] + v3[1]};

  printf("%d %d %d %d\n", p3[0], p3[1], p4[0], p4[1]);
}

int main() {
  int x1, y1, x2, y2;
  cin >> x1 >> y1 >> x2 >> y2;
  solve(x1, y1, x2, y2);
  return 0;
}