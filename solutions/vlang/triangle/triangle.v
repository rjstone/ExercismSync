module main

fn is_isosceles(a f64, b f64, c f64) bool {
	return (a == b && c < a+b) || (b == c && a < b+c) || (c == a && b < a+c)
}

fn is_equilateral(a f64, b f64, c f64) bool {
	return a == b && b == c && c == a
}

fn is_degenerate(a f64, b f64, c f64) bool {
	return a > b+c || b > a+c || c > a+b
}

fn is_scalene(a f64, b f64, c f64) bool {
	return a != b && b != c && c != a && !is_degenerate(a,b,c)
}
