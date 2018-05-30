//
//  Butterfly.swift
//  mid
//
//  Created by csie on 2018/5/29.
//  Copyright © 2018年 csie. All rights reserved.
//

import Foundation

class Butterfly{
    var name1 : String
    var name2 : String
    var herb : String
    var distribution : String
    var habits : String
    var image : String
    init(name1: String, name2: String,
         herb: String, distribution: String, habits: String,
         image: String){
        self.name1 = name1
        self.name2 = name2
        self.herb = herb
        self.distribution = distribution
        self.habits = habits
        self.image = image
    }
    convenience init(){
        self.init(name1:"", name2:"", herb:"",distribution:"", habits:"", image:"")
    }
}
