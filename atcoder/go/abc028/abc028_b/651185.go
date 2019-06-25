// Contest ID: abc028
// Problem ID: abc028_b ( https://atcoder.jp/contests/abc028/tasks/abc028_b )
// Title: B. 文字数カウント
// Language: Go (1.4.1)
// Submitted: 2016-03-03 04:07:10 +0000 UTC ( https://atcoder.jp/contests/abc028/submissions/651185 ) 

package main

import "fmt"

func main() {
	var s string
	fmt.Scan(&s)
	d := map[string]int{}
	for _, c := range s {
		d[string(c)]++
	}
	keys := []string{"A", "B", "C", "D", "E", "F"}
	for i, v := range keys {
		if i > 0 {
			fmt.Print(" ")
		}
		fmt.Print(d[v])
	}
	fmt.Println()
}
