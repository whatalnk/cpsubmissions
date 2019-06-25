// Contest ID: abc003
// Problem ID: abc003_1 ( https://atcoder.jp/contests/abc003/tasks/abc003_1 )
// Title: A. AtCoder社の給料
// Language: Rust (1.15.1)
// Submitted: 2018-02-25 08:04:19 +0000 UTC ( https://atcoder.jp/contests/abc003/submissions/2135056 ) 

use std::io;

fn gets() -> String {
    let mut buf = String::new();
    io::stdin().read_line(&mut buf).ok();
    buf
}

fn main() {
    let line = gets();
    let n = line.trim().parse::<usize>().unwrap();
    let mut s = n;
    for i in 1..n {
        s += i;
    }
    println!("{}", (s * 10000) as f32 / (n as f32));
}
