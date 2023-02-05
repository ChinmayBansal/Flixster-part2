//
//  Movies.swift
//  flixster
//
//  Created by Anderson David on 1/20/23.
//

import Foundation

struct MoviesResponse: Decodable {
    var results: [Movie]

    static func loadJson() -> [Movie] {
        if let url = Bundle.main.url(forResource: "data", withExtension: "json") {
            do {
                let data = try Data(contentsOf: url)
                let decoder = JSONDecoder()
                let jsonData = try decoder.decode(MoviesResponse.self, from: data)
                return jsonData.results
            } catch {
                print("error:\(error)")
            }
        }
        return []
    }
}

struct Movie: Decodable {
    var original_title: String
    var overview: String

    var poster_path: String // when loading image with Nuke, make sure you convert to url by prepending base url
    static var posterBaseURLString: String = "https://image.tmdb.org/t/p/w185"
    var popularity: Double

    var vote_average: Double
    var vote_count: Int
}

//struct Movie: Decodable {
//    var original_title: String
//    var overview: String
//
////    var poster_path: String // when loading image with Nuke, make sure you convert to url by prepending base url
////    static var posterBaseURLString: String = "https://image.tmdb.org/t/p/w185"
//    let movieImageURL: URL
//
//    var vote_average: Double
//    var vote_count: Int
//    var popularity: Double
//    var posterImageURL: URL
//}
//
//extension Movie {
//    static var mockMovies: [Movie] = [
//        Movie(original_title: "Puss in Boots: The Last Wish",
//              overview: "Puss in Boots discovers that his passion for adventure has taken its toll: He has burned through eight of his nine lives, leaving him with only one life left. Puss sets out on an epic journey to find the mythical Last Wish and restore his nine lives.",
//              movieImageURL: URL(string: "https://image.tmdb.org/t/p/w185/kuf6dutpsT0vSVehic3EZIqkOBt.jpg")!,
//              vote_average: 8.6,
//              vote_count: 2983,
//              popularity: 6178.562,
//              posterImageURL: URL(string: "https://image.tmdb.org/t/p/w185/faXT8V80JRhnArTAeYXz0Eutpv9.jpg")!),
//        Movie(original_title: "Avatar: The Way of Water",
//              overview: "Set more than a decade after the events of the first film, learn the story of the Sully family (Jake, Neytiri, and their kids), the trouble that follows them, the lengths they go to keep each other safe, the battles they fight to stay alive, and the tragedies they endure.",
//              movieImageURL: URL(string: "https://image.tmdb.org/t/p/w185/t6HIqrRAclMCA60NsSmeqe9RmNV.jpg")!,
//              vote_average: 7.7,
//              vote_count: 4859,
//              popularity: 2463.327,
//              posterImageURL: URL(string: "https://image.tmdb.org/t/p/w185/evaFLqtswezLosllRZtJNMiO1UR.jpg")!),
//        Movie(original_title: "Glass Onion: A Knives Out Mystery",
//              overview: "World-famous detective Benoit Blanc heads to Greece to peel back the layers of a mystery surrounding a tech billionaire and his eclectic crew of friends.",
//              movieImageURL: URL(string: "https://image.tmdb.org/t/p/w185/vDGr1YdrlfbU9wxTOdpf3zChmv9.jpg")!,
//              vote_average: 7.1,
//              vote_count: 3096,
//              popularity: 1124.985,
//              posterImageURL: URL(string: "https://image.tmdb.org/t/p/w185/dKqa850uvbNSCaQCV4Im1XlzEtQ.jpg")!),
//        Movie(original_title: "Top Gun: Maverick",
//              overview: "After more than thirty years of service as one of the Navy’s top aviators, and dodging the advancement in rank that would ground him, Pete “Maverick” Mitchell finds himself training a detachment of TOP GUN graduates for a specialized mission the likes of which no living pilot has ever seen.",
//              movieImageURL: URL(string: "https://image.tmdb.org/t/p/w185/AaV1YIdWKnjAIAOe8UUKBFm327v.jpg")!,
//              vote_average: 8.3,
//              vote_count: 5872,
//              popularity: 495.569,
//              posterImageURL: URL(string: "https://image.tmdb.org/t/p/w185/dKqa850uvbNSCaQCV4Im1XlzEtQ.jpg")!),
//        Movie(original_title: "Devotion",
//              overview: "The harrowing true story of two elite US Navy fighter pilots during the Korean War. Their heroic sacrifices would ultimately make them the Navy's most celebrated wingmen.",
//              movieImageURL: URL(string: "https://image.tmdb.org/t/p/w185/26yQPXymbWeCLKwcmyL8dRjAzth.jpg")!,
//              vote_average: 7.6,
//              vote_count: 190,
//              popularity: 1830.93,
//              posterImageURL: URL(string: "https://image.tmdb.org/t/p/w185/5pMy5LF2JAleBNBtuzizfCMWM7k.jpg")!),
//
//    ]
//}




