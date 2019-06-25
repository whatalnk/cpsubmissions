// Contest ID: abc004
// Problem ID: abc004_1 ( https://atcoder.jp/contests/abc004/tasks/abc004_1 )
// Title: A. 流行
// Language: Rust (1.15.1)
// Submitted: 2018-02-25 09:35:35 +0000 UTC ( https://atcoder.jp/contests/abc004/submissions/2135331 ) 

use std::io;

fn gets() -> String {
    let mut buf = String::new();
    io::stdin().read_line(&mut buf).ok();
    buf
}

fn main() {
    let line = gets();
    let n = line.trim().parse::<usize>().unwrap();
    println!("{}", 2 * n);
}
