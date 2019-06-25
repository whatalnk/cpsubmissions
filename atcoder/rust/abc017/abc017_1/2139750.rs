// Contest ID: abc017
// Problem ID: abc017_1 ( https://atcoder.jp/contests/abc017/tasks/abc017_1 )
// Title: A. プロコン
// Language: Rust (1.15.1)
// Submitted: 2018-02-27 04:17:35 +0000 UTC ( https://atcoder.jp/contests/abc017/submissions/2139750 ) 

use std::io;

fn gets() -> String {
    let mut buf = String::new();
    io::stdin().read_line(&mut buf).ok();
    buf
}

fn main() {
    let mut ans = 0;
    for _ in 0..3 {
        let line = gets();
        let mut it = line.trim()
            .split_whitespace()
            .map(|x| x.parse::<i32>().unwrap());
        let (s, e) = (it.next().unwrap(), it.next().unwrap());
        ans += s * e
    }
    println!("{}", ans / 10);
}
