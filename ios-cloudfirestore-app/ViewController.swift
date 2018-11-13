//
//  ViewController.swift
//  ios-cloudfirestore-app
//

import UIKit
import Firebase

class ViewController: UIViewController {

    @IBOutlet weak var content: UITextField!
    
    @IBAction func onClickAdd(_ sender: UIButton) {
        let db = Firestore.firestore()
        db.collection("todos").addDocument(data: [
            "content": content.text,
            "updatedAt": FieldValue.serverTimestamp(),
            "createdAt": FieldValue.serverTimestamp(),
            ]) { err in
                if let err = err {
                    
                } else {
                    
                }
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }
}

