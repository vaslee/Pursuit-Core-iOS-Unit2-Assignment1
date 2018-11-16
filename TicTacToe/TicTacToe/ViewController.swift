//
//  ViewController.swift
//  TicTacToe
//
//  Created by Alex Paul on 11/8/18.
//  Copyright © 2018 Pursuit. All rights reserved.
//

import UIKit



class ViewController: UIViewController {

    @IBOutlet weak var button1: GameButton!
    
    @IBOutlet weak var button2: GameButton!
    
    @IBOutlet weak var button3: GameButton!
    
    @IBOutlet weak var button4: GameButton!
    
    @IBOutlet weak var button5: GameButton!
    
    @IBOutlet weak var button6: GameButton!
    
    @IBOutlet weak var button7: GameButton!
    
    @IBOutlet weak var button8: GameButton!
    
    @IBOutlet weak var button9: GameButton!
    
    @IBOutlet weak var lable: UILabel!
    
    @IBOutlet weak var restartGame: GameButton!
    
    
    @IBOutlet var arrOFUIButtons: [GameButton]!

    
    var playerTurn = 1
    var statuOfGame = [[0,0,0],[0,0,0],[0,0,0]]
//    let winningBord = [
   
//    let winningBord = [[0,1,2],[3,4,5],[6,7,8],
//                       [0,3,6],[1,4,7],[2,5,8],
//                       [0,4,8],[2,4,6]]
  //  var gameData = false
    
    func gameData() {
    arrOFUIButtons.forEach({ $0.isEnabled = false })
    }
    
    override func viewDidLoad() {
    super.viewDidLoad()
    }
    
    
    @IBAction func actionOfButtons(_ sender: GameButton) {
        
        if statuOfGame[sender.row][sender.col] == 0 {

//            print("yes")
            if playerTurn == 1 {
                sender.setImage(UIImage(named: "x"), for: .normal)
                statuOfGame[sender.row][sender.col] = 1
                playerTurn = 2
                print(statuOfGame)
            } else {
                sender.setImage(UIImage(named: "circle"), for: .normal)
                statuOfGame[sender.row][sender.col] = 2
                playerTurn = 1
                print(statuOfGame)
            }
        }
        
        //for data in statuOfGame {
        for playerNumber in [1,2] {
            for row in 0..<3 {
                if statuOfGame[sender.row] == [1, 1, 1] {
                    //print("Player \(playerNumber) wins!")
                    lable.text = " X WIN !! "
                    arrOFUIButtons.forEach{$0.isUserInteractionEnabled = false}
                }
                if statuOfGame[sender.row] == [2, 2, 2] {
                    //print("Player \(playerNumber) wins!")
                    lable.text = " O WIN !! "
                    arrOFUIButtons.forEach{$0.isUserInteractionEnabled = false}
                }
            }
            for playerNumber1 in [1,2] {
                
                    for col in 0..<statuOfGame[0].count{

                  //  if sender.col == sender.row {
                    if statuOfGame[sender.col] == [1, 1, 1] {
                        //print("Player \(playerNumber1) wins!")
                        lable.text = " X WIN !! "
                        arrOFUIButtons.forEach{$0.isUserInteractionEnabled = false}
                }
                    if statuOfGame[sender.col] == [2, 2, 2] {
                        //print("Player \(playerNumber1) wins!")
                        lable.text = " O WIN !! "
                        arrOFUIButtons.forEach{$0.isUserInteractionEnabled = false}
                    }
                    
            }
            //column
            //diagnal
        }
            }
//            if statuOfGame[0] == [1, 1, 1] {
////            if statuOfGame[0][0] == 1 && statuOfGame[0][1] == statuOfGame[0][0] && statuOfGame[0][2] == statuOfGame[0][1] {
//                gameData()
//                if statuOfGame[sender.row][sender.col] == 1 {
//                    //            print("x win")
//                    lable.text = " X WIN !! "
//                } else if statuOfGame[sender.row][sender.col] == 2 {
//                    //            print("circle win")
//                    lable.text = " O WIN !!"
//                }
//        }
            
//
        
    
        }
    
}
                


   // gameData = false
        
        


//
//    @IBAction func restartGame(_ sender: GameButton) {
//
//        statuOfGame = [[0,0,0,0,0,0,0,0,0]]
//        gameData()
//        player = 1

//////        restartGame.isHidden = true
//////        lable.isHidden = true
////
//////        for num in 0...8 {
//////            let button = view.viewWithTag(num)
//////            button.setImage(nil, for: .normal)
//////        }
//////    }
////
//        arrOFUIButtons.forEach({ $0.setTitle("😀", for: .normal)})
//}
//
//
//}
////if data[0] != 0 && winningData.winningBord[0] == winningData.winningBord[1] && winningData.winningBord[1] == winningData.winningBord[2] {
////    gameData = false



