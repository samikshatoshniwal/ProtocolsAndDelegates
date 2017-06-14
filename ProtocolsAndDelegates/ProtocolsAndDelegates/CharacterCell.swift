//
//  CharacterCell.swift
//  ProtocolsAndDelegates
//
//  Created by Samiksha on 13/06/17.
//  Copyright © 2017 Samiksha. All rights reserved.
//

import UIKit

protocol CharacterCellProtocol {
    func displayPlayerDetail(character: Character)
}

class CharacterCell: UITableViewCell {

    @IBOutlet weak var actualContentView: UIView!
    @IBOutlet weak var titleLabel: UILabel!
    var delegate: CharacterCellProtocol!
    var character: Character!
    
    class func identifier() -> String {
        return "\(self)"
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setupAppearance()
    }
    
    func setupAppearance() {
        actualContentView.layer.cornerRadius = actualContentView.frame.height/5
        actualContentView.layer.borderColor = UIColor.lightGray.cgColor
        actualContentView.layer.borderWidth = 1.0
        
        let touchGestureRecognizerForCell = UITapGestureRecognizer.init(target: self, action:#selector(CharacterCell.displayDetials(_:)))
        touchGestureRecognizerForCell.numberOfTapsRequired = 1
        actualContentView.isUserInteractionEnabled = true
        actualContentView.addGestureRecognizer(touchGestureRecognizerForCell)
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        titleLabel.text = nil
    }
    
    func displayDetials(_ sender: Any) {
        if delegate != nil {
            delegate.displayPlayerDetail(character: character)
        }
    }
}
