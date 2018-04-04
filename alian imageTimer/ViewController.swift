//
//  ViewController.swift
//  alian imageTimer
//
//  Created by D7703_16 on 2018. 4. 4..
//  Copyright © 2018년 D7703_16. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
var counter = 1

    var myTimer = Timer()
    
    //123123123213123
    
    @IBOutlet weak var imageCounter: UILabel!
    
    @IBOutlet weak var myImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    super.viewDidLoad()
        //gg
        
        myImageView.image = UIImage(named: "frame1.png")
    imageCounter.text = String(counter)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func play(_ sender: Any) {
        // Timer 실행
        myTimer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(doAnimation), userInfo: nil, repeats: true)
    }
    
    @IBAction func stop(_ sender: Any) {
        // Timer를 중지
        myTimer.invalidate()
    }
    
    // Timer에 의해 동적으로 호출되는 함수
    @objc func doAnimation() {
        if counter == 5 {
            counter = 1
        } else {
            counter = counter + 1
        }
        
        myImageView.image = UIImage(named: "frame\(counter).png")
        imageCounter.text = String(counter)
    }
}
