module main

// avoid using math.pow by doing logical left shift to multiply by 2^n

fn grains_on_square(square int) !u64 {
    if square < 1 || square > 64 { return error('square=${square} is out of range') }
    return u64(1) << int(square-1)
}

// shorter, looks cool, not necessarily faster
// anonymous function can't recurse
fn grains_upto(square int) u64 {
    return u64(if square == 1 { 1 } else { grains_upto(square-1) + grains_on_square(square) or { panic('ouch') } })
}

fn total_grains_on_board() u64 {
    return grains_upto(64)
}
