//
//  CharacterCell.swift
//  The Avengers
//
//  Created by Camila on 29/04/2022.
//

import UIKit

class CharacterCell: UICollectionViewCell {
    
    @IBOutlet weak var characterImage: UIImageView!
    
    @IBOutlet weak var characterName: UILabel!
//    funccion para rellenar la cell
    func setData(nameImage:String, nameCharacter: String ) {
        characterImage.image = UIImage(named: nameImage)
        characterName.text = nameCharacter
    }
}
