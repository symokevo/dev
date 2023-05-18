package main 

import "fmt"

type dog struct {
	name string
	breed string
	age int
}

func main() {
	pet := dog{
		name: "Maximus",
		breed: "Rottweiler",
		age: 5,
	}

	fmt.Println("%+v", pet)
}