// Contest ID: abc022
// Problem ID: abc022_a ( https://atcoder.jp/contests/abc022/tasks/abc022_a )
// Title: A. Best Body
// Language: Rust (1.15.1)
// Submitted: 2018-02-28 06:33:16 +0000 UTC ( https://atcoder.jp/contests/abc022/submissions/2142263 ) 

use std::io;

fn gets() -> String {
    let mut buf = String::new();
    io::stdin().read_line(&mut buf).ok();
    buf
}

fn main() {
    let line = gets();
    let mut it = line.trim()
        .split_whitespace()
        .map(|x| x.parse::<i32>().unwrap());
    let (n, s, t) = (it.next().unwrap(), it.next().unwrap(), it.next().unwrap());
    let n = n as usize;
    let line = gets();
    let mut w = line.trim().parse::<i32>().unwrap();
    let mut ans = 0;
    if w >= s && w <= t {
        ans += 1;
    }
    for _ in 0..(n - 1) {
        let line = gets();
        let a = line.trim().parse::<i32>().unwrap();
        w += a;
        if w >= s && w <= t {
            ans += 1;
        }
    }
    println!("{}", ans)
}
