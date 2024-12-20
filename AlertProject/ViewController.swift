//
//  ViewController.swift
//  AlertProject
//
//  Created by Büşra Gazel on 20.12.2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var userNameText: UITextField!
    @IBOutlet weak var passwordText: UITextField!
    @IBOutlet weak var pasword2Text: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func signUpButton(_ sender: Any) {
        /*
        let alert = UIAlertController(title: "Hata", message: "UserName not found", preferredStyle: UIAlertController.Style.alert)
        let okButton = UIAlertAction(title: "Ok", style: UIAlertAction.Style.default) { UIAlertAction in
            print("Button Clicked")
        }
        alert.addAction(okButton)
        self.present(alert, animated: true, completion: nil) // bir görünüm göstermeni istiyorum diyorum. (gösterilmek istenilen görünüm , animasyon olsun mu ? , Tamamlandıktan sonra bir işlem yapılacak mı? )
        
        */
        
        if userNameText.text == "" {
            
            makeAlert(title: "Error", message: "Username not found")
            
        } else if passwordText.text == "" {
            
            makeAlert(title: "Error", message: "Password not found")
           
        } else if passwordText.text != pasword2Text.text {
            
            makeAlert(title: "Error", message: "Password not match")
            
        } else {
            
            makeAlert(title: "Success", message: "User OK")
            
        }
            
    }
    
    
    func makeAlert(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertController.Style.alert)
        let okButton = UIAlertAction(title: "Ok", style: UIAlertAction.Style.default, handler: nil)
        alert.addAction(okButton)
        self.present(alert, animated: true, completion: nil)
    }
        
        
}


