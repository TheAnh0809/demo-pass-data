//
//  NotificationsViewController.swift
//  Demo PassData
//
//  Created by Shi Ying Nguyen on 15/01/2022.
//

import UIKit

class NotificationsViewController: UIViewController {

    @IBOutlet weak var textFrield: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        NotificationCenter.default.post(name: Notification.Name("Text"), object: textFrield.text)
    }

    @IBAction func clickOK(_ sender: Any) {
        navigationController?.popViewController(animated: true)
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
