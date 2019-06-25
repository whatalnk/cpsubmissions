// Contest ID: abc067
// Problem ID: abc067_a ( https://atcoder.jp/contests/abc067/tasks/abc067_a )
// Title: A. Sharing Cookies
// Language: Rust (1.15.1)
// Submitted: 2017-07-28 08:18:06 +0000 UTC ( https://atcoder.jp/contests/abc067/submissions/1456645 ) 

use std::io;
use std::str::FromStr;

fn main() {
    let stdin = io::stdin();
    let mut buf = String::new();
    stdin.read_line(&mut buf).ok();
    let mut it = buf.split_whitespace()
        .map(|n| i64::from_str(n).unwrap());
    let (a, b) = (it.next().unwrap(), it.next().unwrap());
    if a % 3 == 0 || b % 3 == 0 || (a + b) % 3 == 0 {
        println!("Possible");
    } else {
        println!("Impossible");
    }
}