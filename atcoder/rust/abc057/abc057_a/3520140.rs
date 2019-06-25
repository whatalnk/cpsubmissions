// Contest ID: abc057
// Problem ID: abc057_a ( https://atcoder.jp/contests/abc057/tasks/abc057_a )
// Title: A. Remaining Time
// Language: Rust (1.15.1)
// Submitted: 2018-11-02 09:52:43 +0000 UTC ( https://atcoder.jp/contests/abc057/submissions/3520140 ) 

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
    if a + b >= 24 {
        println!("{}", a + b - 24);
    } else {
        println!("{}", a + b);
    }
}
