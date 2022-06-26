//
//  Models.swift
//  TableCollectionView
//
//  Created by Александр Коробицын on 17.06.2022.
//

import Foundation

struct PinkFloyd {
    let member: Member
    let album: Album
    let Photos = ["01img","02img","03img","04img","05img",
                  "06img","07img","08img","09img","10img",
                  "11img","12img","13img","14img","15img"]
}

struct Member {
    let fullName: FullName
    let role: Role
    let photo: Photo
}

enum FullName: String {
    case gilmour = "David Gilmour"
    case waters = "Roger Waters"
    case barrett = "Syd Barrett"
    case wright = "Richard Wright"
    case Mason = "Nick Mason"
}

enum Role: String {
    case gilmour = "Vocal, guitar"
    case waters = "Bas"
    case barrett = "Guitar"
    case wright = "Keys"
    case Mason = "Drums"
}

enum Photo: String {
    case gilmour = "David Gilmour"
    case waters = "Roger Waters"
    case barrett = "Syd Barrett"
    case wright = "Richard Wright"
    case Mason = "Nick Mason"
}

struct Album {
    let years = ["1967", "1968", "1969", "1969", "1970",
                 "1971", "1972", "1973", "1977", "1979",
                 "1983", "1987", "1994"]
    
    let titles = ["The Piper At The Gates Of Dawn", "A Saucerful Of Secrets",
                  "More", "Ummagumma", "Atom Heart Mother",
                  "Meddle", "Obscured By Clouds", "The Dark Side Of The Moon",
                  "Animals", "The Wall", "The Final Cut",
                  "A Momentary Lapse Of Reason", "The Division Bell"]
    
    let covers = ["1967 - The Piper At The Gates Of Dawn", "1968 - A Saucerful Of Secrets",
                  "1969 - More", "1969 - Ummagumma", "1970 - Atom Heart Mother",
                  "1971 - Meddle", "1972 - Obscured By Clouds", "1973 - The Dark Side Of The Moon",
                  "1977 - Animals", "1979 - The Wall", "1983 - The Final Cut",
                  "1987 - A Momentary Lapse Of Reason", "1994 - The Division Bell"]
}

