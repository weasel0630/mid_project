//
//  ShowbutterflyViewController.swift
//  mid
//
//  Created by viplab on 2018/5/3.
//  Copyright © 2018年 csie. All rights reserved.
//

import UIKit

class ShowbutterflyViewController: UIViewController {

    @IBOutlet weak var showimage: UIImageView!
    var bbb = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        showimage.image = UIImage(named: bbb)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
