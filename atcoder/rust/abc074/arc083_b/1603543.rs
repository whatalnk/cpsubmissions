// Contest ID: abc074
// Problem ID: arc083_b ( https://atcoder.jp/contests/abc074/tasks/arc083_b )
// Title: D. Restoring Road Network
// Language: Rust (1.15.1)
// Submitted: 2017-09-17 07:55:01 +0000 UTC ( https://atcoder.jp/contests/abc074/submissions/1603543 ) 

use std::io;

fn gets() -> String {
    let mut buf = String::new();
    io::stdin().read_line(&mut buf).ok();
    return buf
}

fn main() {
  let line = gets();
  let n = line.trim().parse::<usize>().unwrap();
  let mut a = vec![vec![0; n]; n];
  for i in 0..n {
    let line = gets();
    let x: Vec<i64> = line.trim().split_whitespace().map(|n| n.parse::<i64>().unwrap()).collect();
    for j in 0..n {
      a[i][j] = x[j];
    }
  }

  for k in 0..n {
    for i in 0..n {
      for j in 0..n {
        if a[i][k] + a[k][j] < a[i][j] {
          println!("-1");
          return;
        }
      }
    }
  }

  let mut flag = vec![vec![1; n]; n];
  for k in 0..n {
    for i in 0..n {
      for j in 0..n {
        if (i == j) || (j == k) || (k == i) {
          continue;
        }
        if a[i][k] + a[k][j] == a[i][j] {
          flag[i][j] = 0
        }
      }
    }
  }

  let mut ans = 0;
  for i in 0..n {
    for j in (i+1)..n {
      ans += a[i][j] * flag[i][j]
    }
  }
  println!("{}", ans);
}
