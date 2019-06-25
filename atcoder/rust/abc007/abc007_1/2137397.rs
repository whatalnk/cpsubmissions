// Contest ID: abc007
// Problem ID: abc007_1 ( https://atcoder.jp/contests/abc007/tasks/abc007_1 )
// Title: A. 植木算
// Language: Rust (1.15.1)
// Submitted: 2018-02-26 05:11:21 +0000 UTC ( https://atcoder.jp/contests/abc007/submissions/2137397 ) 

use std::io;

fn gets() -> String {
    let mut buf = String::new();
    io::stdin().read_line(&mut buf).ok();
    buf
}

fn main() {
    let line = gets();
    let n = line.trim().parse::<i32>().unwrap();
    println!("{}", n - 1);
}
