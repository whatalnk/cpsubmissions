// Contest ID: abc061
// Problem ID: abc061_b ( https://atcoder.jp/contests/abc061/tasks/abc061_b )
// Title: B. Counting Roads
// Language: Rust (1.15.1)
// Submitted: 2017-07-31 12:28:50 +0000 UTC ( https://atcoder.jp/contests/abc061/submissions/1474534 ) 

use std::io;
use std::str::FromStr;

fn main() {
    let stdin = io::stdin();
    let mut buf = String::new();
    stdin.read_line(&mut buf).ok();
    let mut it = buf.split_whitespace().map(|n| usize::from_str(n).unwrap());
    let (n, m) = (it.next().unwrap(), it.next().unwrap());
    let mut v = vec![0; n + 1];
    for _ in 0..m {
        let mut buf = String::new();
        stdin.read_line(&mut buf).ok();
        let mut it = buf.split_whitespace().map(|n| usize::from_str(n).unwrap());
        let (a, b) = (it.next().unwrap(), it.next().unwrap());
        v[a] += 1;
        v[b] += 1;
    }
    for i in 1..(n+1) {
        println!("{}", v[i]);
    }
}
