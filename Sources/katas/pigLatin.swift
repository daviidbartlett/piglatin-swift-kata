

func pigLatin (string: String) -> String{
    guard string != "" else {
        return ""
    }
    let vowels = ["a","e","i","o","u"]
    let words = string.split(separator: " ")
    print(words)
    let pigWords = words.map{ (word: Substring) -> String in
        if vowels.contains(String(word.prefix(1))){
            return "\(word)way"
        } else{
            return "\(word.suffix(word.count - 1))\(word.prefix(1))ay"
        }
    }
    print(pigWords)
    return pigWords.joined(separator: " ")
}
