// Contest ID: abc075
// Problem ID: abc075_a ( https://atcoder.jp/contests/abc075/tasks/abc075_a )
// Title: A. One out of Three
// Language: Rust (1.15.1)
// Submitted: 2018-11-10 06:29:38 +0000 UTC ( https://atcoder.jp/contests/abc075/submissions/3573785 ) 

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
    let c = it.next().unwrap();
    if a == b {
        println!("{}", c);
    } else if b == c {
        println!("{}", a);
    } else {
        println!("{}", b);
    }
}
