// Contest ID: abc032
// Problem ID: abc032_a ( https://atcoder.jp/contests/abc032/tasks/abc032_a )
// Title: A. 高橋君と青木君の好きな数
// Language: Go (1.4.1)
// Submitted: 2016-02-19 01:53:11 +0000 UTC ( https://atcoder.jp/contests/abc032/submissions/639853 ) 

package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var scanner = bufio.NewScanner(os.Stdin)

func gets() string {
	var text string
	if scanner.Scan() {
		text = scanner.Text()
	}
	return text
}

func main() {
	a, _ := strconv.Atoi(gets())
	b, _ := strconv.Atoi(gets())
	n, _ := strconv.Atoi(gets())
	if a < b {
		tmp := a
		a = b
		b = tmp
	}
	i := n / b
	for {
		m := i * b
		if (m >= n) && (m%a == 0) {
			fmt.Println(m)
			break
		} else {
			i++
		}
	}
}
