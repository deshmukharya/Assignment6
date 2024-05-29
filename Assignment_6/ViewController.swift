//
//  ViewController.swift
//  Assignment_6
//
//  Created by E5000861 on 28/05/24.
//

import UIKit

class ViewController: UIViewController {
  
    
    let singleTonInstance = DataManager.shared
    override func viewDidLoad() {
        super.viewDidLoad()
      
        if Bundle.main.path(forResource: "data1", ofType: "txt") != nil {
            print("File exits")
            } else {
                  print("File data.txt not found")
                  DispatchQueue.main.async {
                      self.showalerts()
                  }
        }
        
        singleTonInstance.store(name: "Arya", age: 21, ispresent: true)
        let display = singleTonInstance.retrieve()
        print(display)
    }
     
        func showalerts(){
            let alertController = UIAlertController(title: "Error", message: "File Not Found", preferredStyle: .alert)
            
            let Action1 = (UIAlertAction(title: "OK", style: UIAlertAction.Style.destructive, handler: { UIAlertAction in
                self.showalerts()
            }))
            
            alertController.addAction(Action1)
            self.present(alertController, animated: true, completion: nil)
        
    }
    
    
}
