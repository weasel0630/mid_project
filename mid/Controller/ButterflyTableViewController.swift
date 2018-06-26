//
//  ButterflyTableViewController.swift
//  mid
//
//  Created by csie on 2018/5/3.
//  Copyright © 2018年 csie. All rights reserved.
//

import UIKit

class ButterflyTableViewController: UITableViewController{
    var tag : Int = 0
    var butterfly : Array<String> = [""]
    var image : Array<String> = [""]
    var butterflies0:[Butterfly] = [
        Butterfly(name1:"北黃蝶",name2:"Eurema mandarina",herb:"鼠李科、豆科植物",distribution:"本種分布於日本、朝鮮半島南部、台灣、華中與華南地區", habits:"本種幼蟲以多種鼠李科、豆科植物為食，一年多世代，成蟲全年可見。",image:"北黃蝶", lat:24.202632, lon:121.003187),
       Butterfly(name1:"紋白蝶",name2:"Pieris rapae",herb:"十字花科",distribution:"白粉蝶廣泛分布於歐洲，北非和亞洲，並意外引入到北美，澳大利亞和紐西蘭，在當地它們已經成為白菜和芥菜等家庭作物的害蟲。", habits:"是白粉蝶屬下的一種蝴蝶，喜歡吸食花蜜。",image:"紋白蝶", lat:24.0039838, lon:120.9296894),
       Butterfly(name1:"高山粉蝶",name2:"Aporia agathon",herb:"小蘗科",distribution:"本種見於喜馬拉雅、阿薩姆、緬甸北部、中國華南、華西等地區。台灣地區於本島中高海拔地區有分布", habits:"本種幼蟲以小蘗科植物，如台灣小蘗、高山小蘗、阿里山十大功勞為食，一年一世代，成蟲在夏季出現，幼蟲會聚集在蟲巢中越冬。",image:"高山粉蝶", lat:23.487447, lon:120.891697),
       Butterfly(name1:"麻斑粉蝶",name2:"Delias pasithoe",herb:"桑寄生科",distribution:"本種分布於於喜馬拉雅、中南半島北部、中國華西、華南地區與臺灣。臺灣地區於本島中高海拔地區可見", habits:"本種幼蟲以桑寄生科植物，如椆櫟柿寄生、臺灣槲寄生等的莖、葉為食，一年一世代，成蟲於春、夏活動，以幼蟲態休眠過冬。",image:"麻斑粉蝶", lat:24.02671, lon:121.147785),
       Butterfly(name1:"雲紋粉蝶",name2:"Appias indra",herb:"寄主食物：大戟科之鐵色、台灣假黃楊",distribution:"分布於台灣全島，約海拔0~3000公尺，但以中南部為主，以嘉義以南之丘陵及低海拔山區、離島龜山島及蘭嶼，另外在中部與北部偶爾會出現不穩定的小族群，偏好出現於有遮蔽的闊葉林環境", habits:"雲紋尖粉蝶主要的發生期是在春、夏兩季，在夏季大發生時，可在台東山區的溪谷觀察到許多的雄蝶群聚於溪床上吸水，更可觀察到雄蝶一隻一隻沿著溪床排列飛行。雌蝶會將卵聚產於寄主的嫩芽或嫩葉上，幼蟲孵化後會以群聚的方式活動，大幼蟲會躲在鄰近嫩葉的成熟葉的葉下表，只有在進食時才會爬至嫩葉。若是觀察到鐵色或台灣假黃楊的嫩葉有被大量啃食，就有機會在嫩葉附近的枝條上發現其幼蟲或是蛹",image:"雲紋粉蝶", lat:23.6018661, lon:120.7040743)]
    var butterflies1:[Butterfly] = [
        Butterfly(name1:"武鎧蛺蝶",name2:"Chitoria ulupi",herb:"朴樹科植物葉片",distribution:"本種分布於中國華西、華東、華中、阿薩密、朝鮮半島與台灣。台灣地區分布於本島中海拔地區，數量稀少", habits:"雄蝶翅面為淡橙褐色，翅上有黑褐色斑，腹面為淡灰黃色且前翅中室外側及後翅中央有白色併列暗褐色的粗帶，在前翅中央有1個黑圓斑。雌蝶翅端及前、後翅中央有白色粗帶，翅面為黑色，腹面為淡灰綠色， 在前翅中央有1個黑圓斑。",image:"武鎧蛺蝶", lat:24.180906, lon:121.403259),
        Butterfly(name1:"鹿野黑蔭蝶",name2:"Zophoessa siderea kanoi",herb:"竹類",distribution:"主要分布於臺灣本島中北部中、高海拔地區。臺灣以外見於華西、華西南、喜瑪拉雅、阿薩密、中南半島北部等地。", habits:"中小型眼蝶。軀體背側暗褐色，腹側淺褐色。前翅直角三角形，前緣弧形，翅端鈍。後翅扇形。翅背面底色黑褐色或褐色，外緣有細帶，後翅亞外緣有白色波線。雌蝶前翅亞前緣有暗色紋。翅腹面底色淺褐色，前、後翅外緣有橙色細帶，內側鑲泛紫色白色亮線。後翅有兩道波狀泛紫色白色亮線貫穿。外側有弧形排列眼紋，眼紋外鑲泛紫色白圈紋。翅基有泛紫色白色亮線鏤空紋。緣毛黑白相間。",image:"鹿野黑蔭蝶", lat:24.180906, lon:121.403259),
        Butterfly(name1:"朝倉三線蝶",name2:"Neptis hesione podarces Nire",herb:"虎葛",distribution:"分布於台灣中北部低至中海拔山區，族群數量不多。", habits:"幼生期資料尚須觀察紀錄。成蟲飛行迅速，會出現在山區森林邊緣向陽處，喜愛吸食腐果、花蜜及濕地上之水分。",image:"朝倉三線蝶", lat:24.180906, lon:121.403259),
        Butterfly(name1:"黃斑蛺蝶",name2:"Sephisa chandra",herb:"殼斗科",distribution:"本種分布於中國華東、華南、華西、中南半島、喜馬拉雅。台灣地區於中、低海拔地區可見，棲息地較另一種臺灣燦蛺蝶為低。", habits:"本種幼蟲以殼斗科植物赤皮、青剛櫟等為食，一年多世代。",image:"黃斑蛺蝶", lat:24.0833273, lon:120.9538377),
        Butterfly(name1:"綠豹蛺蝶",name2:"Argynnis paphia",herb:"懸鉤子、薊",distribution:"分布在 黑龍江，遼宁，吉林，河北，河南，新疆，寧夏，陕西，甘肅，浙江，四川，西藏，湖北，江西，福建，廣西，廣東，雲南，台灣；歐洲，日本，朝鲜，非洲等。", habits:"綠豹蛺蝶吃懸鉤子、薊及矢車菊屬的花蜜，以及蚜蟲的蜜露。它們的飛行能力很強，也較其他豹蛺蝶活躍，故很多時可以在樹冠看到它們在滑翔。它們喜歡棲息在落葉林地，尤其是針葉林內的櫸樹。",image:"綠豹蛺蝶", lat:24.180906, lon:121.403259)]
    var butterflies2:[Butterfly] = [
        Butterfly(name1:"大琉璃紋鳳蝶",name2:"Papilio paris",herb:"芸香科柑橘類、飛龍掌血",distribution:"分布於南亞次大陸、中國大部分省區、東南亞、南中國海各島嶼", habits:"巴黎翠鳳蝶1年發生2代以上，以蛹越冬。成蟲好訪白色系的花，一般在常綠林帶的高處活動，飛行迅速，警覺性高而且很少停息，難以捕捉。",image:"大琉璃紋鳳蝶", lat:24.4495582, lon:120.7544),
        Butterfly(name1:"青帶鳳蝶",name2:"Graphium sarpedon",herb:"樟樹紅楠、紅楠、香楠",distribution:"廣布南亞、東南亞、日本、與澳洲地區。", habits:"飛翔力強，常在低海拔的潮濕與開闊地帶活動，在庭園、街道及樹林空地也常見，有時早上和黃昏常群聚在潮濕地及水池旁憩息。",image:"青帶鳳蝶", lat:24.307667, lon:120.845849),
        Butterfly(name1:"黃裳鳳蝶",name2:"Troides aeacus",herb:"馬兜鈴科",distribution:"本種分布於中國華東、華南、華西、中南半島、北印度、喜馬拉雅等地區。台灣地區於本島低海拔地區可見，因棲地遭人類開發破壞而數量減少。", habits:"本種幼蟲以馬兜鈴科植物，如港口馬兜鈴、台灣馬兜鈴等為食，一年多世代，成蟲全年可見。",image:"黃裳鳳蝶", lat:24.1940709, lon:120.79734083),
        Butterfly(name1:"綠斑鳳蝶",name2:"Graphium agamemnon",herb:"木蘭科",distribution:"木蘭科在台灣平地到低海拔地區，或在校園區內都可以看到這類蝴蝶，尤貝南部恆春半島與台東山區數量較多。在國外的澳洲北部、菲律賓、中國大陸、印尼等也都可見踪跡。", habits:"成蟲幾乎全年可見，生活在北部以外的平地、低海拔山區，其中以南部、東部數量較多。喜好訪花。",image:"綠斑鳳蝶", lat:24.0039838, lon:120.9296894),
        Butterfly(name1:"雙環鳳蝶",name2:"Papilio hoppo",herb:"芸香科",distribution:"本種蝶為台灣特有種", habits:"主要分布於中、高海拔山區，幼蟲寄主芸香科的食茱萸、台灣黃蘗等，雌蝶習慣產卵於樹冠上，成蟲外觀近似烏鴉鳳蝶但本種翅腹面的紅色斑紋為雙環並列，成蟲於7-8月間數量最多，喜歡吸食冇骨消花蜜，飛行快速，為台灣特有種。",image:"雙環鳳蝶", lat:23.6162456, lon:120.7935219),]
            
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationController?.navigationBar.isHidden = false

        //navigationController?.navigationBar.isHidden = false

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return butterfly.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellIdentifier = "Cell"
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath)

        // Configure the cell...
        cell.textLabel?.text = butterfly[indexPath.row]
        cell.imageView?.image = UIImage(named: image[indexPath.row])
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showimage" {
            if let indexPath = tableView.indexPathForSelectedRow {
                let destinationController = segue.destination as! ShowbutterflyViewController
                if (tag == 0){
                    destinationController.butterfly = butterflies0[indexPath.row]
                }
                else if (tag == 1){
                    destinationController.butterfly = butterflies1[indexPath.row]
                }
                else if (tag == 2){
                    destinationController.butterfly = butterflies2[indexPath.row]
                }
                
            }
        }
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
