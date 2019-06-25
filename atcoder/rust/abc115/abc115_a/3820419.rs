// Contest ID: abc115
// Problem ID: abc115_a ( https://atcoder.jp/contests/abc115/tasks/abc115_a )
// Title: A. Christmas Eve Eve Eve
// Language: Rust (1.15.1)
// Submitted: 2018-12-18 14:42:39 +0000 UTC ( https://atcoder.jp/contests/abc115/submissions/3820419 ) 

use std::io;

fn gets() -> String {
    let mut buf = String::new();
    io::stdin().read_line(&mut buf).ok();
    buf
}

fn main() {
    let line = gets();
    let n = line.trim().parse::<usize>().unwrap();
    let mut v = vec![];
    v.push("Christmas");
    for _ in 0..(25 - n) {
        v.push("Eve");
    }
    println!("{}", v.join(" "));
}
