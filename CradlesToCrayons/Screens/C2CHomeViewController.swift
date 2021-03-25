//
//  C2CHomeViewController.swift
//  CradlesToCrayons
//
//  Created by Arun on 3/25/21.
//

import UIKit

enum C2CHomeTile: Int {
    case C2CHomeTileDonateFund
    case C2CHomeTileDonateGoods
    case C2CHomeTileVolunteer
    
    func tileTitle() -> String {
        switch self {
        case .C2CHomeTileDonateFund:
            return "Donate Funds"
        case .C2CHomeTileDonateGoods:
            return "Donate Goods"
        case .C2CHomeTileVolunteer:
            return "Volunteer"
        }
    }
}

class C2CHomeViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    // MARK: UITableViewDataSource
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        3
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        100
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        let tileType = C2CHomeTile(rawValue: indexPath.row)
        cell.textLabel?.text = tileType?.tileTitle()
        
        cell.accessoryType = .disclosureIndicator
        
        return cell
    }

    override func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        UIView()
    }
    
    // MARK: UITableViewDelegate
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let tileType = C2CHomeTile(rawValue: indexPath.row)

        switch tileType {
        case .C2CHomeTileDonateFund:
            self.performSegue(withIdentifier: "DonateFundsView", sender: self)
        case .C2CHomeTileDonateGoods:
            self.performSegue(withIdentifier: "DonateGoodsView", sender: self)
        case .C2CHomeTileVolunteer:
            self.performSegue(withIdentifier: "VolunteerView", sender: self)
        case .none:
            break
        }
    }

}
