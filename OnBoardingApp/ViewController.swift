//
//  ViewController.swift
//  OnBoardingApp
//
//  Created by Sachin Singh on 26/06/19.
//  Copyright © 2019 Sachin Singh. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    let tableView = UITableView(frame: .zero)
    private let cellResuseID = "cellID"
    
    //should be coming from api call
    let titles = ["Food 1","Food 2","Food 3","Food 4","Food 1","Food 2","Food 3","Food 4","Food 1","Food 2","Food 3","Food 4","Food 1","Food 2","Food 3","Food 4"]
    let subtitles = ["description ","description 2 ","description 3","description 4","description ","description 2 ","description 3","description 4","description ","description 2 ","description 3","description 4","description ","description 2 ","description 3","description 4"]
    let images = [UIImage(named: "1"),UIImage(named: "2"),UIImage(named: "3"),UIImage(named: "4"),UIImage(named: "1"),UIImage(named: "2"),UIImage(named: "3"),UIImage(named: "4"),UIImage(named: "1"),UIImage(named: "2"),UIImage(named: "3"),UIImage(named: "4"),UIImage(named: "1"),UIImage(named: "2"),UIImage(named: "3"),UIImage(named: "4")]
    
    var restaurants = [Restaurant]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
//        view.backgroundColor = .red
//        createLabel()
//        createView()
        
        tableView.dataSource = self
        tableView.delegate = self
        
        //create objects of struct
        
        
        for i in 0...15 {
            var res =   Restaurant(title:titles[i],subtitle:subtitles[i],image:images[i]!)
            restaurants.append(res)
            print(i)
        }
        
        
        createTableView()
        tableView.register(TableContent.self, forCellReuseIdentifier: cellResuseID)
    }
    
    struct Restaurant {
        var title: String
        var subtitle: String
        var image: UIImage = UIImage()
    }

    
//    func createLabel(){
//        let myLabel = UILabel()
//        myLabel.text = "Sachin Sachin Sachin Sachin Sachin Sachin Sachin Sachin Sachin Sachin Sachin Sachin Sachin Sachin"
//        myLabel.numberOfLines = 0
//        myLabel.textColor = .black
//        myLabel.backgroundColor = .white
//        myLabel.textAlignment = .justified
//
//        view.addSubview(myLabel)
////        myLabel.translatesAutoresizingMaskIntoConstraints = false
////        myLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
////        myLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
////        myLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 8).isActive = true
////        myLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -8).isActive = true
//
//         myLabel.set(.sameLeadingTrailing(view),
//                     .centerView(view))
//
//
//    }
  
    func createTableView(){
        
        view.addSubview(tableView)
        tableView.set(.fillSuperView(view))
    }
    
    
    fileprivate func createView(){
        let paddingConstant: CGFloat = 8
        let redView = UIView()
        redView.backgroundColor = .red
        view.addSubview(redView)
        
        redView.set(.top(view, 6*paddingConstant),
                    .leading(view,paddingConstant),
                    .width(140),
                    .height(140)
        )
        
        let greenView = UIView()
        greenView.backgroundColor = .green
        view.addSubview(greenView)
        
        greenView.set(.top(redView),
                      .after(redView,paddingConstant),
                      .trailing(view,paddingConstant),
                      .height(140)
        )
        
        let blueView = UIView()
        blueView.backgroundColor = .blue
        view.addSubview(blueView)
        blueView.set(.below(redView,paddingConstant),
                      .leading(view,paddingConstant),
                      .width(230),
                      .height(140)
      )
        
        let orangeView = UIView()
        orangeView.backgroundColor = .orange
        view.addSubview(orangeView)
        orangeView.set(.below(greenView,paddingConstant),
                       .after(blueView,paddingConstant),
                       .trailing(view,paddingConstant),
                       .height(140)
        )
        
        let purpleView = UIView()
        purpleView.backgroundColor = .purple
        view.addSubview(purpleView)
        purpleView.set(.below(blueView,paddingConstant),
                       .leading(view,paddingConstant),
                       .trailing(view,paddingConstant),
                       .height(140)
        )
        
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return titles.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
//        let optional: Int ?
//        if let myValue = optional{
//              //todo
//        }
        
        //as! -> force
        //as? -> optional, is it possible
        
        let cell = tableView.dequeueReusableCell(withIdentifier: cellResuseID, for: indexPath) as! TableContent
        cell.setData(titleText: restaurants[indexPath.row].title, subtitleText: restaurants[indexPath.row].subtitle, image: restaurants[indexPath.row].image
        )
        return cell
    }
    
    /*
     Study structs and populate the list according to that
     Populate images
     */
    
}

