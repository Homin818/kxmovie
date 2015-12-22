//
//  ViewController.swift
//  KXTest
//
//  Created by Sander Korebrits on 22/12/15.
//  Copyright © 2015 Designlapp. All rights reserved.
//

import UIKit
import KXFFMPEG

class ViewController: UIViewController {
    @IBOutlet weak private(set) var button: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        button.addTarget(self, action: Selector("showStream"), forControlEvents: .TouchUpInside)
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func showStream(){
        let url = "rtsp://184.72.239.149/vod/mp4:BigBuckBunny_115k.mov"
        
        let controller = KxMovieViewController.movieViewControllerWithContentPath(url, parameters: nil) as! KxMovieViewController
        self.presentViewController(controller, animated: true, completion: nil)
    }

}

