//
//  ShowbutterflyViewController.swift
//  mid
//
//  Created by viplab on 2018/5/3.
//  Copyright © 2018年 csie. All rights reserved.
//

import UIKit

class ShowbutterflyViewController: UIViewController,UITableViewDataSource, UITableViewDelegate
{
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.row{
            case 0:
                let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: ButterflyDetailIconTextCell.self), for: indexPath)as!ButterflyDetailIconTextCell
                cell.iconImageView.image = UIImage(named: "herb")
                cell.shortTextLabel.text = butterfly.herb
                return cell
            case 1:
                let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: ButterflyDetailIconTextCell.self), for: indexPath)as!ButterflyDetailIconTextCell
                cell.iconImageView.image = UIImage(named: "distribution")
                cell.shortTextLabel.text = butterfly.distribution
                return cell
            case 2:
                let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: ButterflyDetailTextCell.self), for: indexPath)as!ButterflyDetailTextCell
                cell.descriptionLabel.text = butterfly.habits
                return cell
            default:
            fatalError("Failed to instantiate the table view cell.")
        }
    }


//    @IBOutlet weak var showimage: UIImageView!
    
    var butterfly: Butterfly = Butterfly()
    @IBOutlet var headerView: ButterflyDetailHeaderView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.largeTitleDisplayMode = .never
        headerView.headerImageView.image = UIImage(named: butterfly.image)
        headerView.name1Label.text = butterfly.name1
        headerView.name2Label.text = butterfly.name2
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
