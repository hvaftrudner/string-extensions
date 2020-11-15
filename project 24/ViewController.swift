//
//  ViewController.swift
//  project 24
//
//  Created by Kristoffer Eriksson on 2020-11-15.
//

import UIKit

class ViewController: UIViewController {
    
    let name = "Krille"
    
    let password = "12345"
    
    let weather = "its going to rain"
    
    let input = "Swift is like objective-c without the C"
    let languages = ["python", "ruby", "Swift"]
    
    let string = "this is a test string"
    let attributes: [NSAttributedString.Key: Any] = [
        .foregroundColor: UIColor.white,
        .backgroundColor: UIColor.red,
        .font: UIFont.boldSystemFont(ofSize: 36)
    ]
    let test = "test"
    let test2 = "leet"
    let test3 = #"tjena\alla\dr"#
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        for letter in name {
            print("give me an \(letter)!")
        }
        //first
        //let letter = name[name.index(name.startIndex, offsetBy: 3)]
        //let letter2 = name[3]
        
        //second
        print(password.hasPrefix("123"))
        print(password.hasSuffix("456"))
        
        print(weather.capitalized)
        
        print(input.contains("Swift"))
        print(languages.contains("Swift"))
        print(input.containsAny(of: languages))
        print(languages.contains(where: input.contains))
        
        //challenge
        print(test.withPrefix("cat"))
        print(test2.isNumeric())
        print(test.lines())
        
        //let attributedString = NSAttributedString(string: string, attributes: attributes)
        let attributesString2 = NSMutableAttributedString(string: string)
        attributesString2.addAttribute(.font, value: UIFont.systemFont(ofSize: 8), range: NSRange(location: 0, length: 4))
        attributesString2.addAttribute(.font, value: UIFont.systemFont(ofSize: 16), range: NSRange(location: 5, length: 2))
        attributesString2.addAttribute(.font, value: UIFont.systemFont(ofSize: 24), range: NSRange(location: 8, length: 1))
        attributesString2.addAttribute(.font, value: UIFont.systemFont(ofSize: 32), range: NSRange(location: 10, length: 4))
        attributesString2.addAttribute(.font, value: UIFont.systemFont(ofSize: 40), range: NSRange(location: 15, length: 6))
    }
}

extension String {
    subscript(i: Int) -> String {
        return String(self[index(startIndex, offsetBy: i)])
    }
}

extension String {
    func deletePrefix(_ prefix: String) -> String {
        guard self.hasPrefix(prefix) else {return self}
        return String(self.dropFirst(prefix.count))
    }
    
    func deleteSuffix(_ suffix: String) -> String {
        guard self.hasSuffix(suffix) else {return self}
        return String(self.dropLast(suffix.count))
    }
}

extension String {
    var capitalizeFirst: String {
        guard let firstLetter = self.first else {return ""}
        return firstLetter.uppercased() + self.dropFirst()
    }
}

extension String {
    func containsAny(of array: [String]) -> Bool{
        for item in array{
            if self.contains(item){
                return true
            }
        }
        return false
    }
}
// challenge
extension String {
    func withPrefix(_ prefix: String) -> String {
        guard !self.hasPrefix(prefix) else {return self}
        return String(prefix + self)
    }
    
    func isNumeric() -> Bool {
        for char in self {
            if char.isNumber{
                return true
            }
        }
        return false
    }
    func lines() -> [String]{
        var newArray = [String]()

        newArray = self.components(separatedBy: #"\"#)
        
        return newArray
    }
}


