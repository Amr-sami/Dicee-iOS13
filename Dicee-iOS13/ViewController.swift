import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var diceImageView2: UIImageView!
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var scoreLabel: UILabel!
    
    var score = 0

    @IBAction func buttonPressed(_ sender: UIButton) {
        
        let diceArray = [
            UIImage(imageLiteralResourceName: "DiceOne"),
            UIImage(imageLiteralResourceName: "DiceTwo"),
            UIImage(imageLiteralResourceName: "DiceThree"),
            UIImage(imageLiteralResourceName: "DiceFour"),
            UIImage(imageLiteralResourceName: "DiceFive"),
            UIImage(imageLiteralResourceName: "DiceSix")
        ]
        
        let firstDiceIndex = Int.random(in: 0...5)
        let secondDiceIndex = Int.random(in: 0...5)
        
        diceImageView1.image = diceArray[firstDiceIndex]
        diceImageView2.image = diceArray[secondDiceIndex]
        
        if diceImageView1.image == diceImageView2.image {
            score += 1
            scoreLabel.text = "Score: \(score)"
        }
        print("Score: \(score)")
    }
}
