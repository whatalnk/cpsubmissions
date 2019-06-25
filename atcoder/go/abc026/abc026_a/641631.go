// Contest ID: abc026
// Problem ID: abc026_a ( https://atcoder.jp/contests/abc026/tasks/abc026_a )
// Title: A. 掛け算の最大値
// Language: Go (1.4.1)
// Submitted: 2016-02-20 11:34:17 +0000 UTC ( https://atcoder.jp/contests/abc026/submissions/641631 ) 

package main

import "fmt"

func main() {
	var a int
	fmt.Scan(&a)
	a /= 2
	fmt.Println(a * a)
}
