module main

fn response(hey_bob string) string {
    hey_bob_trim := hey_bob.trim_space()

    is_question := hey_bob_trim.ends_with('?')
    is_yell := hey_bob_trim == hey_bob.to_upper() && hey_bob.contains_any('ABCDEFGHIJKLMNOPQURSTUVWXYZ')
    is_silence := hey_bob_trim.is_blank()
    
    return match true {
        is_question && is_yell { "Calm down, I know what I'm doing!" }
        is_yell { 'Whoa, chill out!' }
        is_question { "Sure." }
        is_silence { "Fine. Be that way!" }
        else { "Whatever." }
    }
}
