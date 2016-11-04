//
//  ViewController.swift
//  MultimediaDemo
//
//  Created by Omolara Adejuwon on 4/10/16.
//  Copyright © 2016 larikraun. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIImagePickerControllerDelegate,UINavigationControllerDelegate {
    @IBOutlet weak var iv: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func takePicture(sender: UIButton) {
    }
    
    @IBAction func pickPicture(sender: UIButton) {
        let picker = UIImagePickerController()
        picker.delegate = self
        picker.allowsEditing = true
        picker.sourceType=UIImagePickerControllerSourceType.PhotoLibrary
        presentViewController(picker, animated: true, completion: nil)
    }
    /*  func imagePickerController(picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [NSObject : AnyObject]) {
    //write codes here
    let img = info[UIImagePickerControllerEditedImage] as! UIImage
    iv.image = img
    print("Got an image")
    if let pickedImage:UIImage=(info[UIImagePickerControllerOriginalImage]) as! UIImage{
    let selectorToCell = Selector("imageHasSavedSuccessfully;didFinisjSavingWithErro:context:")
    UIImageWriteToSavedPhotosAlbum(pickedImage, self, selectorToCell, nil)
    
    }
    
    }*/
    func imagePickerController(picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : AnyObject]) {
        let img = info[UIImagePickerControllerEditedImage] as! UIImage
        iv.image = img
        picker.dismissViewControllerAnimated(true, completion: nil)
    }
}

