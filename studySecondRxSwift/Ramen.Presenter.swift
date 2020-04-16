//
//  Ramen.Presenter.swift
//  studySecondRxSwift
//
//  Created by USER on 2020/03/18.
//  Copyright © 2020 USER. All rights reserved.
//

import Foundation
import RxDataSources
import RxSwift

class RamenPresenter {
    
    let ramens = Observable.just([
        SectionModel(model: "醤油", items: [
            Ramen(name: "豚骨醤油ラーメン",taste: "濃いめ", imaged: "sample005"),
            Ramen(name: "喜多方ラーメン", taste: "あっさり", imaged: "sample009"),
            Ramen(name: "チャーシューメン", taste: "あっさり", imaged: "sample010")
               ]),

               SectionModel(model: "塩味", items: [
                Ramen(name: "野菜たっぷりタンメン", taste: "あっさり", imaged: "sample007")
               ]),

               SectionModel(model: "味噌", items: [
                Ramen(name: "8番ラーメン味噌味", taste: "ふつう", imaged: "sample001"),
                Ramen(name: "もやしそば味噌味", taste: "濃いめ", imaged: "sample008")
               ]),

               SectionModel(model: "その他", items: [
                Ramen(name: "台湾風まぜそば", taste: "濃いめ", imaged: "sample002"),
                Ramen(name: "長崎ちゃんぽん", taste: "ふつう", imaged: "sample003"),
                Ramen(name: "酸辣湯麺", taste: "ふつう", imaged: "sample004"),
                Ramen(name: "トマトと野菜のラーメン", taste: "あっさり", imaged: "sample006")
               ])
    ])
}
