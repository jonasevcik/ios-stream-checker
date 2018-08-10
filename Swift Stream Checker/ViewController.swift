//
//  ViewController.swift
//  Swift Collector
//
//  Created by NICKT on 10/08/2018.
//  Copyright © 2018 Tensai Corporation. All rights reserved.
//

import UIKit
import AVKit
import AVFoundation

class ViewController: UIViewController {

    @IBOutlet weak var url: UITextField!
    
    @IBAction func clearButton(_ sender: Any) {
        url.text = ""
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destination = segue.destination as!
        AVPlayerViewController
        let playbackUrl = URL(string: url.text!)
        
        if let movieURL = playbackUrl {
            destination.player = AVPlayer(url: movieURL)
        }
    }

}

