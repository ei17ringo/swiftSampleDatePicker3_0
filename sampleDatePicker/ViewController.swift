//
//  ViewController.swift
//  sampleDatePicker
//
//  Created by Eriko Ichinohe on 2016/01/28.
//  Copyright © 2016年 Eriko Ichinohe. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myDatePicker: UIDatePicker!
    override func viewDidLoad() {
        super.viewDidLoad()
        myDatePicker.datePickerMode = UIDatePickerMode.date
        let df = DateFormatter()
        df.dateFormat = "yyyy/MM/dd"
        myDatePicker.date = df.date(from: "2015/01/01")!
        myDatePicker.minimumDate = df.date(from: "2015/01/01")
        myDatePicker.maximumDate = df.date(from: "2016/12/31")
    }
    
    
    @IBAction func dateChanged(_ sender: UIDatePicker) {
        let df = DateFormatter()
        df.dateFormat = "yyyy/MM/dd"
        print(df.string(from: sender.date))
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

