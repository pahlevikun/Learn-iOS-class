//
//  ViewController.swift
//  Emoji
//
//  Created by Farhan Yuda Pahlevi on 3/3/18.
//  Copyright © 2018 Udacity. All rights reserved.
//

import UIKit

class ApaYaViewController: UIViewController {
    
    let emojis: [String] = ["🍆","🍅","🍇","🍑"]
    lazy var game = Apaya(numberOfCards: (cardButton.count+1)/2)
    var flipCount = 0
    
    @IBOutlet weak var flipCountLabel: UILabel!
    @IBOutlet var cardButton: [UIButton]!
    
    @IBAction func touchCard(_ sender: UIButton) {
        if let index = cardButton.index(of: sender){
            let emojis = getEmoji(fromIndex: index)
            let card = cardButton[index]
            card.setTitle(emojis, for: .normal)
            card.backgroundColor = #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)
            print(index)
            flipCount += 1
            flipCountLabel.text = "Flip Count \(flipCount)"
        }else{
            fatalError("This card is not included in cardButtons")
        }
    }
    func getEmoji(fromIndex index:Int) -> String{
        if index % 2 == 0{
            return emojis[0]
        }else{
            return emojis[1]
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

