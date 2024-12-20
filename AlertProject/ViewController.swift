//
//  ViewController.swift
//  AlertProject
//
//  Created by Musa on 20.12.2024.
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
        
        let alert = UIAlertController(title: "Hata", message: "UserName not found", preferredStyle: UIAlertController.Style.alert)
        let okButton = UIAlertAction(title: "Ok", style: UIAlertAction.Style.default) { UIAlertAction in
            print("Button Clicked")
        }
        alert.addAction(okButton)
        self.present(alert, animated: true, completion: nil) // bir görünüm göstermeni istiyorum diyorum. (gösterilmek istenilen görünüm , animasyon olsun mu ? , Tamamlandıktan sonra bir işlem yapılacak mı? )
        
        
    }
}

