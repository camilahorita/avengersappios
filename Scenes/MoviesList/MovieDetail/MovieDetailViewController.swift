//
//  MovieDetailViewController.swift
//  The Avengers
//
//  Created by Camila on 02/05/2022.
//

import UIKit

class MovieDetailViewController: UIViewController {
    
    @IBOutlet weak var movieImageView: UIImageView!
    
    @IBOutlet weak var movieNameLabel: UILabel!
    
    @IBOutlet weak var releaseYearLabel: UILabel!
    
    @IBOutlet weak var castLabel: UILabel!
    
    
    var movieImage: String?
    var movieName: String?
    var releaseYear: String?
    var cast: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        movieImageView.image = UIImage(named: movieImage ?? "Placeholder")
        movieNameLabel.text = movieName
        releaseYearLabel.text = releaseYear
        castLabel.text = cast
        

    }
    



}
