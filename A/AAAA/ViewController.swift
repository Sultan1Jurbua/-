//
//  ViewController.swift
//  كتابة الاهداف اليومية
//
//  Created by MAC on 10/09/1443 AH.
//

import UIKit

class ViewController: UIViewController  , UITableViewDelegate , UITableViewDataSource{
 
    @IBOutlet weak var dam: UITextField!
    
    @IBOutlet weak var nameCo: UITextField!
    @IBOutlet weak var namberCo: UITextField!
    @IBOutlet weak var goo1: UITextField!
    @IBOutlet weak var goo2: UITextField!
    @IBOutlet weak var goo3: UITextField!
    
    @IBOutlet weak var stopp: UITextField!
    @IBOutlet weak var dayy: UITextField!
    @IBOutlet weak var manthh: UITextField!
    @IBOutlet weak var yaerr: UITextField!
    
    @IBOutlet weak var sss: UIButton!
    
    var arrName = [String]()
    
 
    
    
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.delegate = self
        tableView.dataSource = self
//        sss.clipsToBounds = true
//        sss.layer.cornerRadius = sss.layer.frame.size.width/2
//        
    }

    
    @IBAction func edit(_ sender: Any) {
       
            tableView.isEditing = !tableView.isEditing
      
    }
    
    
    @IBAction func save(_ sender: Any) {
        
        if let text = nameCo.text {
            arrName.append(text)
            let indepoth = IndexPath(row: arrName.count - 1, section: 0)
            tableView?.beginUpdates()
            tableView?.insertRows(at: [indepoth], with: .automatic)
            tableView?.endUpdates()
            
        }
        
        

        
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrName.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell") as! TableViewCell
        
        cell.dammm.text = dam.text
        cell.nameCoCe.text = nameCo.text
        cell.numberCoCe.text = namberCo.text
        cell.goo1Ce.text = goo1.text
        cell.goo2Ce.text = goo2.text
        cell.goo3Ce.text = goo3.text
        cell.day.text = dayy.text
        cell.stop.text = stopp.text
        cell.manth.text = manthh.text
        cell.yaer.text = yaerr.text
                nameCo.text = ""
                namberCo.text = ""
                goo1.text = ""
                goo2.text = ""
                goo3.text = ""
                stopp.text = ""
                dayy.text = ""
                manthh.text = ""
                yaerr.text = ""
                 dam.text = ""
        
        
        return cell
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
   
  


}

