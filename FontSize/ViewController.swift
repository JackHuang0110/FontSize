//
//  ViewController.swift
//  FontSize
//
//  Created by Jack Huang on 2018/8/9.
//  Copyright © 2018 Jack Huang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var fontSize : Float = 0.0
    
    @IBOutlet weak var showTextField: UITextField!
    @IBOutlet weak var fontLenghLabel: UILabel!
    @IBOutlet weak var fontSizeSlider: UISlider!
    @IBOutlet weak var fontSizeLabel: UILabel!
    
    @IBAction func fontSizeSliderChanged(_ sender: UISlider) {
        
        //取得目前字體
        let font = showTextField.font!
        fontSize = sender.value
        //數字變字串顯示到小數點第二位
        fontSizeLabel.text = String(format: "%.2f", fontSize)
        //指定字體大小 & Float 變 CGFloat
        showTextField.font = font.withSize(CGFloat(fontSize))
        fontLenghLabel.text = String(showTextField.text!.count)

    }
    @IBAction func entryTextField(_ sender: UITextField) {
        fontSizeLabel.text = String(fontSizeSlider.value)
        //確認字數
        fontLenghLabel.text = String(showTextField.text!.count)
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
}

