// Contest ID: abc061
// Problem ID: abc061_a ( https://atcoder.jp/contests/abc061/tasks/abc061_a )
// Title: A. Between Two Integers
// Language: Rust (1.15.1)
// Submitted: 2017-07-31 12:01:22 +0000 UTC ( https://atcoder.jp/contests/abc061/submissions/1474503 ) 

use std::io;
use std::str::FromStr;

fn main() {
    let stdin = io::stdin();
    let mut buf = String::new();
    stdin.read_line(&mut buf).ok();
    let mut it = buf.split_whitespace().map(|n| i64::from_str(n).unwrap());
    let (a, b, c) = (it.next().unwrap(), it.next().unwrap(),  it.next().unwrap());
    if c >= a && c <= b {
        println!("Yes");
    } else {
        println!("No");
    }
}
