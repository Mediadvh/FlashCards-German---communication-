//
//  TopicsViewController.swift
//  communication FlashCards for German
//
//  Created by Media Davarkhah on 9/25/1399 AP.
//

import UIKit

class TopicsViewController: UIViewController {

    var topics = [Topic]()

    // MARK: - UI elements - Properties
    private let tableView: UITableView = {
        let tableView = UITableView()
        tableView.separatorColor = .none
        tableView.separatorStyle = .none
        tableView.backgroundColor = Color.background
        tableView.register(TopicTableViewCell.self, forCellReuseIdentifier: String(describing: TopicTableViewCell.self))
    
        return tableView
    }()
    
    fileprivate func navigation() {
        
        title = "Topics"
       
    }
    
    @objc func goBacktoMenu(){
        dismiss(animated: true, completion: nil)
    }
    
    fileprivate func setUpUI() {
        view.addSubview(tableView)
        
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        view.bottomAnchor.constraint(equalTo:  tableView.bottomAnchor).isActive = true
        tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        view.trailingAnchor.constraint(equalTo:tableView.trailingAnchor).isActive = true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        topics.sort {
            $0.name! < $1.name!
        }
        navigation()
        setUpUI()
        tableView.delegate = self
        tableView.dataSource = self
        
      
        
        
        
    }
    
   
   

}

extension TopicsViewController:UITableViewDelegate,UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return topics.count
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       
        let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: TopicTableViewCell.self)) as! TopicTableViewCell
        cell.title = topics[indexPath.row]
        cell.configureCell()
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            let nav = navigationController
           
        
            let vc = FlashCardsViewController()
            vc.flashCards = topics[indexPath.row].flashcardsList ?? [""]
            vc.title = topics[indexPath.row].name
             
            nav?.pushViewController(vc, animated: true)
          
                  
    }
    
}
