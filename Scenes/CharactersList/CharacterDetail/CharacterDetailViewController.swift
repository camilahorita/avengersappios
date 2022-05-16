//
//  CharacterDetailViewController.swift
//  The Avengers
//
//  Created by Camila on 02/05/2022.
//

import UIKit

class CharacterDetailViewController: UIViewController {

    
    @IBOutlet weak var characterImage: UIImageView!
    
    @IBOutlet weak var characterHeroName: UILabel!
    
    @IBOutlet weak var characterName: UILabel!
    
    @IBOutlet weak var actorName: UILabel!
    
    var characterNameValue :String?
    var characterImageValue :String?
    var characterHeroNameValue :String?
    var actorNameValue :String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        characterImage.image = UIImage(named: characterImageValue ?? "Placeholder")
        characterHeroName.text = characterHeroNameValue
        characterName.text = characterNameValue
        actorName.text = actorNameValue
    }
    

  

}
