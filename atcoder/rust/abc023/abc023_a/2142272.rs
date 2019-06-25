// Contest ID: abc023
// Problem ID: abc023_a ( https://atcoder.jp/contests/abc023/tasks/abc023_a )
// Title: A. 加算王
// Language: Rust (1.15.1)
// Submitted: 2018-02-28 06:39:03 +0000 UTC ( https://atcoder.jp/contests/abc023/submissions/2142272 ) 

use std::io;

fn gets() -> String {
    let mut buf = String::new();
    io::stdin().read_line(&mut buf).ok();
    buf
}

fn main() {
    let line = gets();
    let mut x = line.trim().parse::<i32>().unwrap();
    let mut ans = 0;
    loop {
        ans += x % 10;
        x /= 10;
        if x == 0 {
            break;
        }
    }
    println!("{}", ans);
}
