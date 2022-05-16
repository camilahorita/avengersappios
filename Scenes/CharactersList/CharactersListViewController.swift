//
//  CharactersListViewController.swift
//  The Avengers
//
//  Created by Camila on 29/04/2022.
//

import UIKit

private let reuseIdentifier = "characterCell"

class CharactersListViewController: UICollectionViewController {
    
    private var characters = [
            ["characterHeroName": "Ant-Man", "characterName": "Scott Lang",
             "actorName": "Paul Rudd", "characterImage": "antmanCharacter"],
            ["characterHeroName": "The Wasp", "characterName": "Hope Pym",
             "actorName": "Evangeline Lily", "characterImage": "waspCharacter"],
            ["characterHeroName": "Scarlet Witch", "characterName": "Wanda Maximoff",
             "actorName": "Elizabeth Olsen", "characterImage": "scarletWitchCharacter"],
            ["characterHeroName": "Captain America", "characterName": "Steve Rogers",
             "actorName": "Chris Evans", "characterImage": "captainAmericaCharacter"],
            ["characterHeroName": "Captain Marvel", "characterName": "Carol Danvers",
             "actorName": "Brie Larson", "characterImage": "captainMarvelCharacter"],
            ["characterHeroName": "Falcon", "characterName": "Sam Wilson",
             "actorName": "Anthony Mackie", "characterImage": "falconCharacter"],
            ["characterHeroName": "Hulk", "characterName": "Bruce Banner",
             "actorName": "Mark Ruffalo", "characterImage": "hulkCharacter"],
            ["characterHeroName": "Iron Man", "characterName": "Tony Stark",
             "actorName": "Robert Downey Jr.", "characterImage": "ironmanCharacter"],
            ["characterHeroName": "Warmachine", "characterName": "James Rhodes",
             "actorName": "Don Cheadle", "characterImage": "warmachineCharacter"],
            ["characterHeroName": "Hawkeye", "characterName": "Clint Barton",
             "actorName": "Jeremy Renner", "characterImage": "hawkeyeCharacter"],
            ["characterHeroName": "Black Panther", "characterName": "T'Challa",
             "actorName": "Chadwick Boseman", "characterImage": "blackPantherCharacter"],
            ["characterHeroName": "Spiderman", "characterName": "Peter Parker",
             "actorName": "Tom Holland", "characterImage": "spidermanCharacter"],
            ["characterHeroName": "Thor", "characterName": "Thor Odinson",
             "actorName": "Chris Hemsworth", "characterImage": "thorCharacter"],
            ["characterHeroName": "Vision", "characterName": "Vision",
             "actorName": "Paul Bettany", "characterImage": "visionCharacter"],
            ["characterHeroName": "Black Widow", "characterName": "Natalia Romanoff",
             "actorName": "Scarlett Johansson", "characterImage": "blackWidowCharacter"],
            ["characterHeroName": "Star Lord", "characterName": "Peter Quill",
             "actorName": "Chris Pratt", "characterImage": "starLordCharacter"],
            ["characterHeroName": "Rocket", "characterName": "Rocket Racoon",
             "actorName": "Bradley Cooper", "characterImage": "rocketCharacter"],
            ["characterHeroName": "Thanos", "characterName": "Thanos",
             "actorName": "Josh Brolin", "characterImage": "thanos2Character"]
        ]

    override func viewDidLoad() {
        super.viewDidLoad()

    }


    // MARK: UICollectionViewDataSource

    override func numberOfSections(in collectionView: UICollectionView) -> Int {

        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {

        return characters.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as? CharacterCell else {
            return UICollectionViewCell()
        }
        
        let characterImage = characters[indexPath.row]["characterImage"] ?? "Placeholder"
        
        let characterName = characters[indexPath.row]["characterName"] ?? "Unknown Aven"
        
        cell.setData(nameImage: characterImage, nameCharacter: characterName)
    
    
        return cell
        
    }
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
//        let characterName = characters[indexPath.row]["characterHeroName"] ?? "Unknown Aven"
        
        
        performSegue(withIdentifier: "CharacterDetail", sender: indexPath)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "CharacterDetail"  {
            
            let destinationVC = segue.destination as? CharacterDetailViewController
            
//            let characterName = sender as? String
            guard let indexPath = sender as? IndexPath else {
                return
            }
            let characterImage = characters[indexPath.row]["characterImage"] ?? "Plaholder"
            let characterHeroName = characters[indexPath.row]["characterHeroName"] ?? "Unknown Avenger"
            let characterName = characters[indexPath.row]["characterName"] ?? "Unknown Name"
            let actorName = characters[indexPath.row]["actorName"] ?? "Unknown Actor"
            
            destinationVC?.characterImageValue = characterImage
            destinationVC?.characterHeroNameValue = characterHeroName
            destinationVC?.characterNameValue = characterName
            destinationVC?.actorNameValue = actorName
            
        }
    }


}
