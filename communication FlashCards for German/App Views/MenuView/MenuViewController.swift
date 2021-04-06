//
//  ViewController.swift
//  communication FlashCards for German
//
//  Created by Media Davarkhah on 8/24/1399 AP.
//

import UIKit
import CoreData
class MenuViewController: UIViewController{
   
    
    
    let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    var datamanager = DataManager()
    var fetcher = Fetcher()
    var levels = [Level]()
    var topics = [Topic]()
    
    fileprivate func getData() {
        
        // creates data just on the first launch of the app
        let firstRun = UserDefaults.standard.bool(forKey: "firstRun") as Bool
        if !firstRun {
           
            //run your function
            datamanager.configureData()
            UserDefaults.standard.set(true, forKey: "firstRun")
        }
        
        fetcher.fetchLevels(into: &levels)
        fetcher.fetchTopics(into: &topics)

        
    }
    // MARK: - UI elements - Properties
    private let mainStackView:UIStackView = {
        let stack = UIStackView()
        stack.axis = .vertical
        
        stack.alignment = .center
        stack.distribution = .fillProportionally
        stack.spacing = 20
        return stack
    }()
   
    
    private let LabelStackView:UIStackView = {
        let stack = UIStackView()
        stack.axis = .vertical
        
        stack.alignment = .center
        stack.distribution = .fillEqually
      
        return stack
    }()
    private let buttonStackView:UIStackView = {
        let stack = UIStackView()
        stack.axis = .vertical
        
        stack.alignment = .center
        stack.distribution = .fillEqually
        stack.spacing = 40

        return stack
    }()
    
    private let topLabel:UILabel = {
        let label = UILabel()
        
        label.text = "Kommunikation"
        label.layer.shadowOpacity = 0.25
        label.layer.cornerRadius = 25
        label.layer.shadowRadius = 5
        // positive width = up     negative width = down
        // positive height = down  negative height = up
        label.layer.shadowOffset = CGSize(width: 0, height: 10)
        label.layer.backgroundColor = Color.title?.cgColor
        label.textColor = .white
        label.textAlignment = .center
        label.font = UIFont.preferredFont(forTextStyle: .headline)
        return label
    }()
    
    private let lowerLabel:UILabel = {
        let label = UILabel()
        label.text = "\"Choose a level\""
        label.textAlignment = .center
        return label
    }()
    

