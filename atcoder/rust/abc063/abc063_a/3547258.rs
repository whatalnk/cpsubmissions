// Contest ID: abc063
// Problem ID: abc063_a ( https://atcoder.jp/contests/abc063/tasks/abc063_a )
// Title: A. Restricted
// Language: Rust (1.15.1)
// Submitted: 2018-11-05 08:41:21 +0000 UTC ( https://atcoder.jp/contests/abc063/submissions/3547258 ) 

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
    if a + b < 10 {
        println!("{}", a + b);
    } else {
        println!("error");
    }
}
