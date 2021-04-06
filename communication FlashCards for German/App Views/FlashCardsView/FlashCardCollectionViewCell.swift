//
//  FlashCardCollectionViewCell.swift
//  communication FlashCards for German
//
//  Created by Media Davarkhah on 11/15/1399 AP.
//

import UIKit
import AVFoundation
class FlashCardCollectionViewCell: UICollectionViewCell {
    let synth = AVSpeechSynthesizer()
// Utterance object
var theUtterance = AVSpeechUtterance(string: "")
    override var reuseIdentifier: String?{
        return String(describing: FlashCardCollectionViewCell.self)
    }
    
    
    // MARK: - UI elements - Properties
    private let flashCardView:UIView={
        var view = UIView()
        view.layer.shadowOpacity = 0.25
        view.layer.cornerRadius = 25
        view.layer.shadowRadius = 5
        // positive width = up     negative width = down
        // positive height = down  negative height = up
        view.layer.shadowOffset = CGSize(width: 0, height: 10)
        view.backgroundColor = Color.flashcard
        return view
    }()
    @objc private let speakButton:UIButton = {
        var button = UIButton()
        var image = UIImage(named: "speaker")
      
        button.setBackgroundImage(image, for: .normal)
        button.tintColor = Color.title
        return button
    }()
   
    private let label:UILabel = {
      var label = UILabel()

        label.backgroundColor = .clear
        label.numberOfLines = 0
        label.lineBreakMode = NSLineBreakMode.byWordWrapping
        label.textAlignment = .center
        label.font = UIFont.preferredFont(forTextStyle: .largeTitle)
        label.textColor = Color.background
        return label
     }()
    
     @objc func speakButtonTapped(){
             

        if (synth.isPaused) {
                    synth.continueSpeaking();
                }
                // The pause functionality
                else if (synth.isSpeaking) {
                    synth.pauseSpeaking(at: AVSpeechBoundary.immediate)
                }
                // The start functionality
                else if (!synth.isSpeaking) {
                    // Getting text to read from the UITextView (textView).
                    theUtterance = AVSpeechUtterance(string: label.text!)
                    theUtterance.voice = AVSpeechSynthesisVoice(language: "de_DE")
                    theUtterance.rate = 0.5
                    synth.speak(theUtterance)
                }
       
        
            
        
    }
    
    fileprivate func customCellUI(text: String) {
        
    
        
        //MARK: - Adding Elements to the view
        
        label.text = text
        flashCardView.translatesAutoresizingMaskIntoConstraints = false
        label.translatesAutoresizingMaskIntoConstraints = false
        speakButton.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(flashCardView)
        flashCardView.addSubview(label)
        flashCardView.addSubview(speakButton)
       
        
       
        // MARK: - constraints - Flash Card View
        contentView.backgroundColor = .clear
        flashCardView.topAnchor.constraint(equalTo: contentView.topAnchor,constant: 30).isActive = true
        contentView.bottomAnchor.constraint(equalTo: flashCardView.bottomAnchor,constant: 20).isActive = true
        flashCardView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor,constant: 20).isActive = true
        contentView.trailingAnchor.constraint(equalTo: flashCardView.trailingAnchor,constant: 20).isActive = true
        //MARK: - constraints - Speak Button
        flashCardView.trailingAnchor.constraint(equalTo: speakButton.trailingAnchor, constant: 20).isActive = true
        speakButton.topAnchor.constraint(equalTo: flashCardView.topAnchor, constant: 20).isActive = true
        speakButton.heightAnchor.constraint(equalToConstant: 44).isActive = true
        speakButton.widthAnchor.constraint(equalToConstant: 44).isActive = true
        
        
        // MARK: - constraints - textView
        
        label.centerXAnchor.constraint(equalTo: flashCardView.centerXAnchor, constant: 0).isActive = true
        label.centerYAnchor.constraint(equalTo: flashCardView.centerYAnchor, constant: 0).isActive = true
        label.widthAnchor.constraint(equalTo: flashCardView.widthAnchor,constant: -10).isActive = true
      

   
    }
    
    
    func configureCell(with text: String){
        speakButton.isUserInteractionEnabled = true
        speakButton.addTarget(self, action: #selector(self.speakButtonTapped), for: .touchUpInside)
        
        customCellUI(text: text)
        
        
    }
    
}
