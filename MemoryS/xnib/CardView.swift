//
//  CardView.swift
//  MemoryS
//
//  Created by Danijel Turić on 15/03/2019.
//  Copyright © 2019 Danijel Turić. All rights reserved.
//

import UIKit

struct ViewData {
    var image: UIImage
    var label: String
    
    init(image: UIImage, label: String) {
        self.image = image
        self.label = label
    }
}

class CardView: UIView {
    
    @IBOutlet weak var cardImage: UIImageView!
    @IBOutlet weak var cardLabel: UILabel!
    
    private var viewDataHolder: ViewData?
    
    override func awakeFromNib() {
        print("Createt")
    }
    
    override func didMoveToWindow() {
        cardImage?.image = viewDataHolder?.image
        cardLabel?.text = viewDataHolder?.label ?? "Example"
        
        print("updated")
    }
    
    func insertData(image: UIImage?, label: String) {
        
        viewDataHolder = ViewData(image: image ?? UIImage(), label: label)
    }
}
