//
//  MovieCollectionViewCell.swift
//  Hello World
//
//  Created by PaingHtet on 19/06/2025.
//

import UIKit

class MovieCollectionViewCell: UICollectionViewCell {
    
    var movie: String? {
        didSet {
            if let movie = movie {
                movieImageView.image = UIImage(named: movie)
            }
        }
    }
    
    static let IDENTIFIRE = "MovieCollectionViewCell_ID"

    @IBOutlet var movieImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
      
    }

}
