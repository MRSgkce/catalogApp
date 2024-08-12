//
//  ViewController.swift
//  catalogApp
//
//  Created by Mürşide Gökçe on 12.08.2024.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource
{
    var yemekKatalogu=[String]()
    var yemekGorselIsimleri=[String]()
    
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate=self
        tableView.dataSource=self
        
        yemekKatalogu.append("musakka")
        yemekKatalogu.append("pilav")
        yemekKatalogu.append("corba")
        yemekKatalogu.append("tatllı")
        
        //var yemekGorselleri=[UIImage]()
        
        //yemekGorselleri.append(UIImage(named: "musakka")!)
        
        yemekGorselIsimleri.append("musakka")
        yemekGorselIsimleri.append("pilav")
        yemekGorselIsimleri.append("corba")
        yemekGorselIsimleri.append("tatllı")
        
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return yemekKatalogu.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text=yemekGorselIsimleri[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle:UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath)  {
        if editingStyle == .delete{
            yemekKatalogu.remove(at: indexPath.row)
            yemekGorselIsimleri.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: UITableView.RowAnimation.fade)
            
        }
        
        
        
        
        
        
    }
    
}
