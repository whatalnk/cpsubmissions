// Contest ID: abc014
// Problem ID: abc014_1 ( https://atcoder.jp/contests/abc014/tasks/abc014_1 )
// Title: A. けんしょう先生のお菓子配り
// Language: Rust (1.15.1)
// Submitted: 2018-02-26 13:01:24 +0000 UTC ( https://atcoder.jp/contests/abc014/submissions/2138460 ) 

use std::io;

fn gets() -> String {
    let mut buf = String::new();
    io::stdin().read_line(&mut buf).ok();
    buf
}

fn main() {
    let line = gets();
    let a = line.trim().parse::<i32>().unwrap();
    let line = gets();
    let b = line.trim().parse::<i32>().unwrap();
    println!("{}", (b - (a % b)) % b);
}
