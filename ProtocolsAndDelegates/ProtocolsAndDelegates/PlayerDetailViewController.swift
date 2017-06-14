//
//  PlayerDetailViewController.swift
//  ProtocolsAndDelegates
//
//  Created by Samiksha on 13/06/17.
//  Copyright © 2017 Samiksha. All rights reserved.
//

import UIKit

class PlayerDetailViewController: UIViewController {
    
    @IBOutlet weak var contentView: UIView!
    @IBOutlet weak var eatingHabitsTitleLabel: UILabel!
    @IBOutlet weak var eatingHabitsDescLabel: UILabel!
    @IBOutlet weak var physicalCharacteristicTitleLabel: UILabel!
    @IBOutlet weak var physicalCharacterDescLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    var character: Character!
    
    class func fromStoryboard() -> PlayerDetailViewController {
        let playerDetailViewController = UIStoryboard (name: "Main", bundle: nil).instantiateViewController(withIdentifier:"PlayerDetailViewController") as! PlayerDetailViewController
        return playerDetailViewController
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
    
    func setupView()  {
        titleLabel.text = character.name!
        eatingHabitsDescLabel.text = character.eatingHabits.joined(separator: ", ")
        physicalCharacterDescLabel.text = character.physicalCharacter.joined(separator: ", ")
    }
}
