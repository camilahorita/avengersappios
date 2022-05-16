//
//  MovieCell.swift
//  The Avengers
//
//  Created by Camila on 29/04/2022.
//

import UIKit

class MovieCell: UITableViewCell {
    
    
    @IBOutlet weak var movieImage: UIImageView!
    
    @IBOutlet weak var movieName: UILabel!
    
    @IBOutlet weak var movieYear: UILabel!
    
    func setData(nameImage: String, nameMovie: String, nameYear: String) {
        
        movieImage.image = UIImage(named: nameImage)
        movieName.text = nameMovie
        movieYear.text = nameYear
        
    }
    

    override func awakeFromNib() {
        super.awakeFromNib()

    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }

}
