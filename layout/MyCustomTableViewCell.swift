//
//  MyCustomTableViewCell.swift
//  layout
//
//  Created by admin on 13.07.2021.
//

import UIKit

class MyCustomTableViewCell: UITableViewCell {

    static let identifier = "MyCustomTableViewCell"

    static func nib() -> UINib {
        return UINib(nibName: "MyCustomTableViewCell", bundle: nil)
    }

    public func configure(with title1: String, with title2: String, with title3: String,
                          with title4: String, with title5: String,
                          with text1: String, with title6: String,
                          with title7: String) {
        //xcode12.5.1 and ios14 with    accessibilityElements = GOOD
        //xcode12.5.1 and ios14 without accessibilityElements = GOOD but myStackView1,myView1,myView2 not exist
        //xcode12.5.1 and ios13 with    accessibilityElements = GOOD
        //xcode12.5.1 and ios13 without accessibilityElements = GOOD but myStackView1,myView1,myView2 not exist
        //xcode12.5.1 and ios12 with    accessibilityElements = GOOD (need check value for text field)
        //xcode12.5.1 and ios12 without accessibilityElements = GOOD but myStackView1,myView1,myView2 not exist (need check value for text field)

        //self.accessibilityElements = [myLabel1, myLabel2, myLabel3, myStackView1, myView1]
        //self.myStackView1.accessibilityElements = [myLabel4, myLabel5]
        //self.myView1.accessibilityElements = [myText1, myView2, myLabel6]
        //self.myView2.accessibilityElements = [myLabel7]
        
        myLabel1.text = title1
        myLabel2.text = title2
        myLabel3.text = title3
        
        myStackView1.accessibilityIdentifier = "myStackView1"
        myStackView1.backgroundColor = UIColor.red
        myLabel4.accessibilityIdentifier = "myLabel4444"
        myLabel4.text = title4
        myLabel5.accessibilityIdentifier = "myLabel5555"
        myLabel5.text = title5

        myText1.text = text1
        myLabel6.text = title6
        
        myLabel7.text = title7
    }

    @IBOutlet var myLabel1: UILabel!
    @IBOutlet var myLabel2: UILabel!
    @IBOutlet var myLabel3: UILabel!
    
    @IBOutlet var myStackView1: UIStackView!
    @IBOutlet var myLabel4: UILabel!
    @IBOutlet var myLabel5: UILabel!
    
    @IBOutlet var myView1: UIView!
    @IBOutlet var myText1: UITextField!
    @IBOutlet var myView2: UIView!
    @IBOutlet var myLabel6: UILabel!
    
    @IBOutlet var myLabel7: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
