//
//  Memo_3rdViewController.swift
//  Spread
//
//  Created by Rui Nara on 2018/01/30.
//  Copyright © 2018年 Rui Nara. All rights reserved.
//

import UIKit

//class Memo_3rdViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
class Memo_3rdViewController: UIViewController {

//    @IBOutlet weak var tableView: UITableView!
    
    // 9. ViewControllerから受け取る文字列を入れる変数
    var text: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print (text)
        
//        tableView.delegate = self
//        tableView.dataSource = self
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return 1
//    }
//
//    // セルのテキストを追加
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell: UITableViewCell = UITableViewCell(style: UITableViewCellStyle.subtitle, reuseIdentifier: "Cell")
//
//        // 10. 受け取った文字列をセルに表示
//        cell.textLabel?.text = text
//        return cell
//    }
//
//    func tableView(table: UITableView, didSelectRowAtIndexPath indexPath:NSIndexPath) {
//        print(text)
//    }
}
