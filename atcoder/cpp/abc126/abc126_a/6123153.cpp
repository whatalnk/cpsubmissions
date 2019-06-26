// Contest ID: abc126
// Problem ID: abc126_a ( https://atcoder.jp/contests/abc126/tasks/abc126_a )
// Title: A. Changing a Character
// Language: C++14 (Clang 3.8.0)
// Submitted: 2019-06-26 01:17:22 +0000 UTC ( https://atcoder.jp/contests/abc126/submissions/6123153 ) 

#include <algorithm>
#include <iostream>
#include <queue>
#include <string>

using namespace std;

void solve();

void solve(int N, int K, string S) {
  char x = tolower(S[K - 1]);
  S[K - 1] = x;
  cout << S << endl;
}

int main() {
  int N, K;
  cin >> N >> K;
  string S;
  cin >> S;
  solve(N, K, S);
  return 0;
}
