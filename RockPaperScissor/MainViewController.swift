//
//  MainViewController.swift
//  RockPaperScissor
//
//  Created by Jimmy on 2021/1/3.
//

import UIKit

class MainViewController: UIViewController {
    
    var Image = ["rock","paper","scissors"]

    @IBOutlet weak var myrusltLabel: UILabel!
    @IBOutlet weak var cresultLabel: UILabel!
    @IBOutlet weak var computer: UIImageView!
    @IBOutlet weak var alertLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        computer.image = UIImage(named: "Start")
        

        //randonImage()
        // Do any additional setup after loading the view.
    }
    @IBAction func paper(_ sender: Any) {
        randonImage()
        if computer.image == UIImage(named: Image[0]) {
            alertLabel.text = "You Win!!"
            result(alertLabel.text!)
        }else if computer.image == UIImage(named: Image[2]){
            alertLabel.text = "You Lose!!"
            result(alertLabel.text!)
        }else {
            alertLabel.text = "Try it!!"
        }
        
    }
    
    @IBAction func Rock(_ sender: Any) {
        randonImage()
        if computer.image == UIImage(named: Image[1]){
            alertLabel.text = "Lose!!"
            result(alertLabel.text!)
        }else if computer.image == UIImage(named: Image[2]){
            alertLabel.text = "You Win!!"
            result(alertLabel.text!)
        }else{
            alertLabel.text = "Try it!!"
        }
    }
    
    @IBAction func scissors(_ sender: Any) {
        randonImage()
        if computer.image == UIImage(named: Image[0]) {
            alertLabel.text = "You Lose!!"
            result(alertLabel.text!)
        }else if computer.image == UIImage(named: Image[1]){
            alertLabel.text = "You Win!!"
            result(alertLabel.text!)
        }else{
            alertLabel.text = "Try it!!"
        }
    }
    
    func randonImage() {
        computer.image = UIImage(named: (Image.randomElement() ?? Image[0]))
    }
    
    func result(_ alert: String){
        
        if alert == "You Win!!" {
            myrusltLabel.text = String(Int(myrusltLabel.text!)! + 1)
        }else{
            cresultLabel.text = String(Int(cresultLabel.text!)! + 1)
        }
        
        if myrusltLabel.text == "5"{
            let alertController = UIAlertController(
                title: "You do it", message: "You win the Game!!", preferredStyle: .alert
            )
            let okButton = UIAlertAction(
                title: "Ok", style: .default) { (UIAlertAction) in
            }
            alertController.addAction(okButton)
            self.present(alertController, animated: true, completion: nil)
        }
        else if cresultLabel.text == "5" {
            let alertController = UIAlertController(title: "Game Over", message: "You lose money", preferredStyle: .alert)
            let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
            alertController.addAction(okAction)
            present(alertController, animated: true, completion: nil)
        }
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
