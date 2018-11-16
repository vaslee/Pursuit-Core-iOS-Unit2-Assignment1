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
    
    func gameData() {
    arrOFUIButtons.forEach({ $0.isEnabled = true })
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
            //column
            for col in 0..<statuOfGame.count {
               var colWin = [Int]()
                    for row in 0..<statuOfGame.count{

                        colWin.append(statuOfGame[row][col])
                  //  if sender.col == sender.row {
                    if colWin == [1, 1, 1] {
                        //print("Player \(playerNumber1) wins!")
                        lable.text = " X WIN !! "
                        arrOFUIButtons.forEach{$0.isUserInteractionEnabled = false}
                }
                    if colWin == [2, 2, 2] {
                        //print("Player \(playerNumber1) wins!")
                        lable.text = " O WIN !! "
                        arrOFUIButtons.forEach{$0.isUserInteractionEnabled = false}
                    }
                    
            }
            }
            //diagnal
        var diagna = [Int]()
            for row in 0..<statuOfGame.count{
                for col in 0..<statuOfGame.count {
                    if row == col {
                        diagna.append(statuOfGame[row][col])
                        if diagna == [1, 1, 1] {
                            //print("Player \(playerNumber1) wins!")
                            lable.text = " X WIN !! "
                            arrOFUIButtons.forEach{$0.isUserInteractionEnabled = false}
                        }
                        if diagna == [2, 2, 2] {
                            //print("Player \(playerNumber1) wins!")
                            lable.text = " O WIN !! "
                            arrOFUIButtons.forEach{$0.isUserInteractionEnabled = false}
                        }
                    }
                }

        
            }
            
        }
    
}
                
    @IBAction func Restart(_ sender: GameButton) {
        
        
        statuOfGame = [[0,0,0],[0,0,0],[0,0,0]]
        //gameData()
        playerTurn = 1
        
        for button in arrOFUIButtons {
            button.isUserInteractionEnabled = true
            button.imageView?.isHidden = true
            
        }
        
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






//            if statuOfGame[0] == [1, 1, 1] {
//            if statuOfGame[0][0] == 1 && statuOfGame[0][1] == statuOfGame[0][0] && statuOfGame[0][2] == statuOfGame[0][1] {
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
