// Contest ID: abc062
// Problem ID: abc062_a ( https://atcoder.jp/contests/abc062/tasks/abc062_a )
// Title: A. Grouping
// Language: Rust (1.15.1)
// Submitted: 2018-11-05 08:38:50 +0000 UTC ( https://atcoder.jp/contests/abc062/submissions/3547232 ) 

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
    let x = it.next().unwrap();
    let y = it.next().unwrap();
    let g1 = vec![1, 3, 5, 7, 8, 10, 12];
    let g2 = vec![4, 6, 9, 11];
    let g3 = vec![2];
    if g1.contains(&x) && g1.contains(&y) {
        println!("Yes");
    } else if g2.contains(&x) && g2.contains(&y) {
        println!("Yes");
    } else if g3.contains(&x) && g3.contains(&y) {
        println!("Yes");
    } else {
        println!("No");
    }
}
