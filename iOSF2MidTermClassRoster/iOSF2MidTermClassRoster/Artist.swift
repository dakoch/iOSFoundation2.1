//
//  Artist.swift
//  iOSF2MidTermClassRoster
//
//  Created by Gru on 11/15/14.
//  Copyright (c) 2014 GruTech. All rights reserved.
//

import UIKit
import Foundation

enum Artists : String {
    case Boccioni   = "Boccioni"
    case Dali       = "Dali"
    case Kandinsky  = "Kandinsky"
    case Klee       = "Klee"
    case Klimt      = "Klimt"
    case Matisse    = "Matisse"
    case Miro       = "Miro"
    case Mondrian   = "Mondrian"
    case Picasso    = "Picasso"
    case Polock     = "Polock"
    case DEFAULT    = "VisualisingPaintersLives.tiff"
}

class Artist : UIView {

    var imageFileNameDefault : String   = ""
    var imageFileName        : String   = ""
    var artist               : String   = ""

//    var stringLiteral : String          = StringLiteralConvertible.StringLiteralType!  = ""
//    let artistImageView : UIImageView   = ""

    required init(coder aDecoder: NSCoder) {
        super.init()
        fatalError("init(coder:) has not been implemented")
    }

//    init( artist : String ) {
//        imageFileNameDefault = "VisualisingPaintersLives.tiff"
//        imageFileName        = "VisualisingPaintersLives.tiff"
//    }
    init( artist : String ) {
        super.init()

        imageFileNameDefault = "VisualisingPaintersLives.tiff"
        imageFileName        = "VisualisingPaintersLives.tiff"
    }

    override init( frame: CGRect ) {
        super.init()
        
        let image = UIImage( named: imageFileName )
        // artistImageView = UIImageView( image: image )
    }

    func getImageFileName( artist : String ) -> String {

        var fileName : String = ""

        var qArtist = artist // Artists.Boccioni
        println("Search For Artist: \(qArtist)")

/*      switch( qArtist ) {
        case .Boccioni:
            println("Boccioni \(qArtist)")
            self.imageFileName = "\(qArtist.rawValue).tiff"
        case .Klimt:
            println("Klimt \(qArtist.rawValue)")
            self.imageFileName = "\(qArtist.rawValue).tiff"
        default:
            println("Who are you looking for...? \(qArtist.rawValue) NOT FOUND")
            return self.imageFileNameDefault
        }  */

        switch( qArtist ) {
            default:
                println("Who are you looking for...? \(qArtist) NOT FOUND")
                return self.imageFileNameDefault
        }

//        return fileName
    }

}
