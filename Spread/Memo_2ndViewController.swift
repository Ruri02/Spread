//
//  Memo_2ndViewController.swift
//  Spread
//
//  Created by Rui Nara on 2018/01/30.
//  Copyright © 2018年 Rui Nara. All rights reserved.
//

import UIKit

class Memo_2ndViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    
    // 7. SecondViewに渡す文字列
    var selectedText: String?
    var selectedImage: UIImage?
    
    // テーブルに表示するテキスト
    let texts = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // セルの行数
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return texts.count
    }
    
    // セルのテキストを追加
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: UITableViewCell = UITableViewCell(style: UITableViewCellStyle.subtitle, reuseIdentifier: "Cell")
        
        cell.textLabel?.text = texts[indexPath.row]
        return cell
    }
    
    func tableView(_ table: UITableView, didSelectRowAt indexPath:IndexPath) {
        
        print ("きてる")
        print(texts[indexPath.row])
        
        // 8. SecondViewControllerに渡す文字列をセット
        selectedText = texts[indexPath.row]
        
        // 8. SecondViewControllerへ遷移するSegueを呼び出す
        performSegue(withIdentifier: "showMemo_3rdView",sender: nil)
        
    }
    
//    // Cell が選択された場合
//    func tableView(_ table: UITableView,didSelectRowAt indexPath: IndexPath) {
//        // [indexPath.row] から画像名を探し、UImage を設定
//        selectedImage = UIImage(named:texts[indexPath.row])
//        if selectedText != nil {
//            // SubViewController へ遷移するために Segue を呼び出す
//            performSegue(withIdentifier: "toMemo_3rdViewController",sender: nil)
//        }
//    }
    
    
    // Segueで遷移時の処理
    func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject!) {
        if (segue.identifier == "showMemo_3rdView") {
            let secondVC: Memo_3rdViewController = (segue.destination as? Memo_3rdViewController)!
            // 11. SecondViewControllerのtextに選択した文字列を設定する
            secondVC.text = selectedText
        }
    }
}
