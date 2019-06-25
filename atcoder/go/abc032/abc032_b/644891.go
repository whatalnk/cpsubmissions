// Contest ID: abc032
// Problem ID: abc032_b ( https://atcoder.jp/contests/abc032/tasks/abc032_b )
// Title: B. 高橋君とパスワード
// Language: Go (1.4.1)
// Submitted: 2016-02-26 11:58:14 +0000 UTC ( https://atcoder.jp/contests/abc032/submissions/644891 ) 

package main

import (
	"fmt"
	"os"
	"unicode/utf8"
)

func main() {
	var s string
	var k int
	fmt.Scan(&s)
	fmt.Scan(&k)
	n := utf8.RuneCountInString(s)
	if k > n {
		fmt.Println(0)
		os.Exit(0)
	}
	n = n - k + 1
	pswds := make(map[string]int)
	for i := 0; i < n; i++ {
		pswds[s[i:(i+k)]] += 1
	}
	fmt.Println(len(pswds))
}
