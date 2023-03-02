package main

import (
	"fmt"

	"github.com/sgtcodfish/gotest-one/cmd/app"
)

func main() {
	fmt.Println(app.Transformer("'n ijsberg"))
	//fmt.Println(caser.Dutch("'n ijsberg"))
	//fmt.Println(caser.Turkish("not i with dot"))
}
