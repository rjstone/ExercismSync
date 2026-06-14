module main

// I don't know why this tries to force you to use an array.
// A map is more efficient here due to hashing.
const colors_map := {
	'black': 0,
	'brown': 1,
	'red': 2,
	'orange': 3,
	'yellow': 4,
	'green': 5,
	'blue': 6,
	'violet': 7,
	'grey': 8,
	'white': 9,
}

// This is included because the tests are bad.
const colors := [
	'black',
	'brown',
	'red',
	'orange',
	'yellow',
	'green',
	'blue',
	'violet',
	'grey',
	'white',
]

fn color_code(color string) int {
	return colors_map[color] or { error('No such resistor color "${color}".') }
}
