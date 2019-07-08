// Contest ID: abc114
// Problem ID: abc114_c ( https://atcoder.jp/contests/abc114/tasks/abc114_c )
// Title: C. 755
// Language: C++14 (Clang 3.8.0)
// Submitted: 2019-07-08 02:36:55 +0000 UTC ( https://atcoder.jp/contests/abc114/submissions/6306338 ) 

#include <algorithm>
#include <cmath>
#include <cstdio>
#include <iostream>
#include <map>
#include <queue>
#include <string>

using namespace std;
static int N;

bool find_str(string s) {
  if (s.find("7") != string::npos && s.find("5") != string::npos &&
      s.find("3") != string::npos) {
    return true;
  } else {
    return false;
  }
}

int dfs(string s) {
  if (stoll(s) > N) {
    return 0;
  }
  int ret;
  if (find_str(s)) {
    ret = 1;
  } else {
    ret = 0;
  }
  for (string c : {"7", "5", "3"}) {
    ret += dfs(s + c);
  }
  return ret;
}

void solve(int N) {
  int ans = dfs("0");
  printf("%d\n", ans);
}

int main() {
  cin >> N;
  solve(N);
  return 0;
}