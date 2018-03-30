//
//  ViewController.swift
//  AutoLayoutLearning
//
//  Created by Srijan on 27/03/18.
//  Copyright © 2018 Srijan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let imageView : UIImageView = {
       let tempImageView = UIImageView()
       tempImageView.backgroundColor = UIColor.yellow
       tempImageView.contentMode = .scaleAspectFit
       tempImageView.clipsToBounds = true
       
        // we need to set translatesAutoresizingMaskIntoConstraints propoerty as false to provide constraints programmetically
       tempImageView.translatesAutoresizingMaskIntoConstraints = false
       return tempImageView
    }()
    
    let topHalfView : UIView = {
       let view = UIView(frame: .zero)
       view.backgroundColor = UIColor.purple
       view.isUserInteractionEnabled = true
       
        // we need to set translatesAutoresizingMaskIntoConstraints propoerty as false to provide constraints programmetically
       view.translatesAutoresizingMaskIntoConstraints = false
      
        return view
    }()
    
    let textView : UITextView = {
       let tempTextView = UITextView()
       tempTextView.backgroundColor = UIColor.lightGray
     
        // we need to set translatesAutoresizingMaskIntoConstraints propoerty as false to provide constraints programmetically
       tempTextView.translatesAutoresizingMaskIntoConstraints = false
       
        // Paragraph style enables you to change alingment
        let titleParagraphStyle = NSMutableParagraphStyle()
        titleParagraphStyle.alignment = .center
        
        // Mutliple line in a textview with different style of strings
        
        var tempAttributedString = NSMutableAttributedString(string: "My Name Is Srijan", attributes: [NSAttributedStringKey.font : UIFont.boldSystemFont(ofSize: 18.0), NSAttributedStringKey.foregroundColor: UIColor.darkText , NSAttributedStringKey.paragraphStyle : titleParagraphStyle ])
       
        tempAttributedString.append(NSAttributedString(string: "\n\n\n Srijan Kumar", attributes: [NSAttributedStringKey.font : UIFont.systemFont(ofSize: 14.0), NSAttributedStringKey.paragraphStyle : titleParagraphStyle]))
        
        tempTextView.textAlignment = .center
       tempTextView.attributedText = tempAttributedString
       return tempTextView
    }()
    
    
    let bottomStackView: UIStackView = {
        let redView = UIView()
        redView.translatesAutoresizingMaskIntoConstraints = false
        redView.backgroundColor = UIColor.red
        
        let blueView = UIView()
        blueView.translatesAutoresizingMaskIntoConstraints = false
        blueView.backgroundColor = UIColor.blue
        
        let greenView = UIView()
        greenView.translatesAutoresizingMaskIntoConstraints = false
        greenView.backgroundColor = UIColor.green
 
        let stackView = UIStackView(arrangedSubviews: [redView,blueView,greenView])
        
        if UIDevice.current.userInterfaceIdiom == UIUserInterfaceIdiom.phone {
            stackView.axis = .horizontal
        }else{
            stackView.axis = .vertical
        }
        
        stackView.distribution = .fillEqually
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        setUpImageView()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    private func setUpImageView() {
        
        view.addSubview(topHalfView)
        topHalfView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor).isActive = true
        topHalfView.topAnchor.constraint(equalTo: self.view.topAnchor).isActive = true
        topHalfView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor).isActive = true
        topHalfView.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.5).isActive = true
        
        topHalfView.addSubview(self.imageView)
        imageView.centerYAnchor.constraint(equalTo: topHalfView.centerYAnchor).isActive = true
        imageView.centerXAnchor.constraint(equalTo: topHalfView.centerXAnchor).isActive = true
        imageView.heightAnchor.constraint(equalTo: topHalfView.heightAnchor, multiplier: 0.5).isActive = true
        imageView.widthAnchor.constraint(equalTo: topHalfView.widthAnchor, multiplier: 0.60).isActive = true
        
       
        view.addSubview(textView)
        textView.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor).isActive = true
        textView.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor).isActive = true
        textView.bottomAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor).isActive = true
        textView.topAnchor.constraint(equalTo: topHalfView.bottomAnchor).isActive = true
        
        view.addSubview(bottomStackView)
        bottomStackView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor).isActive = true
        bottomStackView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor).isActive = true
        bottomStackView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor).isActive = true
        bottomStackView.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

