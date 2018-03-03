//
//  TodayViewController.swift
//  iosApp
//
//  Created by Daichi Shibata on 2018/02/17.
//  Copyright © 2018 dsthack. All rights reserved.
//

import UIKit
import Alamofire
import AlamofireImage

class TodayViewController: UIViewController ,
UITableViewDataSource, UITableViewDelegate{
    
    //@IBOutlet weak var sampleImage: UIImageView!
    
    @IBOutlet var table:UITableView!
    // section毎の画像配列
    let imgArray: NSArray = [
        "sample1","sample2",
        "sample3","sample4",
        "sample5"]
    
    let label2Array: NSArray = [
        "2013/8/23/16:04","2013/8/23/16:15",
        "2013/8/23/16:47","2013/8/23/17:10",
        "2013/8/23/1715:","2013/8/23/17:21",
        "2013/8/23/17:33","2013/8/23/17:41"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
//        Alamofire.request("https://httpbin.org/image/png").responseImage { response in
//            debugPrint(response)
//
//            print(response.request)
//            print(response.response)
//            debugPrint(response.result)
//
//            if let image = response.result.value {
//                print("image downloaded: \(image)")
//            }
//        }
        self.table.rowHeight = 500
    }
    
    //Table Viewのセルの数を指定
    func tableView(_ table: UITableView,
                   numberOfRowsInSection section: Int) -> Int {
        return imgArray.count
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
    
    //各セルの要素を設定する
    func tableView(_ table: UITableView,
                   cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        // tableCell の ID で UITableViewCell のインスタンスを生成
        let cell = table.dequeueReusableCell(withIdentifier: "tablecell",
                                             for: indexPath)
        
        let img = UIImage(named: imgArray[indexPath.row] as! String)
        
        // Tag番号 1 で UIImageView インスタンスの生成
        let imageView = cell.viewWithTag(1) as! UIImageView
        imageView.image = img
        
        // Tag番号 ２ で UILabel インスタンスの生成
        let label1 = cell.viewWithTag(2) as! UILabel
        label1.text = "No." + String(indexPath.row + 1)
        
        return cell
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
