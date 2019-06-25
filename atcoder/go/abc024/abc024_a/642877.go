// Contest ID: abc024
// Problem ID: abc024_a ( https://atcoder.jp/contests/abc024/tasks/abc024_a )
// Title: A. 動物園
// Language: Go (1.4.1)
// Submitted: 2016-02-23 07:51:53 +0000 UTC ( https://atcoder.jp/contests/abc024/submissions/642877 ) 

package main

import "fmt"

func main() {
	var a, b, c, k, s, t int
	fmt.Scan(&a)
	fmt.Scan(&b)
	fmt.Scan(&c)
	fmt.Scan(&k)
	fmt.Scan(&s)
	fmt.Scan(&t)
	if (s + t) >= k {
		a -= c
		b -= c
	}
	fmt.Println(a*s + b*t)
}
