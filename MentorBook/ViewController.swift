//
//  ViewController.swift
//  MentorBook
//
//  Created by 小西星七 on 2021/02/14.
//

import UIKit

class ViewController: UIViewController {
    
    var mentorArray: [Mentor] = []
    

    @IBOutlet var imageView: UIImageView!
    @IBOutlet var courseLabel: UILabel!
    @IBOutlet var nameLabel: UILabel!
    
    var index: Int = 0
    
    
    func setUI(){
        imageView.image = mentorArray[index].getImage()
        nameLabel.text = mentorArray[index].name
        courseLabel.text = mentorArray[index].course
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        mentorArray.append(Mentor(name: "Kony", imageName: "Kony.png", course: "Minecraft/Unity"))
        mentorArray.append(Mentor(name: "See", imageName: "See.png", course: "Movie/Unity"))
        mentorArray.append(Mentor(name: "TT", imageName: "TT.png", course: "WebS/iPhone"))
        
        setUI()
    }

    @IBAction func tsugi() {
        
        
        if index < mentorArray.count - 1 {
            
            index = index + 1
            
        }else{
            
            index = 0
            
        }
        
        setUI()
        
    }
    
    @IBAction func mae() {
        
        if index == 0 {
            
            index = mentorArray.count - 1
            
        }else{
            
            index = index - 1
            
        }
        
        setUI()
        
    }
    
    
}

