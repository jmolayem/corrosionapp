//
//  PredictionsViewController.swift
//  S3TransferManagerSampleSwift
//
//  Created by Jeremy Molayem on 1/8/16.
//  Copyright © 2016 Amazon Web Services. All rights reserved.
//

import UIKit

class PredictionsViewController: UIViewController {

    @IBOutlet weak var predictionsTableView: UITableView!
    
    var predictionsData: Array<Dictionary<String, AnyObject>>?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
            predictionsTableView.registerNib(UINib(nibName: "PredictionsTableViewCell", bundle: nil), forCellReuseIdentifier: "PredictionsTableViewCellReuseIdentifier")
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        self.predictionsTableView.reloadData()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

extension PredictionsViewController : UITableViewDataSource {
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if let d = predictionsData {
            return d.count
        } else  {
            return 0
        }
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let tableViewCell : PredictionsTableViewCell = tableView.dequeueReusableCellWithIdentifier("PredictionsTableViewCellReuseIdentifier", forIndexPath: indexPath) as! PredictionsTableViewCell
        
        if let d = predictionsData {
            tableViewCell.configureCell(d[indexPath.row])
        }
        
        
        return tableViewCell
    }
}

extension PredictionsViewController : UITableViewDelegate {
    
}
