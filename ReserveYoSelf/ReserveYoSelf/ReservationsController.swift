//
//  ReservationsController.swift
//  ReserveYoSelf
//
//  Created by artur oganezov on 3/12/18.
//  Copyright © 2018 iOSfinal. All rights reserved.
//

import UIKit

class ReservationsController: UITableViewController {
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let detailViewController = segue.destination as? ReservationDetails {
            if let indexPath = self.tableView.indexPathForSelectedRow {
                detailViewController.res = reservationList[indexPath.row]
            }
        }
    }
    
    @IBAction func toHome(_ sender: UIButton) {
        self.performSegue(withIdentifier: "toStart", sender: self)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return reservationList.count
    }

    override func tableView(_ tableView: UITableView, accessoryButtonTappedForRowWith indexPath: IndexPath) {
        let title = "Reservation"
        let mesg = "You're reservation is at \(selectedRes.reserveDate). All members of party must be present to be seated."
        let alertController = UIAlertController(title: title, message: mesg, preferredStyle: .actionSheet)
        let overrideAction = UIAlertAction(title:"OK", style: .default, handler: nil)
        alertController.addAction(overrideAction)
        present(alertController, animated: true, completion: nil)
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        selectedRes = reservationList[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "basic", for: indexPath)
        
        cell.textLabel?.text = reservationList[indexPath.row].name
        cell.detailTextLabel?.text = ""
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            performSegue(withIdentifier: "toDetails", sender: self)
    }
}
