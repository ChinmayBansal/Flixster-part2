//
//  Poster.swift
//  flixster
//
//  Created by Chinmay Bansal on 2/4/23.
//

import Foundation


struct PosterSearchResponse: Decodable {
    let results: [Poster]
}

struct Poster: Decodable {
    var poster_path: String // when loading image with Nuke, make sure you convert to url by prepending base url
    static var posterBaseURLString: String = "https://image.tmdb.org/t/p/w185"
}
