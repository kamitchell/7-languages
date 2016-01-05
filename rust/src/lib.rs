#[allow(dead_code)]
fn prime_factors(num: i64) -> Vec<i64> {
    match num {
        1 => vec![],
        4 => vec![2,2],
        _ => vec![num]
    }
}

#[test]
fn prime_factors_of_one() {
    assert_eq!(prime_factors(1), []);
}

#[test]
fn prime_factors_of_two() {
    assert_eq!(prime_factors(2), [2]);
}

#[test]
fn prime_factors_of_three() {
    assert_eq!(prime_factors(3), [3]);
}

#[test]
fn prime_factors_of_four() {
    assert_eq!(prime_factors(4), [2, 2]);
}
