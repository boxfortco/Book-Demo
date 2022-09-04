//
//  Book.swift
//  Boxfort Plus
//
//  Created by Matthew Ryan on 9/2/22.
//

import Foundation

struct Book: Identifiable {
    let id = UUID()
    var title: String
    var featured: Bool
    var posterImage: String
    var promoImage: String
    var details: String
    var bookUrl: String
    var pages: [String]
}

extension Book {
    static var promos: [Book] {
        return [
            Book(title: "Frozen I", featured: false, posterImage: "Frozen", promoImage: "frozen_promo", details: "Young princess Anna of Arendelle dreams about finding true love at her sister Elsa’s coronation. Fate takes her on a dangerous journey in an attempt to end the eternal winter that has fallen over the kingdom. She's accompanied by ice delivery man Kristoff, his reindeer Sven, and snowman Olaf. On an adventure where she will find out what friendship, courage, family, and true love really means.", bookUrl: "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4", pages: ["SportsDay_000", "SportsDay_001", "SportsDay_002", "SportsDay_003", "SportsDay_004", "SportsDay_005", "SportsDay_006", "SportsDay_007", "SportsDay_008", "SportsDay_009", "SportsDay_010", "SportsDay_011", "SportsDay_012", "SportsDay_013", "SportsDay_014", "SportsDay_015", "SportsDay_016", "SportsDay_017", "SportsDay_018", "SportsDay_019", "SportsDay_020", "SportsDay_021", "SportsDay_022", "SportsDay_023", "SportsDay_024", "SportsDay_025", "SportsDay_026", "SportsDay_027", "SportsDay_028", "SportsDay_029", "SportsDay_030", "SportsDay_031", "SportsDay_032", "SportsDay_033", "SportsDay_034", "SportsDay_035", "SportsDay_036", "SportsDay_037", "SportsDay_038", "SportsDay_039", "SportsDay_040", "SportsDay_041", "SportsDay_042", "SportsDay_043", "SportsDay_044", "SportsDay_045", "SportsDay_046", "SportsDay_047", "SportsDay_048", "SportsDay_049", "SportsDay_050", "SportsDay_051", "SportsDay_052", "SportsDay_053"]),
            Book(title: "Mandalorian", featured: false, posterImage: "Mandalorian", promoImage: "Mandalorian", details: "After the fall of the Galactic Empire, lawlessness has spread throughout the galaxy. A lone gunfighter makes his way through the outer reaches, earning his keep as a bounty hunter. The Mandalorian and the Child continue their journey, facing enemies and rallying allies as they make their way through a dangerous galaxy in the tumultuous era after the collapse of the Galactic Empire.", bookUrl: "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ElephantsDream.mp4", pages: ["SportsDay_003", "SportsDay_004", "SportsDay_005", "SportsDay_006", "SportsDay_007", "SportsDay_008", "SportsDay_009", "SportsDay_010", "SportsDay_011", "SportsDay_012", "SportsDay_013", "SportsDay_014", "SportsDay_015", "SportsDay_016", "SportsDay_017", "SportsDay_018", "SportsDay_019", "SportsDay_020", "SportsDay_021", "SportsDay_022", "SportsDay_023", "SportsDay_024", "SportsDay_025", "SportsDay_026", "SportsDay_027", "SportsDay_028", "SportsDay_029", "SportsDay_030", "SportsDay_031", "SportsDay_032", "SportsDay_033", "SportsDay_034", "SportsDay_035", "SportsDay_036", "SportsDay_037", "SportsDay_038", "SportsDay_039", "SportsDay_040", "SportsDay_041", "SportsDay_042", "SportsDay_043", "SportsDay_044", "SportsDay_045", "SportsDay_046", "SportsDay_047", "SportsDay_048", "SportsDay_049", "SportsDay_050", "SportsDay_051", "SportsDay_052", "SportsDay_053"]),
            Book(title: "The Falcon and The Winter Soldier", featured: false, posterImage: "FalconNWS", promoImage: "FalconNWS", details: "Following the events of “Avengers: Endgame”, the Falcon, Sam Wilson and the Winter Soldier, Bucky Barnes team up in a global adventure that tests their abilities, and their patience. ", bookUrl: "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerBlazes.mp4", pages: ["SportsDay_013", "SportsDay_014", "SportsDay_015", "SportsDay_016", "SportsDay_017", "SportsDay_018", "SportsDay_019", "SportsDay_020", "SportsDay_021", "SportsDay_022", "SportsDay_023", "SportsDay_024", "SportsDay_025", "SportsDay_026", "SportsDay_027", "SportsDay_028", "SportsDay_029", "SportsDay_030", "SportsDay_031", "SportsDay_032", "SportsDay_033", "SportsDay_034", "SportsDay_035", "SportsDay_036", "SportsDay_037", "SportsDay_038", "SportsDay_039", "SportsDay_040", "SportsDay_041", "SportsDay_042", "SportsDay_043", "SportsDay_044", "SportsDay_045", "SportsDay_046", "SportsDay_047", "SportsDay_048", "SportsDay_049", "SportsDay_050", "SportsDay_051", "SportsDay_052", "SportsDay_053"])
        ]
    }
}
