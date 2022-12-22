//
//  ViewController.swift
//  RPS
//
//  Created by 5e on 12/20/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var computerSign: UILabel!
    
    @IBOutlet weak var gameStatus: UILabel!
    
    @IBOutlet weak var handSign: UIButton!
    
    @IBOutlet weak var handSign2: UIButton!
    
    @IBOutlet weak var handSign3: UIButton!
    
    @IBOutlet weak var playAgain: UIButton!
    
    override func viewDidLoad() {
        
            super.viewDidLoad()
        gameStateUI(state: .start)
        
            // Do any additional setup after loading the view.
        }
    
    func gameStateUI(state: GameState) {
        if state == .start {
            computerSign.text = "🤖"
            gameStatus.text = "Make a move"
            playAgain.isHidden = true
            
            handSign.isEnabled = true
            handSign2.isEnabled = true
            handSign3.isEnabled = true
            view.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        } else if state == .win {
            view.backgroundColor = #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1)
                gameStatus.text = "You Won"
            playAgain.isHidden = false
        } else if state == .lose {
            view.backgroundColor = #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1)
            gameStatus.text = "Bro Lost 💀"
            playAgain.isHidden = false
            
        } else if state == .draw{
            view.backgroundColor = #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)
            gameStatus.text = "Draw"
            
            playAgain.isHidden = false
        }
    }
    
    func play(bruh: Sign){
        let bandy = randomSign()
        let bruh2 = bruh.checkWin(sign: bandy)
        
        computerSign.text = bandy.emoji
        
        handSign.isEnabled = false
        handSign2.isEnabled = false
        handSign3.isEnabled = false
        
        playAgain.isHidden = true
        gameStateUI(state: bruh2)
    }
 
    @IBAction func handSignAct(_ sender: Any) {
        play(bruh: .rock)
    }
    
    @IBAction func handSignAct2(_ sender: Any) {
        play(bruh: .paper)
    }
    
    @IBAction func handSignAct3(_ sender: Any) {
        play(bruh: .scissors)
    }
    
    @IBAction func playAgainAct(_ sender: Any) {
        gameStateUI(state: .start)
    }
    
    
    
    


}

