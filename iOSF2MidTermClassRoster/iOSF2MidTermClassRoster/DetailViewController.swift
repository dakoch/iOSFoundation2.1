/* -----------------------------------------------------------------------------
//  File Name: DetailViewController.swift
//    Project: iOSF2MidTermClassRoster
//
//  Created by Gru on 10/27/14.
//  Copyright (c) 2014 GruTech/CodeFellows. All rights reserved.
// -------------------------------------------------------------------------- */

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var firstName: UITextField!
    @IBOutlet weak var lastName: UITextField!
    @IBOutlet weak var nameLabelPerson: UILabel!

    var isStudent : Bool   = false
    var imagePath : String = ""

    var selectedPerson = Person(firstName: "", lastName: "", isStudent: false)

    var DBUG : Bool = true
    //
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        if DBUG {
            println("DetailViewController::viewDidLoad() ->                description   \(self.description)")
            println("DetailViewController::viewDidLoad() ->            nameLabelPerson   \(self.nameLabelPerson)")
            println("DetailViewController::viewDidLoad() -> selectedPerson.getFullName " +
                " \(self.selectedPerson.getFullName())")
            println("DetailViewController::viewDidLoad() -> selectedPerson.getLastName   \(self.selectedPerson.getLastName())I.tiff")

        }
        self.nameLabelPerson.text = self.selectedPerson.getFullName()
        self.title = self.selectedPerson.lastName + ", " + self.selectedPerson.firstName
        self.firstName.text = self.selectedPerson.firstName
        self.lastName.text  = self.selectedPerson.lastName
        self.isStudent      = self.selectedPerson.isStudent
        self.imagePath      = self.selectedPerson.lastName + "I.tiff"

        
        var image : UIImage?
        let artistImage     = UIImage( named: "\(self.imagePath)" )
        self.imageView.image = artistImage
        println( "DetailViewController::viewDidLoad() -> selectedPerson.getLastName   \(self.imageView)")

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        if DBUG { println("DetailViewController::didReceiveMemoryWarning()") }
    }

    // MARK: - Navigation
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // FOR THE NEXT VIEW CONTROLLER
        if DBUG { println("DetailViewController::prepareForSegue()") }

    }
    
}
