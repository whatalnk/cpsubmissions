// Contest ID: abc011
// Problem ID: abc011_1 ( https://atcoder.jp/contests/abc011/tasks/abc011_1 )
// Title: A. 来月は何月？
// Language: Rust (1.15.1)
// Submitted: 2018-02-26 12:43:22 +0000 UTC ( https://atcoder.jp/contests/abc011/submissions/2138400 ) 

use std::io;

fn gets() -> String {
    let mut buf = String::new();
    io::stdin().read_line(&mut buf).ok();
    buf
}

fn main() {
    let line = gets();
    let n = line.trim().parse::<u32>().unwrap();
    println!("{}", n % 12 + 1);
}
