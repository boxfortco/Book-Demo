//
//  BookSection.swift
//  Boxfort Plus
//
//  Created by Matthew Ryan on 9/2/22.
//

import Foundation

struct BookSection: Identifiable {
    let id = UUID()
    var sectionName: String
    var books: [Book]
    
    
}

extension BookSection {
    static var bookSections: [BookSection] {
        return [featured, recommended, hitBooks, playing]
    }
    
    static var featured: BookSection {
            return BookSection(sectionName: "Featured", books: sampleBooks.filter{$0.featured})
        }
    
    static var recommended: BookSection {
        return BookSection(sectionName: "Recommended For You", books: sampleBooks.shuffled())
    }
    
    static var hitBooks: BookSection {
        return BookSection(sectionName: "Hit Books", books: sampleBooks.shuffled())
    }
    
    static var playing: BookSection {
        return BookSection(sectionName: "Currently Playing", books: sampleBooks.shuffled())
    }
    
    
    static var sampleBooks: [Book] {
        return [
            Book(
                    title: "Sports Day",
                    featured: true,
                    posterImage: "SportsDay",
                    promoImage: "SportsDay_promo",
                    details: "description.",
                    bookUrl: "link",
                    pages: [
                    "SportsDay_000", "SportsDay_001", "SportsDay_002", "SportsDay_003", "SportsDay_004", "SportsDay_005"]),
            Book(
                    title: "The Box",
                    featured: true,
                    posterImage: "TheBox",
                    promoImage: "TheBox_promo",
                    details: "description",
                    bookUrl: "link",
                    pages: [
                    "TheBox_000", "TheBox_001", "TheBox_002", "TheBox_003", "TheBox_004", "TheBox_005"]),
            Book(
                    title: "Mix Demo 1",
                    featured: true,
                    posterImage: "SportsDay",
                    promoImage: "SportsDay_promo",
                    details: "description",
                    bookUrl: "link",
                    pages: [
                    "TheBox_001", "TheBox_002", "SportsDay_002", "SportsDay_003", "TheBox_003", "SportsDay_005"]),
            Book(
                    title: "Mix Demo 2",
                    featured: true,
                    posterImage: "TheBox",
                    promoImage: "TheBox_promo",
                    details: "description",
                    bookUrl: "link",
                    pages: [
                    "SportsDay_004", "TheBox_001", "TheBox_002", "SportsDay_003", "TheBox_004", "TheBox_005"]),
            
            Book(title: "Avengers: End Game", featured: true, posterImage: "Avengers", promoImage: "endGame_promo", details: "After the devastating events of Avengers: Infinity War, the universe is in ruins due to the efforts of the Mad Titan, Thanos. With the help of remaining allies, the Avengers must assemble once more in order to undo Thanos' actions and restore order to the universe once and for all, no matter what consequences may be in store.", bookUrl: "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerEscapes.mp4", pages: ["SportsDay_000", "SportsDay_001", "SportsDay_002", "SportsDay_003", "SportsDay_004", "SportsDay_005", "SportsDay_006", "SportsDay_007", "SportsDay_008", "SportsDay_009", "SportsDay_010", "SportsDay_011", "SportsDay_012", "SportsDay_013", "SportsDay_014", "SportsDay_015", "SportsDay_016", "SportsDay_017", "SportsDay_018", "SportsDay_019", "SportsDay_020", "SportsDay_021", "SportsDay_022", "SportsDay_023", "SportsDay_024", "SportsDay_025", "SportsDay_026", "SportsDay_027", "SportsDay_028", "SportsDay_029", "SportsDay_030", "SportsDay_031", "SportsDay_032", "SportsDay_033", "SportsDay_034", "SportsDay_035", "SportsDay_036", "SportsDay_037", "SportsDay_038", "SportsDay_039", "SportsDay_040", "SportsDay_041", "SportsDay_042", "SportsDay_043", "SportsDay_044", "SportsDay_045", "SportsDay_046", "SportsDay_047", "SportsDay_048", "SportsDay_049", "SportsDay_050", "SportsDay_051", "SportsDay_052", "SportsDay_053"]),
            Book(title: "Captain America", featured: true, posterImage: "CaptainAmerica", promoImage: "captainAmerica_promo", details: "During World War II, Steve Rogers is a sickly man from Brooklyn who's transformed into super-soldier Captain America to aid in the war effort. Rogers must stop the Red Skull – Adolf Hitler's ruthless head of weaponry, and the leader of an organization that intends to use a mysterious device of untold powers for world domination.", bookUrl: "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerFun.mp4", pages: ["SportsDay_028", "SportsDay_029", "SportsDay_030", "SportsDay_031", "SportsDay_032", "SportsDay_033", "SportsDay_034", "SportsDay_035", "SportsDay_036", "SportsDay_037", "SportsDay_038", "SportsDay_039", "SportsDay_040", "SportsDay_041", "SportsDay_042", "SportsDay_043", "SportsDay_044", "SportsDay_045", "SportsDay_046", "SportsDay_047", "SportsDay_048", "SportsDay_049", "SportsDay_050", "SportsDay_051", "SportsDay_052", "SportsDay_053"]),
            Book(title: "Captain Marvel", featured: true, posterImage: "CaptainMarvel", promoImage: "captainMarvel_promo", details: "The story follows Carol Danvers as she becomes one of the universe’s most powerful heroes when Earth is caught in the middle of a galactic war between two alien races. Set in the 1990s, Captain Marvel is an all-new adventure from a previously unseen period in the history of the Marvel Cinematic Universe.", bookUrl: "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerJoyrides.mp4", pages: ["SportsDay_005", "SportsDay_006", "SportsDay_007", "SportsDay_008", "SportsDay_009", "SportsDay_010", "SportsDay_011", "SportsDay_012", "SportsDay_013", "SportsDay_014", "SportsDay_015", "SportsDay_016", "SportsDay_017", "SportsDay_018", "SportsDay_019", "SportsDay_020", "SportsDay_021", "SportsDay_022", "SportsDay_023", "SportsDay_024", "SportsDay_025", "SportsDay_026", "SportsDay_027", "SportsDay_028", "SportsDay_029", "SportsDay_030", "SportsDay_031", "SportsDay_032", "SportsDay_033", "SportsDay_034", "SportsDay_035", "SportsDay_036", "SportsDay_037", "SportsDay_038", "SportsDay_039", "SportsDay_040", "SportsDay_041", "SportsDay_042", "SportsDay_043", "SportsDay_044", "SportsDay_045", "SportsDay_046", "SportsDay_047", "SportsDay_048", "SportsDay_049", "SportsDay_050", "SportsDay_051", "SportsDay_052", "SportsDay_053"]),
            Book(title: "Frozen", featured: false, posterImage: "Frozen", promoImage: "frozen_promo", details: "Young princess Anna of Arendelle dreams about finding true love at her sister Elsa’s coronation. Fate takes her on a dangerous journey in an attempt to end the eternal winter that has fallen over the kingdom. She's accompanied by ice delivery man Kristoff, his reindeer Sven, and snowman Olaf. On an adventure where she will find out what friendship, courage, family, and true love really means.", bookUrl: "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerMeltdowns.mp4", pages: ["SportsDay_014", "SportsDay_015", "SportsDay_016", "SportsDay_017", "SportsDay_018", "SportsDay_019", "SportsDay_020", "SportsDay_021", "SportsDay_022", "SportsDay_023", "SportsDay_024", "SportsDay_025", "SportsDay_026", "SportsDay_027", "SportsDay_028", "SportsDay_029", "SportsDay_030", "SportsDay_031", "SportsDay_032", "SportsDay_033", "SportsDay_034", "SportsDay_035", "SportsDay_036", "SportsDay_037", "SportsDay_038", "SportsDay_039", "SportsDay_040", "SportsDay_041", "SportsDay_042", "SportsDay_043", "SportsDay_044", "SportsDay_045", "SportsDay_046", "SportsDay_047", "SportsDay_048", "SportsDay_049", "SportsDay_050", "SportsDay_051", "SportsDay_052", "SportsDay_053"]),
            Book(title: "Frozen 2", featured: false, posterImage: "Frozen2", promoImage: "frozen2_promo", details: "Elsa, Anna, Kristoff and Olaf head far into the forest to learn the truth about an ancient mystery of their kingdom. The kingdom of Arendelle needs to be evacuated when the forces of nature threaten to destroy it. Elsa, Anna, Olaf and Kristoff set off to find some answers. But Elsa has been distracted. She has been hearing an unfamiliar voice calling out to her in a strange tune. Led by her, the group follows the melody to find themselves at the edge of an Enchanted Forest with untold mysteries and dangers.", bookUrl: "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/Sintel.mp4", pages: ["SportsDay_039", "SportsDay_040", "SportsDay_041", "SportsDay_042", "SportsDay_043", "SportsDay_044", "SportsDay_045", "SportsDay_046", "SportsDay_047", "SportsDay_048", "SportsDay_049", "SportsDay_050", "SportsDay_051", "SportsDay_052", "SportsDay_053"]),
            Book(title: "Iron Man", featured: false, posterImage: "IronMan", promoImage: "ironman_promo", details: "After being held captive in an Afghan cave, billionaire engineer Tony Stark creates a unique weaponized suit of armor to fight evil. Heroes aren't born. They're built.", bookUrl: "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/SubaruOutbackOnStreetAndDirt.mp4", pages: ["SportsDay_009", "SportsDay_010", "SportsDay_011", "SportsDay_012", "SportsDay_013", "SportsDay_014", "SportsDay_015", "SportsDay_016", "SportsDay_017", "SportsDay_018", "SportsDay_019", "SportsDay_020", "SportsDay_021", "SportsDay_022", "SportsDay_023", "SportsDay_024", "SportsDay_025", "SportsDay_026", "SportsDay_027", "SportsDay_028", "SportsDay_029", "SportsDay_030", "SportsDay_031", "SportsDay_032", "SportsDay_033", "SportsDay_034", "SportsDay_035", "SportsDay_036", "SportsDay_037", "SportsDay_038", "SportsDay_039", "SportsDay_040", "SportsDay_041", "SportsDay_042", "SportsDay_043", "SportsDay_044", "SportsDay_045", "SportsDay_046", "SportsDay_047", "SportsDay_048", "SportsDay_049", "SportsDay_050", "SportsDay_051", "SportsDay_052", "SportsDay_053"]),
            Book(title: "Star Wars", featured: false, posterImage: "SW_ANewHope", promoImage: "anewHope_promo", details: "Princess Leia is captured and held hostage by the evil Imperial forces in their effort to take over the galactic Empire. Venturesome Luke Skywalker and dashing captain Han Solo team together with the loveable robot duo R2-D2 and C-3PO to rescue the beautiful princess and restore peace and justice in the Empire.", bookUrl: "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/TearsOfSteel.mp4", pages: ["SportsDay_010", "SportsDay_011", "SportsDay_012", "SportsDay_013", "SportsDay_014", "SportsDay_015", "SportsDay_016", "SportsDay_017", "SportsDay_018", "SportsDay_019", "SportsDay_020", "SportsDay_021", "SportsDay_022", "SportsDay_023", "SportsDay_024", "SportsDay_025", "SportsDay_026", "SportsDay_027", "SportsDay_028", "SportsDay_029", "SportsDay_030", "SportsDay_031", "SportsDay_032", "SportsDay_033", "SportsDay_034", "SportsDay_035", "SportsDay_036", "SportsDay_037", "SportsDay_038", "SportsDay_039", "SportsDay_040", "SportsDay_041", "SportsDay_042", "SportsDay_043", "SportsDay_044", "SportsDay_045", "SportsDay_046", "SportsDay_047", "SportsDay_048", "SportsDay_049", "SportsDay_050", "SportsDay_051", "SportsDay_052", "SportsDay_053"]),
            Book(title: "Star Wars - Rise of Skywalker", featured: false, posterImage: "SW_RiseOfSkywalker", promoImage: "riseOfSkyWalker_Promo", details: "The surviving Resistance faces the First Order once again as the journey of Rey, Finn and Poe Dameron continues. With the power and knowledge of generations behind them, the final battle begins.", bookUrl: "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/VolkswagenGTIReview.mp4", pages: ["SportsDay_048", "SportsDay_049", "SportsDay_050", "SportsDay_051", "SportsDay_052", "SportsDay_053"]),
            Book(title: "Star Wars - Solo", featured: false, posterImage: "SW_Solo", promoImage: "solo_promo", details: "Through a series of daring escapades deep within a dark and dangerous criminal underworld, Han Solo meets his mighty future copilot Chewbacca and encounters the notorious gambler Lando Calrissian.", bookUrl: "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/WeAreGoingOnBullrun.mp4", pages: ["SportsDay_035", "SportsDay_036", "SportsDay_037", "SportsDay_038", "SportsDay_039", "SportsDay_040", "SportsDay_041", "SportsDay_042", "SportsDay_043", "SportsDay_044", "SportsDay_045", "SportsDay_046", "SportsDay_047", "SportsDay_048", "SportsDay_049", "SportsDay_050", "SportsDay_051", "SportsDay_052", "SportsDay_053"]),
            Book(title: "Star Wars - The Last Jedi", featured: false, posterImage: "SW_TheLastJedi", promoImage: "sWTheLastJedi_promo", details: "Rey develops her newly discovered abilities with the guidance of Luke Skywalker, who is unsettled by the strength of her powers. Meanwhile, the Resistance prepares to do battle with the First Order.", bookUrl: "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/WhatCarCanYouGetForAGrand.mp4", pages: ["SportsDay_007", "SportsDay_008", "SportsDay_009", "SportsDay_010", "SportsDay_011", "SportsDay_012", "SportsDay_013", "SportsDay_014", "SportsDay_015", "SportsDay_016", "SportsDay_017", "SportsDay_018", "SportsDay_019", "SportsDay_020", "SportsDay_021", "SportsDay_022", "SportsDay_023", "SportsDay_024", "SportsDay_025", "SportsDay_026", "SportsDay_027", "SportsDay_028", "SportsDay_029", "SportsDay_030", "SportsDay_031", "SportsDay_032", "SportsDay_033", "SportsDay_034", "SportsDay_035", "SportsDay_036", "SportsDay_037", "SportsDay_038", "SportsDay_039", "SportsDay_040", "SportsDay_041", "SportsDay_042", "SportsDay_043", "SportsDay_044", "SportsDay_045", "SportsDay_046", "SportsDay_047", "SportsDay_048", "SportsDay_049", "SportsDay_050", "SportsDay_051", "SportsDay_052", "SportsDay_053"]),
            Book(title: "Wanda Vision", featured: false, posterImage: "WandaVision", promoImage: "wandaVision_promo", details: "Wanda Maximoff and Vision—two super-powered beings living idealized suburban lives—begin to suspect that everything is not as it seems.", bookUrl: "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4", pages: ["SportsDay_026", "SportsDay_027", "SportsDay_028", "SportsDay_029", "SportsDay_030", "SportsDay_031", "SportsDay_032", "SportsDay_033", "SportsDay_034", "SportsDay_035", "SportsDay_036", "SportsDay_037", "SportsDay_038", "SportsDay_039", "SportsDay_040", "SportsDay_041", "SportsDay_042", "SportsDay_043", "SportsDay_044", "SportsDay_045", "SportsDay_046", "SportsDay_047", "SportsDay_048", "SportsDay_049", "SportsDay_050", "SportsDay_051", "SportsDay_052", "SportsDay_053"]),
        ]
    }
}
