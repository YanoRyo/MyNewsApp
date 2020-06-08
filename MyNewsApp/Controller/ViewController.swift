//
//  ViewController.swift
//  MyNewsApp
//
//  Created by 矢野涼 on 2020-05-27.
//  Copyright © 2020 Ryo Yano. All rights reserved.
//

import UIKit
import Lottie

class ViewController: UIViewController {

    var timer:Timer = Timer()
    @IBOutlet weak var imageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let animationView = AnimationView()
        let animation = Animation.named("4")
        animationView.frame = CGRect(x: CGFloat(0), y: 0, width: imageView.frame.size.width, height: imageView.frame.size.height)
        animationView.animation = animation
        animationView.contentMode = .scaleAspectFit
        animationView.loopMode = .playOnce
        animationView.play()
        imageView.addSubview(animationView)
        timer = Timer.scheduledTimer(timeInterval: 2.8, target: self, selector: #selector(nextView), userInfo: nil, repeats: false)
        
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.isNavigationBarHidden = true
    }

    @objc func nextView(){
        self.performSegue(withIdentifier: "next", sender: nil)
    }

}

