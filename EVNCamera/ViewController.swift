//
//  ViewController.swift
//  EVNCamera
//
//  Created by developer on 2017/6/9.
//  Copyright © 2017年 仁伯安. All rights reserved.
//

import UIKit

class ViewController: UIViewController, EVNCameraControllerDelegate
{

    @IBOutlet weak var openCameraBtn: UIButton!

    @IBOutlet weak var previewImageView: UIImageView!

    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func openCameraAction(_ sender: Any)
    {
        let cameraController:EVNCameraController = EVNCameraController.init()
        cameraController.cameraControllerDelegate = self;
        self.present(cameraController, animated: true, completion: nil)
    }

    func cameraDidFinishShoot(withCameraImage cameraImage: UIImage!)
    {
        self.previewImageView.image = cameraImage;
    }
}

