//
//  ViewController.swift
//  MemoryS
//
//  Created by Danijel Turić on 15/03/2019.
//  Copyright © 2019 Danijel Turić. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var cardViewsHolder: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        createBoard()
    }
    
    func createBoard() {
        
        let cardWidth = cardViewsHolder.frame.width / 4
        let cardHeight = cardViewsHolder.frame.height / 4
        
        var i = 0
        
        //for better grid use double loop
        while i < 3 {
            
            let card = Bundle.main.loadNibNamed("MemoryCard", owner: self, options: nil)?.first as! CardView
            
            card.frame = CGRect(x: CGFloat(i + 1) * 10 + CGFloat(i) * cardWidth, y: 10, width: cardWidth, height: cardHeight)
            
            card.insertData(image: UIImage(), label: ("Card: " + String(i)))
            card.tag = i
            
            cardViewsHolder.addSubview(card)
            
            card.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(cardSelect(sender:))))
            
            i += 1
        }
    }
    
    @objc func cardSelect(sender: UITapGestureRecognizer) {
        print("Selected card: " + String(sender.view?.tag ?? 0))
    }
    
}

