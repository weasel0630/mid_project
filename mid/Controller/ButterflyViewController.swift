//
//  ButterflyViewController.swift
//  mid
//
//  Created by viplab on 2018/5/3.
//  Copyright © 2018年 csie. All rights reserved.
//

import UIKit

class ButterflyViewController: UIViewController {
    
    @IBAction func GoTable(_ sender: UIButton) {
        self.performSegue(withIdentifier: "GoTable", sender: sender.tag)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

        let tag = sender as! Int
        switch tag {
        case 0:
            let destinationController = segue.destination as! ButterflyTableViewController
            destinationController.tag = 0
            destinationController.butterfly = ["北黃蝶", "紋白蝶","高山粉蝶","麻斑粉蝶","雲紋粉蝶"]
            destinationController.image = ["北黃蝶", "紋白蝶","高山粉蝶","麻斑粉蝶","雲紋粉蝶"]
//            destinationController.butterfly = butterflies:[Butterfly]

        
        case 1:
            let destinationController = segue.destination as! ButterflyTableViewController
            destinationController.tag = 1
            destinationController.butterfly = ["武鎧蛺蝶","鹿野黑蔭蝶","朝倉三線蝶","黃斑蛺蝶","綠豹蛺蝶"]
            destinationController.image = ["武鎧蛺蝶","鹿野黑蔭蝶","朝倉三線蝶","黃斑蛺蝶","綠豹蛺蝶"]
//
        case 2:
            let destinationController = segue.destination as! ButterflyTableViewController
            destinationController.tag = 2
            destinationController.butterfly = ["大琉璃紋鳳蝶","青帶鳳蝶","黃裳鳳蝶","綠斑鳳蝶","雙環鳳蝶"]
            destinationController.image = ["大琉璃紋鳳蝶","青帶鳳蝶","黃裳鳳蝶","綠斑鳳蝶","雙環鳳蝶"]
            
        
            
        default:
            break
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        navigationController?.navigationBar.isHidden = true
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
