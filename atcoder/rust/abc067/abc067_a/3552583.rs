// Contest ID: abc067
// Problem ID: abc067_a ( https://atcoder.jp/contests/abc067/tasks/abc067_a )
// Title: A. Sharing Cookies
// Language: Rust (1.15.1)
// Submitted: 2018-11-06 07:58:12 +0000 UTC ( https://atcoder.jp/contests/abc067/submissions/3552583 ) 

use std::io;

fn gets() -> String {
    let mut buf = String::new();
    io::stdin().read_line(&mut buf).ok();
    buf
}

fn main() {
    let line = gets();
    let mut it = line
        .trim()
        .split_whitespace()
        .map(|x| x.parse::<i32>().unwrap());
    let a = it.next().unwrap();
    let b = it.next().unwrap();
    if a % 3 == 0 || b % 3 == 0 || (a + b) % 3 == 0 {
        println!("Possible");
    } else {
        println!("Impossible");
    }
}
