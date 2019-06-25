// Contest ID: abc033
// Problem ID: abc033_a ( https://atcoder.jp/contests/abc033/tasks/abc033_a )
// Title: A. 暗証番号
// Language: Go (1.4.1)
// Submitted: 2016-02-18 07:19:58 +0000 UTC ( https://atcoder.jp/contests/abc033/submissions/639432 ) 

package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {
	scanner := bufio.NewScanner(os.Stdin)
	for scanner.Scan() {
		text := scanner.Text()
		n, err := strconv.Atoi(text)
		if err != nil {
			panic(err)
		}
		r := n % 1111
		if r == 0 {
			fmt.Println("SAME")
		} else {
			fmt.Println("DIFFERENT")
		}
	}
}
