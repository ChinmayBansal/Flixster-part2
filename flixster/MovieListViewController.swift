//
//  MovieListViewController.swift
//  flixster
//
//  Created by Anderson David on 1/20/23.
//

import UIKit

class MovieListViewController: UIViewController, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return movies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath) as! MovieCell
        
        let movie  = movies[indexPath.row]
        
        cell.configure(with: movie)
        
        return cell
    }
    
    
//    var movies: [Movie] = [Movie]()
    var movies: [Movie] = []

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
//        movies = MoviesResponse.loadJson()
        movies = Movie.mockMovies
        for movie in movies {
            print(movie.original_title)
        }
        
        tableView.dataSource = self
    }
    
    @IBOutlet weak var tableView: UITableView!
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
