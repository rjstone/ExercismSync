module main

const strmap := {
	3: 'Pling',
	5: 'Plang',
	7: 'Plong'
}

fn raindrops(number int) string {
	mut s := []string{}
	for k in strmap.keys() {
		if number % k == 0 { s << strmap[k] }
	}
	if s.len > 0 {
		return s.join('')
	} else {
		return number.str()
	}
}
