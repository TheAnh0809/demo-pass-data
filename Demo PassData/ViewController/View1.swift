//
//  View1.swift
//  Demo PassData
//
//  Created by Shi Ying Nguyen on 11/01/2022.
//

import UIKit

protocol TextDelegate{
    func changeTheLable(text : String)
}
class View1: UIViewController , TextDelegate{
    func changeTheLable(text: String) {
        self.TextLB.text = text
    }
    

    @IBOutlet weak var TextLB: UILabel!
    @IBOutlet weak var textField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        NotificationCenter.default.addObserver(self, selector: #selector(didGetNotification(_:)), name: Notification.Name("Text"), object: nil)
        // Do any additional setup after loading the view.
    }
    @objc func didGetNotification(_ notification : Notification){
        let text = notification.object as! String?
        TextLB.text = text
        
    }
    @IBAction func ClickNextView(_ sender: Any) {
        let thisView = UIStoryboard(name: "Main", bundle: nil)
        let secondView = thisView.instantiateViewController(withIdentifier: "DelegatePassData") as! DelegatePassData
        secondView.delegate = self
        self.navigationController?.pushViewController(secondView, animated: true)
        
    }
    
    @IBAction func toComHandle(_ sender: Any) {
        let thisView = UIStoryboard(name: "Main", bundle: nil)
        let secondView = thisView.instantiateViewController(withIdentifier: "CompletionHandleView") as! CompletionHandleView
        secondView.completionHandle = { text in
            self.TextLB.text = text
        }
        self.navigationController?.pushViewController(secondView, animated: true)
    }
    @IBAction func toNotification(_ sender: Any) {
        let thisView = UIStoryboard(name: "Main", bundle: nil)
        let secondView = thisView.instantiateViewController(withIdentifier: "NotificationsViewController") as! NotificationsViewController
        self.navigationController?.pushViewController(secondView, animated: true)
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
