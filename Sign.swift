//
//  Sign.swift
//  RPS
//
//  Created by 5e on 12/20/22.
//

import Foundation

func randomSign() -> Sign {
    let sign = Int.random(in: 0...2)
    if sign == 0 {
        return .rock
        
    } else if sign == 1 {
        return .paper
        
    } else {
        return .scissors
        
    }
    
}

enum Sign {
    case rock
    case paper
    case scissors
    
    var emoji:String {
        if self == .rock {
            return "👊"
        } else if self == .paper {
            return "✋"
        } else{
            return "✌️"
        }
        
    }
    
    func checkWin(sign: Sign) -> GameState{
        if self == .rock && sign == .scissors || self == .paper && sign == .rock || self == .scissors && sign == .paper{
            return .win
        } else if self == .rock && sign == .paper || self == .paper && sign == .scissors || self == .scissors && sign == .rock {
            return .lose
        } else {
            return .draw
        }
    }
}
