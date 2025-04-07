package utils

import (
	"time"
	"std"
)

// var users map[address]bool

func Snoopy() string {
	var asciiArt = `
⠀⠀⠀⠀⠀⢀⣀⣤⣤⣀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⢠⠞⠉⠀⠀⠀⠀⠙⢷⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⢠⠃⠀⠀⠀⠀⠀⠀⠀⠀⠙⠳⠦⠤⠖⠒⠒⠲⠦⣄⡀⠀⠀⠀⠀⠀
⠀⢀⠏⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡄⠀⠀⠀⠀⠀⠀⠀⠀⠙⠷⣄⠀⠀⠀
⠀⡜⢰⣷⣤⠀⠀⠀⠀⠀⠀⠀⠘⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⣆⠀⠀
⢰⠃⣿⣿⣿⣦⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢹⠖⢦
⢸⠀⣿⣿⣟⣿⣧⠱⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣸⣶⡾
⢸⡄⢿⣿⣿⣿⣿⡆⢳⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣠⡾⠋⠉⠁
⠀⢳⡌⢿⣿⣿⣿⡇⢸⠖⠤⣄⠀⠀⠀⡴⠞⠋⠉⠉⠉⠉⠉⠀⠀⠀⠀⠀
⠀⠀⠙⢷⣍⣛⣛⣡⡞⠀⠀⠈⢷⠀⣸⣇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠉⠉⠁⠀⠀⠀⠸⣿⠛⠋⠹⣆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡟⠀⠀⠀⠈⠛⣦⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡞⡅⠀⢰⠀⠀⠀⠈⣧⠀⠀⠀⠀⠀⠀⠀⠀
`
	return asciiArt
}

func RandomInt(max int) int {
	nano := time.Now().UnixNano()
	mixed := nano ^ (nano >> 32)

	if mixed < 0 {
		mixed = -mixed
	}

	return int(mixed % int64(max))
}

func GetCaller() string {
	caller := std.PreviousRealm().Address()
	return caller.String()
}
