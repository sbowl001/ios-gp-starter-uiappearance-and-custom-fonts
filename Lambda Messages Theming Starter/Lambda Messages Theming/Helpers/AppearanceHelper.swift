//
//  AppearanceHelper.swift
//  Tasks
//
//  Created by Stephanie Bowles on 6/6/19.
//  Copyright © 2019 Andrew R Madsen. All rights reserved.
//
import UIKit

enum AppearanceHelper {
    
    static var lambdaRed = UIColor(red: 212.0/255.0, green: 87.0/255.0, blue: 80.0/255.0, alpha: 1.0)
    static var backgroundGray = UIColor(red: 45.0/255.0, green: 45.0/255.0, blue: 45.0/255.0, alpha: 1.0)
  
    //    static func typerighterFont(pointSize: CGFloat) -> UIFont {
    //        let font = UIFont(name: "RM Typerighter medium", size: pointSize)!
    //        return font
    //    }
    
    static func typerighterFont(with textStyle: UIFont.TextStyle, pointSize: CGFloat) -> UIFont {
        let font = UIFont(name: "RM Typerighter medium", size: pointSize)!
        return UIFontMetrics(forTextStyle: textStyle).scaledFont(for: font)
    }
    
    static func setDarkAppearance() {
        //        UIView.appearance().backgroundColor = .gray
        
        UINavigationBar.appearance().barTintColor = backgroundGray //.darkGray
        UISegmentedControl.appearance().tintColor = lambdaRed
        UIBarButtonItem.appearance().tintColor = lambdaRed
        
        let textAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
        
        UINavigationBar.appearance().titleTextAttributes = textAttributes
        UINavigationBar.appearance().largeTitleTextAttributes = textAttributes
        
        UITextField.appearance().tintColor = lambdaRed
        UITextView.appearance().tintColor = lambdaRed
        
        //        UITextField.appearance().font = UIFont(name: "RM Typerighter medium", size: 28)
        
        //        UITextField.appearance().keyboardAppearance = .dark
        //        UITextView.appearance().keyboardAppearance = .dark
        
    }
    
//    static func style(button: UIButton) {
//        button.titleLabel?.font = typerighterFont(with: .callout, pointSize: 30)
//        button.setTitleColor(.white, for: .normal)
//        button.backgroundColor = lambdaRed
//        button.layer.cornerRadius = 8
//    }
    
    
}
extension UIButton {
    func style() {
        self.titleLabel?.font = AppearanceHelper.typerighterFont(with: .callout, pointSize: 30)
        self.setTitleColor(.white, for: .normal)
        self.backgroundColor = AppearanceHelper.lambdaRed
        self.layer.cornerRadius = 8
}
}
