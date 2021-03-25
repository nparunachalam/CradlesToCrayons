//
//  C2CDonorLandingViewController.swift
//  CradlesToCrayons
//
//  Created by Arun on 3/25/21.
//

import UIKit

class C2CDonorLandingViewController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.setHidesBackButton(true, animated: false)
        title = "Gender"
        
        let settingsButton = UIBarButtonItem(barButtonSystemItem: .refresh, target: self, action: #selector(settingsButtonAction))
        navigationItem.setRightBarButtonItems([settingsButton], animated: true)
    }
    
    @objc private func settingsButtonAction() {
        navigationController?.popToRootViewController(animated: true)
    }
    
    // MARK: UITableViewDataSource
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        3
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        150
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! C2CDonorLandingTableViewCell
        
        
        return cell
    }

    override func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        return UIView()
    }
    
    // MARK: UITableViewDelegate
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}
