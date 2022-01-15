//
//  DelegatePassData.swift
//  Demo PassData
//
//  Created by Shi Ying Nguyen on 11/01/2022.
//

import UIKit

class DelegatePassData: UIViewController {
    var delegate : TextDelegate?
    @IBOutlet weak var textFriedl: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    

    @IBAction func clickOK(_ sender: Any) {
        delegate?.changeTheLable(text: textFriedl.text!)
        navigationController?.popViewController(animated: true)
    }
    override func viewDidDisappear(_ animated: Bool) {
        
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