    private let buttonA1: FloatingActionButton = {
        let button = FloatingActionButton()
        button.clipsToBounds = false
        button.setTitle("A1", for: .normal)
        button.titleLabel?.font = UIFont(name: "HelveticaNeue-Bold", size: 30)
        return button
    }()
    private let buttonA2:FloatingActionButton = {
        let button = FloatingActionButton()
        button.clipsToBounds = false
        button.setTitle("A2", for: .normal)
        button.titleLabel?.font = UIFont(name: "HelveticaNeue-Bold", size: 30)
        return button
    }()
    private let buttonB1:FloatingActionButton = {
        let button = FloatingActionButton()
        button.clipsToBounds = false
        button.setTitle("B1", for: .normal)
        
        button.titleLabel?.font = UIFont(name: "HelveticaNeue-Bold", size: 30)

        return button
    }()
    private let buttonB2:FloatingActionButton = {
        let button = FloatingActionButton()
        button.clipsToBounds = false
        button.setTitle("B2", for: .normal)
        button.titleLabel?.font = UIFont(name: "HelveticaNeue-Bold", size: 30)
        return button
    }()


    
    fileprivate func setUpUI() {
        // TODO: make 2 more stacks
        view.addSubview(mainStackView)
        view.addSubview(LabelStackView)
        view.addSubview(buttonStackView)
        mainStackView.addArrangedSubview(LabelStackView)
        mainStackView.addArrangedSubview(buttonStackView)
        LabelStackView.addArrangedSubview(topLabel)
        LabelStackView.addArrangedSubview(lowerLabel)
        buttonStackView.addArrangedSubview(buttonA1)
        buttonStackView.addArrangedSubview(buttonA2)
        buttonStackView.addArrangedSubview(buttonB1)
        buttonStackView.addArrangedSubview(buttonB2)
       
        topLabel.translatesAutoresizingMaskIntoConstraints = false
        lowerLabel.translatesAutoresizingMaskIntoConstraints = false
        buttonA1.translatesAutoresizingMaskIntoConstraints = false
        buttonA2.translatesAutoresizingMaskIntoConstraints = false
        buttonB1.translatesAutoresizingMaskIntoConstraints = false
        buttonB2.translatesAutoresizingMaskIntoConstraints = false
        buttonStackView.translatesAutoresizingMaskIntoConstraints = false
        LabelStackView.translatesAutoresizingMaskIntoConstraints = false
        mainStackView.translatesAutoresizingMaskIntoConstraints = false
        //MARK: -main stack view
        mainStackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        view.bottomAnchor.constraint(equalTo: mainStackView.bottomAnchor, constant: 50).isActive = true
        mainStackView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        view.trailingAnchor.constraint(equalTo: mainStackView.trailingAnchor).isActive = true
        //MARK: -LabelStackview
        LabelStackView.leadingAnchor.constraint(equalTo: mainStackView.leadingAnchor).isActive = true
        mainStackView.trailingAnchor.constraint(equalTo: LabelStackView.trailingAnchor).isActive = true
        LabelStackView.topAnchor.constraint(equalTo: mainStackView.topAnchor, constant : 0).isActive = true
     
        // MARK: - TopLabel
        topLabel.heightAnchor.constraint(equalToConstant: 70).isActive = true
        
        topLabel.topAnchor.constraint(equalTo: LabelStackView.topAnchor).isActive = true
        topLabel.leadingAnchor.constraint(equalTo: LabelStackView.leadingAnchor, constant: 25).isActive = true
        LabelStackView.trailingAnchor.constraint(equalTo: topLabel.trailingAnchor, constant: 25).isActive = true
       
        
    
        // MARK: - LowerLabel
        
//        lowerLabel.heightAnchor.constraint(equalToConstant: 30).isActive = true
//        lowerLabel.widthAnchor.constraint(equalToConstant: 135).isActive = true
      
        lowerLabel.leadingAnchor.constraint(equalTo: LabelStackView.leadingAnchor, constant: 10).isActive = true
        LabelStackView.trailingAnchor.constraint(equalTo: lowerLabel.trailingAnchor, constant: 10).isActive = true
      
      // MARK: -button Stack view

        mainStackView.trailingAnchor.constraint(equalTo: buttonStackView.trailingAnchor, constant: 30).isActive = true
        buttonStackView.leadingAnchor.constraint(equalTo: mainStackView.leadingAnchor, constant: 30).isActive = true
        mainStackView.bottomAnchor.constraint(equalTo: buttonStackView.bottomAnchor, constant: 0).isActive = true
        // MARK: - button A1
 
       
        buttonStackView.trailingAnchor.constraint(equalTo: buttonA1.trailingAnchor, constant: 0).isActive = true

        buttonA1.leadingAnchor.constraint(equalTo: buttonStackView.leadingAnchor, constant: 0).isActive = true
        
        
        // MARK: - button A2

        
     

        
        buttonStackView.trailingAnchor.constraint(equalTo: buttonA2.trailingAnchor, constant: 0).isActive = true
        
        buttonA2.leadingAnchor.constraint(equalTo: buttonStackView.leadingAnchor , constant: 0 ).isActive = true
        
        // MARK: - button B1

        

        buttonStackView.trailingAnchor.constraint(equalTo: buttonB1.trailingAnchor, constant: 0).isActive = true
        
        buttonB1.leadingAnchor.constraint(equalTo: buttonStackView.leadingAnchor, constant: 0).isActive = true
        
        
        // MARK: - button B2

      

        buttonStackView.trailingAnchor.constraint(equalTo: buttonB2.trailingAnchor ,constant: 0).isActive = true
        
        buttonB2.leadingAnchor.constraint(equalTo: buttonStackView.leadingAnchor, constant: 0).isActive = true
        

        
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       
        // sets the background color
        view.backgroundColor = Color.background
        
        // build(only on the first launch) and fetch the data from core data
        getData()
        
        setUpUI()
        buttonA1.addTarget(self, action: #selector(buttonA1Tapped), for: .touchUpInside)
        buttonA2.addTarget(self, action: #selector(buttonA2Tapped), for: .touchUpInside)
        buttonB1.addTarget(self, action: #selector(buttonB1Tapped), for: .touchUpInside)
        buttonB2.addTarget(self, action: #selector(buttonB2Tapped), for: .touchUpInside)
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: animated)
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.setNavigationBarHidden(false, animated: animated)
//        navigationController?.navigationBar.tintColor = Color.title
//        navigationController?.navigationBar.barTintColor = Color.button
//        navigationController?.navigationBar.tintColor = Color.button
      
         
      
    }
    @objc func buttonA1Tapped(){
        buttonA1.backgroundColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
        buttonA1.layer.borderColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
        buttonA1.clipsToBounds = true
        var topics : NSSet?
        for lvl in levels{
            if(lvl.name == "A1"){
                topics = lvl.topics
                
            }
            
        }
        var topicsArray = [Topic]()
        if let topics = topics {
            topicsArray = topics.allObjects as! [Topic]
            
           
        }
        moveToTopics(with: topicsArray)
    }
    @objc func buttonA2Tapped(){
        buttonA2.backgroundColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
        buttonA2.layer.borderColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
        buttonA2.clipsToBounds = true
        var topics : NSSet?
        for lvl in levels{
            if(lvl.name == "A2"){
                topics = lvl.topics
            }

        }

        var topicsArray = [Topic]()
        if let topics = topics {
            topicsArray = topics.allObjects as! [Topic]
        }
        

      
        moveToTopics(with: topicsArray)
    }
    @objc func buttonB1Tapped(){
        buttonB1.backgroundColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
        buttonB1.layer.borderColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
        buttonB1.clipsToBounds = true
        var topics : NSSet?
        for lvl in levels{
            if(lvl.name == "B1"){
                topics = lvl.topics
            }

        }
        var topicsArray = [Topic]()
        if let topics = topics {
            topicsArray = topics.allObjects as! [Topic]
        }

        //let topics = levels[2].topics
      
        moveToTopics(with: topicsArray)
    }
    @objc func buttonB2Tapped(){
        buttonB2.backgroundColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
        buttonB2.layer.borderColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
        buttonB2.clipsToBounds = true
        var topics : NSSet?
        for lvl in levels{
            if(lvl.name == "B2"){
                topics = lvl.topics
            }
            
        }
       
        var topicsArray = [Topic]()
        if let topics = topics {
            topicsArray = topics.allObjects as! [Topic]
        }
       
        //let topics = levels[3].topics
        
    }
    func moveToTopics(with topics :[Topic]){
        
        let vc = MenuViewController()
        let nav = UINavigationController(rootViewController: vc)
        let selectedVc = TopicsViewController()
        selectedVc.topics = topics
        nav.pushViewController(selectedVc, animated: true)
        nav.modalPresentationStyle = .overCurrentContext
        nav.modalTransitionStyle = .crossDissolve
        
        //change color of title
        let textAttributes = [NSAttributedString.Key.foregroundColor:Color.background]
        nav.navigationBar.titleTextAttributes = textAttributes as [NSAttributedString.Key : Any]
        nav.navigationBar.barTintColor = Color.title
        //change color of button on nav bar
        
          
          nav.navigationBar.barStyle = UIBarStyle.black
          nav.navigationBar.tintColor = Color.button
           
        present(nav, animated: false)
       
        
     
    }
}


