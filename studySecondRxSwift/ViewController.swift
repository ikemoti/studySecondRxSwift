//
//  ViewController.swift
//  studySecondRxSwift
//
//  Created by USER on 2020/03/18.
//  Copyright © 2020 USER. All rights reserved.
//

import UIKit
import RxSwift
import RxDataSources

class RamenListController: UIViewController {
    
    let disposebag = DisposeBag()
    
    let ramenData = RamenPresenter()
    
    //データソース定義
    let dataSource = RxTableViewSectionedReloadDataSource<SectionModel<String,Ramen>>(
        configureCell:  {
            (_, tableView, indexPath, ramens) -> UITableViewCell in
            let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
            cell.textLabel?.text = ramens.name
            cell.detailTextLabel?.text = ramens.taste
            cell.imageView?.image = ramens.image
            return cell
    },
        
        titleForHeaderInSection:{dataSource,sectionIndex in
            return dataSource[sectionIndex].model
    }
        
    )
    @IBOutlet weak var tableview: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        ramenData.ramens.bind(to:tableview.rx.items(dataSource:dataSource)).disposed(by: disposebag)
        
        
        //tableview.delegate = selfのRxバージョン
        tableview.rx.setDelegate(self).disposed(by:disposebag)
        
        
        
    }
    
}

extension RamenListController :UITableViewDelegate{
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 65
    }
}

