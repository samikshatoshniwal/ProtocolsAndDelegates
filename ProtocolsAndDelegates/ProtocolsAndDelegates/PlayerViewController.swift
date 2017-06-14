//
//  PlayerViewController.swift
//  ProtocolsAndDelegates
//
//  Created by Samiksha on 13/06/17.
//  Copyright © 2017 Samiksha. All rights reserved.
//

import UIKit

class PlayerViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    var items: [Character] = [Character]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        setupTableView()
        setupItems()
    }
    
    func setupView() {
        navigationController?.navigationBar.topItem?.title = "Players"
    }
    
    func setupTableView() {
        tableView.delegate = self
        tableView.dataSource = self
        tableView.bounces = false
        tableView.layoutMargins = UIEdgeInsets.zero
        tableView.separatorInset = UIEdgeInsets.zero
        tableView.tableFooterView = UIView()
    }
    
    func setupItems() {
        let eatingHabits = ["Milk", "Chocolates", "Ice cream", "Caramel"]
        let physicalCharacter = ["Tall", "Fit", "Brown"]
        
        let item1 = Character.init(name: "Player 1", eatingHabits: eatingHabits, physicalCharacter: physicalCharacter)
        let item2 = Character.init(name: "Player 2", eatingHabits: eatingHabits, physicalCharacter: physicalCharacter)
        let item3 = Character.init(name: "Player 3", eatingHabits: eatingHabits, physicalCharacter: physicalCharacter)
        let item4 = Character.init(name: "Player 4", eatingHabits: eatingHabits, physicalCharacter: physicalCharacter)
        let item5 = Character.init(name: "Player 5", eatingHabits: eatingHabits, physicalCharacter: physicalCharacter)
        let item6 = Character.init(name: "Player 6", eatingHabits: eatingHabits, physicalCharacter: physicalCharacter)
        let item7 = Character.init(name: "Player 7", eatingHabits: eatingHabits, physicalCharacter: physicalCharacter)
        let item8 = Character.init(name: "Player 8", eatingHabits: eatingHabits, physicalCharacter: physicalCharacter)
        let item9 = Character.init(name: "Player 9", eatingHabits: eatingHabits, physicalCharacter: physicalCharacter)
        let item10 = Character.init(name: "Player 10", eatingHabits: eatingHabits, physicalCharacter: physicalCharacter)
        
        items.append(item1)
        items.append(item2)
        items.append(item3)
        items.append(item4)
        items.append(item5)
        items.append(item6)
        items.append(item7)
        items.append(item8)
        items.append(item9)
        items.append(item10)
    }
}

// MARK: UITableViewDataSource methods

extension PlayerViewController: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: CharacterCell.identifier()) as! CharacterCell
        cell.titleLabel.text = items[indexPath.row].name
        cell.selectionStyle = .none
        cell.delegate = self
        cell.character = items[indexPath.row]
        return cell
    }
}

// MARK: UITableViewDelegate methods

extension PlayerViewController: UITableViewDelegate {
    

}

// MARK: PlayerCellProtocol methods

extension PlayerViewController: CharacterCellProtocol {
    
    func displayPlayerDetail(character: Character) {
        let playerDetailVC = PlayerDetailViewController.fromStoryboard()
        playerDetailVC.character = character
        self.navigationController?.pushViewController(playerDetailVC, animated: true)
    }
}
