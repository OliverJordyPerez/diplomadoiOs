//
//  Sign.swift
//  RockPaperScissors
//
//  Created by OliverPérez on 22/08/18.
//  Copyright © 2018 OliverPérez. All rights reserved.
//

import Foundation

public enum Sign {
    
    case rock, paper, scissor
    func getIcon() -> String{
        switch self {
            case .rock: return "👊"
            case .paper: return "🖐"
            case .scissor: return "✌️"
        }
        
    }
    func defeats(_ other: Sign) -> GameState {
        
        switch self {
            case .rock:
                switch other {
                    case .rock: return .draw
                    case .paper: return .lose
                    case .scissor: return .win
                }
            case .paper:
                switch other {
                    case .rock: return .win
                    case .paper: return .draw
                    case .scissor: return .lose
                    
                }
            case .scissor:
                switch other {
                    case .rock: return .lose
                    case .paper: return .win
                    case .scissor: return .draw
                }
        }
        
    }
}
