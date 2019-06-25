// Contest ID: abc131
// Problem ID: abc131_b ( https://atcoder.jp/contests/abc131/tasks/abc131_b )
// Title: B. Bite Eating
// Language: C++14 (Clang 3.8.0)
// Submitted: 2019-06-22 13:02:40 +0000 UTC ( https://atcoder.jp/contests/abc131/submissions/6073451 ) 

#include <algorithm>
#include <iostream>
#include <queue>
#include <string>

using namespace std;

static int N, L;
int solve();

int solve() {
  int taste = L * N + (N + 1) * N / 2 - N;
  if (L + N <= 0) {
    taste -= (L + N - 1);
  } else if (L <= 0) {
    taste -= 0;
  } else {
    taste -= L;
  }
  return taste;
}

int main() {
  cin >> N >> L;
  cout << solve() << endl;
  return 0;
}
