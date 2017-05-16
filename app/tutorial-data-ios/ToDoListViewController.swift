/**
* Copyright (c) 2000-present Liferay, Inc. All rights reserved.
*
* This library is free software; you can redistribute it and/or modify it under
* the terms of the GNU Lesser General Public License as published by the Free
* Software Foundation; either version 2.1 of the License, or (at your option)
* any later version.
*
* This library is distributed in the hope that it will be useful, but WITHOUT
* ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
* FOR A PARTICULAR PURPOSE. See the GNU Lesser General Public License for more
* details.
*/


import UIKit
import WeDeploy

class ToDoListViewController: UIViewController, UITableViewDataSource {
	
	@IBOutlet weak var tableView: UITableView!
	
	var todos = [String]()
	
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.dataSource = self
		tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
		tableView.tableFooterView = UIView()
		tableView.separatorColor = .mainColor

		loadToDos()
    }

	func loadToDos() {
		// Paste the code here

		//---------------
	}

	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return todos.count
	}
	
	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
		cell.textLabel?.text = todos[indexPath.row]
		cell.textLabel?.font = UIFont.weFont(ofSize: 17)
		cell.textLabel?.textAlignment = .center
		cell.selectionStyle = .none
		
		return cell
	}
	
	@IBAction func goBack() {
		self.navigationController?.popViewController(animated: true)
	}
}
