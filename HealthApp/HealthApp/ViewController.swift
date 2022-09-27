//
//  ViewController.swift
//  HealthApp
//
//  Created by 강민규 on 2022/09/20.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var sleepView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let gesture = UITapGestureRecognizer(target: self, action: #selector(goPage(sender:)))
        self.sleepView.addGestureRecognizer(gesture)
        
    }
    
    @objc func goPage(sender : UIGestureRecognizer){
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        let nextVC = storyboard.instantiateViewController(withIdentifier: "nextVC")
        
        self.navigationController?.pushViewController(nextVC, animated: true)
    }
}

