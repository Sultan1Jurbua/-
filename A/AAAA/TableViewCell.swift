//
//  TableViewCell.swift
//  كتابة الاهداف اليومية
//
//  Created by MAC on 10/09/1443 AH.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var nameCoCe: UILabel!
    @IBOutlet weak var numberCoCe: UILabel!
    @IBOutlet weak var goo1Ce: UILabel!
    @IBOutlet weak var goo2Ce: UILabel!
    @IBOutlet weak var goo3Ce: UILabel!

    
    @IBOutlet weak var stop: UILabel!
    
    @IBOutlet weak var day: UILabel!
    
    @IBOutlet weak var titel: UILabel!
    @IBOutlet weak var manth: UILabel!
    
    @IBOutlet weak var yaer: UILabel!
    

    @IBOutlet weak var dammm: UILabel!
    
    @IBOutlet weak var ssss: UIImageView!
    
    @IBOutlet weak var yas1: UIButton!
    
    @IBOutlet weak var contan: UIButton!
    
    @IBOutlet weak var no1: UIButton!
    
    @IBOutlet weak var ii: UILabel!
    
    var Totai1 : [Int] = []
    
    override func awakeFromNib() {
        super.awakeFromNib()

        
    }

    func ss (nam : Int)  {
        var total = 0
        for num in Totai1 {
            total = total + num
        }
        ii.text = "\(total)"
        
        
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
        yas1.layer.cornerRadius = yas1.frame.width/2
        yas1.layer.masksToBounds = true
        contan.layer.cornerRadius = contan.frame.width/2
        contan.layer.masksToBounds = true
        no1.layer.cornerRadius = no1.frame.width/2
        no1.layer.masksToBounds = true
        
    }
    
    @IBAction func yes(_ sender: Any) {

        titel.text = "تحقق"
        titel.textColor = .green
        ssss.image = UIImage(named: "ooo")
ss(nam: 1)
//        yes.clipsToBounds = true
//        yes.layer.cornerRadius = yes.layer.frame.size.width/2
    }
    
    @IBAction func no(_ sender: Any) {
        

        titel.text = "لم يتحقق"
        titel.textColor = .red
        ssss.image = UIImage(named: "bbb")
    
    }
    
    @IBAction func comblat(_ sender: Any) {

        titel.text = "الصفقه مستمره"
        titel.textColor = .orange
        ssss.image = UIImage(named: "22")
    }
    
    
}
