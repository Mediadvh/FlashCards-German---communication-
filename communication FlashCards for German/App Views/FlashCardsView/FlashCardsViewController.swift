//
//  FlashCardsViewController.swift
//  communication FlashCards for German
//
//  Created by Media Davarkhah on 9/28/1399 AP.
//

import UIKit

class FlashCardsViewController: UIViewController {
  
    var flashCards = [String]()

    var collectionView:UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        
        view.backgroundColor = Color.background
        let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        collectionView = UICollectionView(frame: self.view.frame, collectionViewLayout: layout)
        collectionView.backgroundColor = .clear
       
        collectionView.dataSource = self
        collectionView.delegate = self
        collectionView.register(FlashCardCollectionViewCell.self, forCellWithReuseIdentifier: String(describing:FlashCardCollectionViewCell.self))
        collectionView.frame = view.bounds
        collectionView.isPagingEnabled = true
        collectionView.showsHorizontalScrollIndicator = false
        
       
      
        //MARK: - Adding Elements to the view
        self.view.addSubview(collectionView)
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        
     
        //MARK: -constraints -collection view
        collectionView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor,constant: 0).isActive = true
      
        collectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor,constant: 0).isActive = true
        view.trailingAnchor.constraint(equalTo: collectionView.trailingAnchor,constant: 0).isActive = true
        view.bottomAnchor.constraint(equalTo: collectionView.bottomAnchor,constant: 0).isActive = true
        
          
        
     
    }
    
    // MARK: -methods
    
}
extension FlashCardsViewController: UICollectionViewDelegateFlowLayout,UICollectionViewDelegate,UICollectionViewDataSource{
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        return CGSize(width: collectionView.frame.width   , height: collectionView.frame.height - 50  )
   
        
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return flashCards.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: String(describing:FlashCardCollectionViewCell.self), for: indexPath) as! FlashCardCollectionViewCell
        let text = flashCards[indexPath.row]
        cell.configureCell(with : text)

        
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
}
