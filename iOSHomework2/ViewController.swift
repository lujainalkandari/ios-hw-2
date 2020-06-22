//
//  ViewController.swift
//  iOSHomework2
//
//  Created by Bodour Alrashidi on 6/7/20.
//  Copyright © 2020 Bodour Alrashidi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var membersNamesArray  : [String] = []
    
    var convertToLetter = true
    @IBOutlet weak var secretSocietyNameLabel: UILabel!
    @IBOutlet weak var nameTextField: UITextField!
    @IBAction func addMember(_ sender: Any) {
        
        let member = nameTextField.text!
        
        // MARK: -   1️⃣ تحت الخط membersNamesArray إلي المصفوفه memberقم بإضافة المتغير
        membersNamesArray += [member]
                 
        // MARK: -   النهاية
        
      nameTextField.text = ""
      }
      
       func secretName(members: [String], emoji: Bool) -> String {
             if (emoji) {
                 return secretNameEmoji(members: members)
             }
             return secretNameLetter(members: members)
             
         }

    
    
    
    
    @IBAction func letterButton(_sender: Any){
        
        // MARK: -  4️⃣ functionCall داخل المتغير  secretNameLetter قم باستدعاء الدالة
      let functioncall = secretName (members: membersNamesArray, emoji: false)
      
        // MARK: -   النهاية
         secretSocietyNameLabel.text =  functioncall
        }
        
   
    
    
    
    @IBAction func emojiButton(_ sender: Any) {
        
        
        
        // MARK: -  5️⃣ functionCall داخل المتغير  secretNameEmoji قم باستدعاء الدالة
        let functionCall = secretName(members: membersNamesArray, emoji: true)

        // MARK: -   النهاية
        
        secretSocietyNameLabel.text =  functionCall
        
        
    }
    
    
    
    
    // MARK: - 2️⃣ تحت هذا الخط secretNameLetter قم بكتابة الداله
 func secretNameLetter(members : [String]) -> String {
     var firstLetters: [String] = []
     for i in 0..<members.count{
         firstLetters.append(String(members[i].prefix(1).uppercased()))
     }
     print(firstLetters.joined())
     membersNamesArray.removeAll()
     return firstLetters.joined()
     
 
 }
 
        
      
    
    
    // MARK: -   النهاية
    
    
    
    
    
    // MARK: - 3️⃣ تحت هذا الخط secretNameEmoji قم بكتابة الداله
    
   func secretNameEmoji(members: [String]) -> String{
      let letters = secretNameLetter(members: members)
           let emoji = [
                          "A": "🇦🇺",
                          "B": "🇧🇭",
                          "C": "🇨🇦",
                          "D": "🇩🇰",
                          "E": "🇪🇬",
                          "F": "🇫🇷",
                          "G": "🇩🇪",
                          "H": "🇭🇰",
                          "I": "🇮🇹",
                          "J": "🇯🇵",
                          "K": "🇰🇼",
                          "L": "🇱🇧",
                          "M": "🇲🇦",
                          "N": "🇳🇴",
                          "O": "🇴🇲",
                          "P": "🇵🇸",
                          "Q": "🇶🇦",
                          "R": "🇷🇺",
                          "S": "🇸🇦",
                          "T": "🇹🇷",
                          "U": "🇬🇧",
                          "V": "🇻🇪",
                          "W": "🇪🇭",
                          "X": "❌",
                          "Y": "🇾🇪",
                          "Z": "🇿🇼"
                      ]
                      
                      var output = ""
                      for n in letters {
                          output += emoji[n.uppercased()] ?? "🤷🏻‍♀️"
                      }
                      
                      return output
                      
          
                                
                            }

  }
    // MARK: -   النهاية
    
    
    



