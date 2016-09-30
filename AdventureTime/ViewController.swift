//
//  ViewController.swift
//  AdventureTime
//
//  Created by James Campagno on 9/30/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var occupationLabel: UILabel!
    @IBOutlet weak var speciesLabel: UILabel!
    @IBOutlet weak var characterImageView: UIImageView!
    
    

    var finn: Character!
    var jake: Character!
    var bubblegum: Character!
    var bmo: Character!
    var lemongrab: Character!
    var lsp: Character!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        createAllCharacters()
    }
    
    @IBAction func buttonTapped(_ sender: UIButton) {
        
        switch sender.titleLabel!.text! {
            
        case "Finn":
            updateViews(with: finn)
        case "Jake":
            updateViews(with: jake)
        case "Bubblegum":
            updateViews(with: bubblegum)
        case "BMO":
            updateViews(with: bmo)
        case "Lemongrab":
            updateViews(with: lemongrab)
        case "LSP":
            updateViews(with: lsp)
        default:
            print("Not working")
            
        }
        
    }
    
    func createAllCharacters() {
        
        finn = Character(name: "Finn The Human", species: "human", occupation: "hero", powerLevel: 50.0)
        jake = Character(name: "Jake The Dog", species: "dog", occupation: "friend", powerLevel: 70.0)
        bubblegum = Character(name: "Princess Bubblegum", species: "human", occupation: "princess", powerLevel: 100.00)
        lemongrab = Character(name: "Lemongrab", species: "lemon", occupation: "waaamp", powerLevel: 15)
        bmo = Character(name: "BMO", species: "game system", occupation: "fun", powerLevel: 5)
        lsp = Character(name: "Lumpy Space Princess", species: "cloud", occupation: "complainer", powerLevel: 40)
        
    }
    
    func updateViews(with character: Character) {
        characterImageView.image = character.displayImage()
        
        nameLabel.text = character.name
        occupationLabel.text = character.occupation
        speciesLabel.text = character.species
        
    }

}

