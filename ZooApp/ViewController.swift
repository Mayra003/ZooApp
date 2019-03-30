//
//  ViewController.swift
//  ZooApp
//
//  Created by UTNG on 08/03/19.
//  Copyright © 2019 UTNG. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    var listOfAnimals = [Animal]()
    @IBOutlet weak var tvListAnimals: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        listOfAnimals.append(Animal(name: "baboon", des: "live in big place with tree.... ", image: "baboon"))
        listOfAnimals.append(Animal(name: "bulldog", des: "bulldog live in big place with tree.... ", image: "bulldog"))
        listOfAnimals.append(Animal(name: "panda", des: "panda live in big place with tree.... ", image: "panda"))
        listOfAnimals.append(Animal(name: "swallow_bird", des: "swallow_bird live in big place with tree.... ", image: "sallow_bird"))
        listOfAnimals.append(Animal(name: "white_tiger", des: "whithe_tiger live in big place with tree.... ", image: "white_tiger"))
        listOfAnimals.append(Animal(name: "zebra", des: "zebra live in big place with tree.... ", image: "zebra"))
        
        tvListAnimals.delegate = self
        tvListAnimals.dataSource = self
    }
    func numberOfSections(in tableView: UITableView) -> Int{
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listOfAnimals.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellAnimal: TVCAnimal = tableView.dequeueReusableCell(withIdentifier: "cellAnimal", for: indexPath)
        as! TVCAnimal
        
        cellAnimal.SetAnimal(animal: listOfAnimals[indexPath.row])
        return cellAnimal
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

