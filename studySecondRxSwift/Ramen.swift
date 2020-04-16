//
//  Ramen.swift
//  studySecondRxSwift
//
//  Created by USER on 2020/03/18.
//  Copyright © 2020 USER. All rights reserved.
//

import UIKit
import RxDataSources

struct Ramen{
    
    
    let name:String
    let taste :String
    let imaged :String
    var image:UIImage?
    
    init (name:String,taste:String,imaged:String){
        
        self.name = name
        self.taste = taste
        self.imaged = imaged
        image = UIImage(named:imaged)
    }
}

extension Ramen:IdentifiableType{
    typealias Identity = String
    var identity:Identity{return imaged}
    
    
}
