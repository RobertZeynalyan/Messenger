//
//  ChatViewController.swift
//  Messenger
//
//  Created by Robert on 09.11.23.
//

import UIKit

class ChatViewController: UIViewController {
    
    @IBOutlet weak var userImage: UIImageView!
    @IBOutlet weak var userName: UILabel!
    @IBOutlet weak var chatTextField: UITextField!
    @IBOutlet weak var tableView: UITableView!
    var dataObject = Data()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTableView()
        dataObject.getMessageData()
    }
    
    private func setupTableView() {
        
        tableView.dataSource = self
        tableView.delegate = self
    }
    @IBAction func searchButtonAction(_ sender: UIButton) {
        
    }
    
    @IBAction func cameraClickAction(_ sender: UIButton) {
        
    }
    
    @IBAction func sendAction(_ sender: UIButton) {
        
    }
}

extension ChatViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ChatTableViewCell", for: indexPath) as! ChatTableViewCell
        cell.getData(model: dataObject.messages[indexPath.row])
        return cell
    }
}
