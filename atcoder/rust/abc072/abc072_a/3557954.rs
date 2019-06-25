// Contest ID: abc072
// Problem ID: abc072_a ( https://atcoder.jp/contests/abc072/tasks/abc072_a )
// Title: A. Sandglass2
// Language: Rust (1.15.1)
// Submitted: 2018-11-07 07:44:59 +0000 UTC ( https://atcoder.jp/contests/abc072/submissions/3557954 ) 

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
    let x = it.next().unwrap();
    let t = it.next().unwrap();
    if x < t {
        println!("0");
    } else {
        println!("{}", x - t)
    }
}
