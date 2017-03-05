//
//  ViewController.swift
//  BlackJack_using_StackView
//
//  Created by SMIT DOSHI on 11/20/16.
//  Copyright © 2016 SMIT DOSHI. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var firstImageView: UIImageView!
    @IBOutlet weak var secondImageView: UIImageView!
    @IBOutlet weak var thirdImageView: UIImageView!
    @IBOutlet weak var fourthImageView: UIImageView!
    @IBOutlet weak var splitImageView: UIImageView!
    
    @IBOutlet weak var D_firstImageView: UIImageView!
    @IBOutlet weak var D_secondImageView: UIImageView!
    @IBOutlet weak var D_thirdImageView: UIImageView!
    @IBOutlet weak var D_fourthImageView: UIImageView!
    @IBOutlet weak var D_splitImageView: UIImageView!
    
    
    
    @IBOutlet weak var leftScoreLabel: UILabel!
    @IBOutlet weak var rightScoreLabel: UILabel!
    
    
    @IBOutlet weak var splitButton: UIButton!
    @IBOutlet weak var dealButton: UIButton!
    
    @IBOutlet weak var playerCardValue: UILabel!
    @IBOutlet weak var cpuCardLabel: UILabel!
    
    let cardNames = ["ace","card2","card3","card4","card5","card6","card7","card8","card9","card10","jack","queen","king"]
    
    //
    
    //    //Randomized Left Number from 0 to 12
    //    let leftNumber = Int(arc4random_uniform(13));
    //    //Randomized Right Number from 0 to 12
    //    let rightNumber = Int(arc4random_uniform(13));
    //    // Randomized Split Number from 0 to 12
    //    let splitNumber = Int(arc4random_uniform(13));
    //
    
    // Global Variables for Player's Logic
    
    var playerCardNumber: [Int] = [];
    var playercardValue=0;
    
    // Global Variables for Dealer's Logic
    var dealerCardNumber: [Int] = [];
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        changeCardView();
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func randomNumberGen() -> Int {
        var randomNumber = Int(arc4random_uniform(13))
        return randomNumber;
    }
    // Dealer Open Card 1
    func dealerCardOpen_1(){
        D_firstImageView.image = UIImage(named: cardNames[dealerCardNumber[0]]);
    }
    
    // Dealer Open Card 2
    func dealerCardOpen_2(){
        D_secondImageView.image = UIImage(named: cardNames[dealerCardNumber[1]]);
    }
    
    // Dealer Open Card 3
    func dealerCardOpen_3(){
        D_thirdImageView.image = UIImage(named: cardNames[dealerCardNumber[2]]);
    }
    
    // Dealer Open Card 4
    func dealerCardOpen_4(){
        D_fourthImageView.image = UIImage(named: cardNames[dealerCardNumber[3]]);
    }
    
    // Player's Card Number
    
    func changeCardView(){
        
        for loop1 in 0...4{
            playerCardNumber.append(randomNumberGen());
            print("Player's Card:",playerCardNumber[loop1]);
        }
        splitButton.isEnabled=false;
        dealTapped(dealButton);
    }
    
    // Dealer's Card Number
    
    func dealerCardView(){
        for loop1 in 0...4{
            dealerCardNumber.append(randomNumberGen());
            print("Dealer's Card:",dealerCardNumber[loop1]);
        }
    }
    
    // Function to Open Inital Cards
    func setCard(){
        
    }
    
    
    
    // Dealer Logic to be Near 21
    func dealerBestMoveCalc(){
        dealerCardView();
        
    }
    
    
    
    // Here will be my Restart code
    
    func restartMessage(){
            let alert = UIAlertController(title: "Sorry you lost!", message: "Would you like to Restart the Game?", preferredStyle: UIAlertControllerStyle.alert)
            // add the actions (buttons)
            alert.addAction(UIAlertAction(title: "Restart", style: UIAlertActionStyle.default, handler: nil))
            alert.addAction(UIAlertAction(title: "Cancel", style: UIAlertActionStyle.cancel, handler: nil))
            // show the alert
            self.present(alert, animated: true, completion: nil)
    }
    
    @IBAction func dealTapped(_ sender: UIButton) {
        
        
    }
    
    @IBAction func splitTapped(_ sender: AnyObject) {
        splitImageView.image = UIImage(named: cardNames[randomNumberGen()]);
    }
    
}

