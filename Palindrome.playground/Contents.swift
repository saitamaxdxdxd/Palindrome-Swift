import UIKit

// example
let input = "Adivina ya te opina, ya ni miles origina, ya ni cetro me domina, ya ni monarcas, a repaso ni mulato carreta, acaso nicotina, ya ni cita vecino, anima cocina, pedazo gallina, cedazo terso nos retoza de canilla goza, de pánico camina, ónice vaticina, ya ni tocino saca, a terracota luminosa pera, sacra nómina y ánimo de mortecina, ya ni giros elimina, ya ni poeta, ya ni vida"

func palindrome(text: String) -> Bool {
    // Removing all whitespaces and comas
    var newText1 = text.replacingOccurrences(of: " ", with: "")
    newText1 = newText1.replacingOccurrences(of: ",", with: "")
    // Replacing characters like á, ä, etc, to simply a
    newText1 = newText1.folding(options: [.caseInsensitive, .diacriticInsensitive], locale: .current)
    
    let newText2 = String(newText1.reversed())
    // comparing if the two strings are the same
    if newText1 == newText2 {
        return true
    }
    return false
}

let test = palindrome(text: input)
print(test)
