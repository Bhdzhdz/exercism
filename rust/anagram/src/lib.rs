use std::collections::{HashMap, HashSet};

use itertools::*;

fn anagram_encoding(word: &str) -> HashMap<char, usize> {
    word.to_lowercase().chars().counts()
}

pub fn anagrams_for<'a>(word: &str, possible_anagrams: &[&'a str]) -> HashSet<&'a str> {
    let word_encoded = anagram_encoding(word);
    let word_to_lowercase = word.to_lowercase();

    possible_anagrams
        .iter()
        .filter(|possible_anagram| {
            (possible_anagram.to_lowercase() != word_to_lowercase)
                && anagram_encoding(possible_anagram) == word_encoded
        })
        .copied()
        .collect()
}
