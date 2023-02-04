//
//  MovieCell.swift
//  flixster
//
//  Created by Chinmay Bansal on 1/31/23.
//

import UIKit
import Nuke

class MovieCell: UITableViewCell {

    @IBOutlet weak var movieImageView: UIImageView!
    
    @IBOutlet weak var movieNameLabel: UILabel!
    
    @IBOutlet weak var movieDescriptionLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func configure(with movie: Movie) {
        movieNameLabel.text = movie.original_title
        movieDescriptionLabel.text = movie.overview

        // Load image async via Nuke library image loading helper method
        Nuke.loadImage(with:  URL(string:"https://image.tmdb.org/t/p/w185" + movie.poster_path)!, into: movieImageView)
    }

}
