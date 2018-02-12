//
//  ViewController.swift
//  PracticeSwift
//
//  Created by Andrew Tran on 2/11/18.
//  Copyright © 2018 Andrew Tran. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var QuoteLabel: UILabel!
    
    let mFacts = QuoteProvider().quotes
    var mFactIdx = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        QuoteLabel.text = mFacts[mFactIdx]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func onButtonClicked() {
        mFactIdx = mFactIdx == mFacts.count - 1 ? 0 : mFactIdx + 1
        QuoteLabel.text = mFacts[mFactIdx]
    }
}

