//
//  StoryboardTableViewController.swift
//  DemoTableView
//
//  Created by Din Din on 18/03/2024.
//

import UIKit

struct Contact {
    var name: String?
    var phone: Int?
    
    init(name: String?, phone: Int?) {
        self.name = name
        self.phone = phone
    }
}

class StoryboardTableViewController: UIViewController {
    
    
    @IBOutlet weak var tableView: UITableView!
    
    
    let contactList: [Contact] = [Contact.init(name: "Ho Chi Minh", phone: 0926601162),
                                  Contact.init(name: "Ha Noi", phone: 0926601162),
                                  Contact.init(name: "Quang Ninh", phone: 0926601162),
                                  Contact.init(name: "Da Nang", phone: 0926601162),
                                  Contact.init(name: "Thai Binh", phone: 0926601162),
                                  Contact.init(name: "Hai Phong", phone: 0926601162),
                                  Contact.init(name: "Hung Yen", phone: 0926601162),
                                  Contact.init(name: "Nam Dinh", phone: 0926601162),
                                  Contact.init(name: "Hai Duong", phone: 0926601162),
                                  Contact.init(name: "Thanh Hoa", phone: 0926601162)]

    override func viewDidLoad() {
        super.viewDidLoad()
        initlayout()
    }
    
    func initlayout() {
        self.navigationItem.title = "Storyboard Tableview"
        tableView.delegate = self
        tableView.dataSource = self
    }
}

extension StoryboardTableViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contactList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let item = contactList[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "StoryboardTableViewCell", for: indexPath) as! StoryboardTableViewCell
        cell.fillData(item: item)
        return cell
    }

    
}
