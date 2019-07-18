// Contest ID: abc112
// Problem ID: abc112_a ( https://atcoder.jp/contests/abc112/tasks/abc112_a )
// Title: A. Programming Education
// Language: C++14 (Clang 3.8.0)
// Submitted: 2019-07-10 13:53:18 +0000 UTC ( https://atcoder.jp/contests/abc112/submissions/6334685 ) 

#include <algorithm>
#include <iostream>
#include <vector>

using namespace std;

void solve(int N) {
  if (N == 1) {
    printf("Hello World\n");
  } else {
    int A, B;
    cin >> A >> B;
    printf("%d\n", A + B);
  }
}

int main() {
  int N;
  cin >> N;
  solve(N);
  return 0;
}
