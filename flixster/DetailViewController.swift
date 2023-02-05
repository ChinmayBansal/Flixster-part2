//
//  DetailViewController.swift
//  flixster
//
//  Created by Chinmay Bansal on 1/31/23.
//

import UIKit
import Nuke

class DetailViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        Nuke.loadImage(with:URL(string:"https://image.tmdb.org/t/p/w185" + movie.poster_path)!, into: backdropImage)
        
        movieName.text = movie.original_title
        
        let votes_average = String(movie.vote_average)
        averageVotesLabel.text = votes_average
        
        let popularity = String(movie.popularity)
        popularityLabel.text = popularity
        
        let num_votes = String(movie.vote_count)
        popularityLabel.text = num_votes
        
        overviewLabel.text = movie.overview
        
        
        
        
    }
    
    @IBOutlet weak var backdropImage: UIImageView!
    @IBOutlet weak var movieName: UILabel!
    @IBOutlet weak var averageVotesLabel: UILabel!
    @IBOutlet weak var overviewLabel: UILabel!
    
    
    @IBOutlet weak var votesLabel: UILabel!
    @IBOutlet weak var popularityLabel: UILabel!
    
    
    
    var movie: Movie!
    
    
    
    
    /*
     // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
