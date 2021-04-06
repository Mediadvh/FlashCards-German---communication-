//
//  TopicTableViewCell.swift
//  communication FlashCards for German
//
//  Created by Media Davarkhah on 9/26/1399 AP.
//

import UIKit

class TopicTableViewCell: UITableViewCell {
    
    var title : Topic!
    
    // MARK: - UI elements - Properties
    var label :UILabel = {
        var label = UILabel()
        label.layer.shadowOpacity = 0.25
        label.layer.cornerRadius = 25
        label.layer.shadowRadius = 5
        label.numberOfLines = 0
        // positive width = up     negative width = down
        // positive height = down  negative height = up
        label.layer.shadowOffset = CGSize(width: 0, height: 10)
        label.layer.backgroundColor = Color.button?.cgColor
        label.textColor = .black
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: 25)
        return label
    }()
   
    fileprivate func customCellUI() {
        
        backgroundColor = .clear
        contentView.backgroundColor = Color.background
      
        label.translatesAutoresizingMaskIntoConstraints = false
        addSubview(label)
      
        label.topAnchor.constraint(equalTo: topAnchor, constant: 20).isActive = true
        bottomAnchor.constraint(equalTo: label.bottomAnchor, constant: 20).isActive = true
        label.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20).isActive = true
        trailingAnchor.constraint(equalTo: label.trailingAnchor, constant: 20).isActive = true
    }
    
    func configureCell(){
        label.text = title.name
        label.textColor = Color.background
        customCellUI()
      
    }
    
    override var reuseIdentifier: String?{
        return String(describing: TopicTableViewCell.self)
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        if selected{
            label.layer.backgroundColor = #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)
        } else{
            label.layer.backgroundColor = Color.button?.cgColor
        }
    }
    
}
