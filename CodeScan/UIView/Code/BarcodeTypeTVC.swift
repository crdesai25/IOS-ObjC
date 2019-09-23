//
//  BarcodeTypeTVC.swift
//  CodeScan
//
//  Created by Stephen Muscarella on 5/27/18.
//  Copyright © 2018 Elite Development LLC. All rights reserved.
//

import UIKit
import AVFoundation

class BarcodeTypeTVC: UITableViewCell {

    @IBOutlet weak var nameLbl: UILabel!
    @IBOutlet weak var validationImageView: UIImageView!
    
    var code: AVMetadataObject.ObjectType!
    
    override func awakeFromNib() {
        super.awakeFromNib()

    }
    
    class func nib() -> UINib {
        return UINib(nibName: self.nameOfClass, bundle: nil)
    }

    func setSelected(code: AVMetadataObject.ObjectType) {
        self.code = code
        
        var stringCode: String!

        switch code
        {
        case AVMetadataObject.ObjectType.ean8:
            stringCode = "EAN-8"
        case AVMetadataObject.ObjectType.ean13:
            stringCode = "EAN-13"
        case AVMetadataObject.ObjectType.pdf417:
            stringCode = "PDF417"
        case AVMetadataObject.ObjectType.aztec:
            stringCode = "Aztec"
        case AVMetadataObject.ObjectType.code128:
            stringCode = "Code128"
        case AVMetadataObject.ObjectType.code39:
            stringCode = "Code39"
        case AVMetadataObject.ObjectType.code39Mod43:
            stringCode = "Code39Mod43"
        case AVMetadataObject.ObjectType.code93:
            stringCode = "Code93"
        case AVMetadataObject.ObjectType.dataMatrix:
            stringCode = "DataMatrix"
        case AVMetadataObject.ObjectType.face:
            stringCode = "Face"
        case AVMetadataObject.ObjectType.interleaved2of5:
            stringCode = "Interleaved2of5"
        case AVMetadataObject.ObjectType.itf14:
            stringCode = "ITF14"
        case AVMetadataObject.ObjectType.qr:
            stringCode = "QRCode"
        case AVMetadataObject.ObjectType.upce:
            stringCode = "UPC-E"
        default:
            break
        }
        
        nameLbl.text = stringCode
        nameLbl.textColor = UIColor.metallicSeaweed
        validationImageView.image = UIImage(named: CHECK_BLUE)
    }
    
    func setUnselected(code: AVMetadataObject.ObjectType) {
        self.code = code

        var stringCode: String!
        
        switch code {
        case AVMetadataObject.ObjectType.ean8:
            stringCode = "EAN-8"
        case AVMetadataObject.ObjectType.ean13:
            stringCode = "EAN-13"
        case AVMetadataObject.ObjectType.pdf417:
            stringCode = "PDF417"
        case AVMetadataObject.ObjectType.aztec:
            stringCode = "Aztec"
        case AVMetadataObject.ObjectType.code128:
            stringCode = "Code128"
        case AVMetadataObject.ObjectType.code39:
            stringCode = "Code39"
        case AVMetadataObject.ObjectType.code39Mod43:
            stringCode = "Code39Mod43"
        case AVMetadataObject.ObjectType.code93:
            stringCode = "Code93"
        case AVMetadataObject.ObjectType.dataMatrix:
            stringCode = "DataMatrix"
        case AVMetadataObject.ObjectType.face:
            stringCode = "Face"
        case AVMetadataObject.ObjectType.interleaved2of5:
            stringCode = "Interleaved2of5"
        case AVMetadataObject.ObjectType.itf14:
            stringCode = "ITF14"
        case AVMetadataObject.ObjectType.qr:
            stringCode = "QRCode"
        case AVMetadataObject.ObjectType.upce:
            stringCode = "UPC-E"
        default:
            break
        }

        nameLbl.text = stringCode
        nameLbl.textColor = UIColor.black
        validationImageView.image = nil
    }
    
}
