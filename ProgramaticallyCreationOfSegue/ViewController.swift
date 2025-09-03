//
//  ViewController.swift
//  ProgramaticallyCreationOfSegue
//
//  Created by SDC-USER on 03/09/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var switchOutlet: UISwitch!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
//    override func performSegue(withIdentifier identifier : String, sender: Any?){
//        
//    }

    @IBAction func goToYellow(_ sender: Any) {
        // kis scene pe jaana hao will be based on the identifier
        performSegue(withIdentifier: "Yellow", sender: nil)
        if switchOutlet.isOn{
            performSegue(withIdentifier: "Yellow", sender: nil)
        }
    }
    @IBAction func goToRed(_ sender: Any) {
        performSegue(withIdentifier: "Red", sender: nil)
        // nil because this is the first scene
        // if it wasn't the first scene we had to create a Class and and it will have an unique sender
        // so nill method is applicable to the first scene
    }
    
}

