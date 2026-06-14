module main

// Would be much easier to do this with a regex
// but I wanted to try optimizing more for space and speed.
fn abbreviate(phrase string) string {
	mut phrase_a := phrase.to_upper().split('')
	mut acro := []string{}
	for i, s in phrase_a {
		if !s.is_upper() && s != ' ' && s != '-' { phrase_a.delete(i) }
	}
	acro << phrase_a[0]
	for i in 0..phrase_a.len - 1 {
		if (phrase_a[i] == ' ' || phrase_a[i] == '-') && phrase_a[i+1].is_upper() {
			acro << phrase_a[i+1].to_upper()
		}
	}
	return acro.join('')
}