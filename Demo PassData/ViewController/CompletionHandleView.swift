//
//  CompletionHandleView.swift
//  Demo PassData
//
//  Created by Shi Ying Nguyen on 15/01/2022.
//

import UIKit

class CompletionHandleView: UIViewController {
    @IBOutlet weak var textField: UITextField!
    public var completionHandle :((String?)->Void)?
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        completionHandle?(textField.text)
    }
    @IBAction func clickOk(_ sender: Any) {
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
