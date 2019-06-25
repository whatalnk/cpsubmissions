// Contest ID: abc075
// Problem ID: abc075_d ( https://atcoder.jp/contests/abc075/tasks/abc075_d )
// Title: D. Axis-Parallel Rectangle
// Language: Rust (1.15.1)
// Submitted: 2017-10-14 15:36:22 +0000 UTC ( https://atcoder.jp/contests/abc075/submissions/1685779 ) 

use std::io;
use std::cmp;

fn gets() -> String {
    let mut buf = String::new();
    io::stdin().read_line(&mut buf).ok();
    return buf
}

fn main() {
    let line = gets();
    let mut it = line.trim().split_whitespace().map(|n| n.parse::<usize>().unwrap());
    let (n, k) = (it.next().unwrap(), it.next().unwrap());
    let mut px = vec![0; n];
    let mut py = vec![0; n];
    let mut pxx = vec![0; n];
    let mut pyy = vec![0; n];
    for i in 0..n {
        let line = gets();
        let mut it = line.trim().split_whitespace().map(|n| n.parse::<i64>().unwrap());
        let (x, y) = (it.next().unwrap(), it.next().unwrap());
        px[i] = x;
        py[i] = y;
        pxx[i] = x;
        pyy[i] = y;
    }
    pxx.sort();
    pyy.sort();

    let mut ans = (pxx[n-1] - pxx[0]) * (pyy[n-1] - pyy[0]);
    for xi in 0..n {
        for xj in (xi + 1)..n {
            for yi in 0..n {
                for yj in (yi + 1)..n {
                    let lx = pxx[xi];
                    let rx = pxx[xj];
                    let by = pyy[yi];
                    let uy = pyy[yj];
                    let mut num = 0;
                    for i in 0..n {
                        if lx <= px[i] && rx >= px[i] && by <= py[i] && uy >= py[i] {
                            num += 1;
                        }
                    }
                    if num >= k {
                        let area = (rx - lx) * (uy - by);
                        ans = cmp::min(ans, area);
                    }
                } 
            }
        }
    }
    println!("{}", ans);
}