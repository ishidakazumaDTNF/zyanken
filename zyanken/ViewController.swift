//
//  ViewController.swift
//  zyanken
//
//  Created by 石田一馬 on 2017/04/21.
//  Copyright © 2017年 ishidakazuma. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    
    @IBOutlet weak var answerLabel: UILabel!
    @IBOutlet weak var answerImage: UIImageView!
    
    //変数宣言
    var answerNumber:UInt32 = 0
    var newanswerNumber:UInt32 = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        answerLabel.text="これからじゃんけんします！"
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func zyankenButton(_ sender: Any) {

        //値と被る場合もう一度乱数を取得
        repeat{
            newanswerNumber = arc4random_uniform(3)
        } while answerNumber == newanswerNumber
        
        answerNumber = newanswerNumber
        
        //判断
        switch answerNumber {
            
            case 0:
                answerLabel.text="グー"
                answerImage.image=UIImage(named:"gu")
            case 1:
                answerLabel.text="チョキ"
                answerImage.image=UIImage(named:"choki")
            case 2:
                answerLabel.text="パー"
                answerImage.image=UIImage(named:"pa")
            default:break
        }
        
        
        
        
        
        
    }
    


}

