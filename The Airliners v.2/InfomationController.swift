//
//  InfomationController.swift
//  The Airliners v.2
//
//  Created by VuTQ10 on 12/2/19.
//  Copyright © 2019 VuTQ10. All rights reserved.
//

import UIKit

class InfomationController: UIViewController {

    @IBOutlet weak var imagePlance: UIImageView!
    @IBOutlet weak var longDescription: UITextView!
    @IBOutlet weak var tableView: UITableView!
    var titleName = [String]()
    var information = [String]()
    var delegate: ListPlance?
    override func viewDidLoad() {
        super.viewDidLoad()
        imagePlance.image = delegate?.imagePlan
        longDescription.text = delegate?.longDescr
        
        // add title
        titleName.append((delegate?.nationTitle)!)
        titleName.append((delegate?.manuTitle)!)
        titleName.append((delegate?.firtTilte)!)
        titleName.append((delegate?.producTitle)!)
        titleName.append((delegate?.numberTitle)!)
        titleName.append((delegate?.statusTille)!)
        
        //add value
        information.append((delegate?.nationVal)!)
        information.append((delegate?.manuVal)!)
        information.append((delegate?.firstVal)!)
        information.append((delegate?.prodVal)!)
        information.append((delegate?.numberVal)!)
        information.append((delegate?.statusVal)!)
        
        self.tableView.register(UINib(nibName: "InfomationCell", bundle: nil), forCellReuseIdentifier: "Information")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        self.navigationController?.navigationBar.alpha = 0
    }
    override func viewDidLayoutSubviews() {
        tableView.tableFooterView = UIView(frame: CGRect(x: 0, y: 0, width: view.frame.width, height: 1))
    }
    
    

    @IBAction func backButton(_ sender: UIButton) {
        self.navigationController?.navigationBar.alpha = 1
        self.navigationController?.popViewController(animated: true)
        
    }
}

extension InfomationController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return titleName.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Information", for: indexPath) as! InfomationCell
        cell.title.text = titleName[indexPath.row]
        cell.infomation.text = information[indexPath.row]
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }
    
    
}
