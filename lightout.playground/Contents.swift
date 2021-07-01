import UIKit

func moSaic(input: String) -> Bool {
    let arLe = Set(input)
    print(arLe)
    return Set(input).count == input.count
}
moSaic(input: "muniain")


func palindrome(input: String) -> Bool {
    let shayGiven = input.lowercased()
   return shayGiven.reversed() == Array(input)
}

palindrome(input: "nursesrun")
palindrome(input: "camelcase")


func sameContent(str1: String, str2: String) -> Bool {
    let array1 = Array(str1)
    let array2 = Array(str2)
    
    return array1.sorted() == array2.sorted()
}

sameContent(str1: "calm", str2: "alcm")
sameContent(str1: "maco", str2: "jago")


func countNumber(input: String, count: Character) -> Int {
    var letterCount = 0
    
    for letter in input {
        if letter == count {
            letterCount += 1
        }
    }
    return letterCount
}

countNumber(input: "monasteryminglees", count: "n")

func noDuplicate(input: String) -> String {
   var used = [Character]()
    
    for letter in input {
        if !used.contains(letter) {
            used.append(letter)
        }
    }
    return String(used)
}
noDuplicate(input: "mississipi")


func condenseWhiteSpace(input: String) -> String {
    let components = input.components(separatedBy: .whitespacesAndNewlines)
    return components.filter { !$0.isEmpty}.joined(separator: "")
}
condenseWhiteSpace(input: "dfg uygiuhrweiq  ug2uhq      2uueqnsc  iu2q  h23ejq      ")


func rotaTion(str1: String, str2: String) -> Bool {
    let string1 = str1.lowercased()
    let string2 = str2.lowercased()
    
    return string2.reversed() == Array(string1)
}

rotaTion(str1: "mango", str2: "ognam")

// pangram

func allPangram(input: String) -> Bool {
    let set = Set(input.lowercased())
    let letters = set.filter { $0 >= "a" && $0 <= "z" }
    return letters.count == 26
}
allPangram(input: "The quick brown fox jumps over the lazy dog")
allPangram(input: "The quick brown fox jumped over the lazy dog")


func vowelsConsonant(input: String) -> (vowels: Int, consonants: Int) {
    let vowels = "aeiou"
    let consonants = "bcdfghjklmnpqrstvwxyz"
    
    var vowelCount = 0
    var consonantCount = 0
    
    for letter in input {
        if vowels.contains(letter){
            vowelCount += 1
        }
        else if consonants.contains(letter) {
            consonantCount += 1
        }
        
    }
    return (vowelCount, consonantCount)
}

vowelsConsonant(input: "money must be made")



func diffThree(str1: String, str2: String) -> Bool {
    let array1 = Array(str1)
    let array2 = Array(str2)
    var differences = 0
    
    for (index, letter) in array1.enumerated() {
        if array2[index] != letter {
            differences += 1
            
            if differences > 3 {
                return false
            }
        }
    }
    return true
    
}

diffThree(str1: "clamp", str2: "cramp")
