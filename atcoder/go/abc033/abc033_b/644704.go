// Contest ID: abc033
// Problem ID: abc033_b ( https://atcoder.jp/contests/abc033/tasks/abc033_b )
// Title: B. 町の合併
// Language: Go (1.4.1)
// Submitted: 2016-02-26 06:37:21 +0000 UTC ( https://atcoder.jp/contests/abc033/submissions/644704 ) 

package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var scanner = bufio.NewScanner(os.Stdin)

func nextInt() int {
	scanner.Scan()
	i, _ := strconv.Atoi(scanner.Text())
	return i
}
func nextStr() string {
	scanner.Scan()
	return scanner.Text()
}

func main() {
	scanner.Split(bufio.ScanWords)
	n := nextInt()
	var population int

	sp := make(map[string]int)

	for i := 0; i < n; i++ {
		s := nextStr()
		p := nextInt()
		sp[s] = p
		population += p
	}

	for s, p := range sp {
		if p*2 > population {
			fmt.Println(s)
			os.Exit(0)
		}
	}
	fmt.Println("atcoder")
}
