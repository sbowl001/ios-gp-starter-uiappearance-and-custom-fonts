//
//  MessageCreationViewController.swift
//  UIAppearanceAndAnimation
//
//  Created by Spencer Curtis on 8/21/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

class MessageCreationViewController: UIViewController, UINavigationBarDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupAppearances()
        navigationBar.delegate = self
    }
    
    func position(for bar: UIBarPositioning) -> UIBarPosition {
        return UIBarPosition.topAttached
    }
    
    @IBAction func clearText(_ sender: Any) {
        messageTextView.text = ""
    }
    
    @IBAction func sendMessage(_ sender: Any) {
        
        guard let message = messageTextView.text else { return }
        
        messageController?.createMessage(with: message, completion: { (_) in
            
            DispatchQueue.main.async {
                self.dismiss(animated: true, completion: nil)
            }
        })
    }
    
    @IBAction func discardMessage(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    var messageController: MessageController?
    
    //MARK: Appearances
    
    private func setupAppearances(){
        view.backgroundColor = AppearanceHelper.backgroundGray
        messageTextView.font = AppearanceHelper.typerighterFont(with: .body, pointSize: 28)
        messageTextView.backgroundColor = AppearanceHelper.backgroundGray
        messageTextView.textColor = .white
        messageTextView.layer.borderColor = UIColor.white.cgColor
        messageTextView.layer.borderWidth = 0.5
        messageTextView.layer.cornerRadius = 8.0
        messageTextView.keyboardAppearance = .dark
//        AppearanceHelper.style(button: clearTextButton)
//        AppearanceHelper.style(button: sendMessageButton)
        clearTextButton.style()
        sendMessageButton.style()
        
    }
 
    
    
    @IBOutlet weak var navigationBar: UINavigationBar!
    @IBOutlet weak var messageTextView: UITextView!
    @IBOutlet weak var clearTextButton: UIButton!
    @IBOutlet weak var sendMessageButton: UIButton!
}
