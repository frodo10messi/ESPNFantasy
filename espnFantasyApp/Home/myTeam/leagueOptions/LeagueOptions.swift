//
//  LeagueOptions.swift
//  espnFantasyApp
//
//  Created by prog on 12/30/19.
//  Copyright © 2019 prog. All rights reserved.
//
import UIKit

class leagueInfocell: LBTAListCell<leagueInfoModel> {
     
    override var item: leagueInfoModel! {
           didSet {
            img.image = item.img
            label.text = item.name
           }
       }
    
    let img: AspectFitImageView = {
        let i = AspectFitImageView(image: #imageLiteral(resourceName: "Group 76"))
        i.constrainWidth(30)
        return i
    }()
    let label:UILabel = {
        let l = UILabel(text: "", font: AppFont.Regular().twelve, textColor: UIColor(red: 0.05, green: 0.05, blue: 0.05, alpha: 1), textAlignment: .left, numberOfLines: 1)
        return l
    }()
    
    override func setupViews() {
        let separatorStack1 = UIStackView(arrangedSubviews: [UIView(backgroundColor: UIColor(red: 0.621, green: 0.621, blue: 0.621, alpha: 1)).withHeight(1)])
                      separatorStack1.padTop(0).padBottom(0)
        
    let v1 = stack(label,separatorStack1)
        let h = hstack(img,v1).padLeft(10)
        h.spacing = 10
       
    }
}
class leagueInfoHeader: UICollectionReusableView {
    lazy var Label1: UILabel = {
                  let l = UILabel(text: "LEAGUE", font: AppFont.Bold().fourteen, textColor: UIColor(red: 0.05, green: 0.05, blue: 0.05, alpha: 1), textAlignment: .left, numberOfLines: 1)
                        
                        return l
                    }()
           lazy var Label2: UILabel = {
           let l = UILabel(text: "Arizona League", font: AppFont.Regular().fourteen, textColor:UIColor(red: 0.471, green: 0.471, blue: 0.471, alpha: 1), textAlignment: .left, numberOfLines: 1)
               
               return l
           
             }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
//        backgroundColor = .yellow
        stack(Label1,Label2).padLeft(10).padTop(10)
         
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
}
class leagueInfoFooter: UICollectionReusableView {
    lazy var Label1: UILabel = {
    let l = UILabel(text: "STANDINGS", font: AppFont.Bold().sixteen, textColor: UIColor(red: 0.05, green: 0.05, blue: 0.05, alpha: 1), textAlignment: .left, numberOfLines: 1)
          
          return l
      }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
//        backgroundColor = .yellow
        stack(Label1).padLeft(10).padTop(10)
         
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
}
struct leagueInfoModel{
    let img:UIImage
    let name:String
}
import Foundation
import UIKit
class LeagueOptions:LBTAListHeaderFooterController<leagueInfocell, leagueInfoModel, leagueInfoHeader,leagueInfoFooter>,UICollectionViewDelegateFlowLayout{
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.items = [
            leagueInfoModel(img: #imageLiteral(resourceName: "Group 80"), name: "Scoreboard"),
            leagueInfoModel(img: #imageLiteral(resourceName: "Group 81"), name: "Standings"),
            leagueInfoModel(img: #imageLiteral(resourceName: "Group 85"), name: "Schedule & Playoff Bracket"),
            leagueInfoModel(img: #imageLiteral(resourceName: "Group 76"), name: "Message Board & LM Poll"),
            leagueInfoModel(img: #imageLiteral(resourceName: "Group 77"), name: "Recent Activity"),
            leagueInfoModel(img: #imageLiteral(resourceName: "Group 78"), name: "Waiver Order"),
            leagueInfoModel(img: #imageLiteral(resourceName: "Group 83"), name: "League Info"),
            leagueInfoModel(img: #imageLiteral(resourceName: "Vector 13"), name: "League Manager Tools"),
        ]
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForFooterInSection section: Int) -> CGSize {
        return .init(width: collectionView.frame.width, height: 30)
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        return .init(width: collectionView.frame.width, height: 60)
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
         return .init(width: collectionView.frame.width, height: 50)
    }
}
import SwiftUI
struct leagueinfo: PreviewProvider {
    static var previews: some View {
//        Text("main preview 123123")
        ContainerView().edgesIgnoringSafeArea(.all)
    }
    
    struct ContainerView: UIViewControllerRepresentable {
        
        func makeUIViewController(context: UIViewControllerRepresentableContext<leagueinfo.ContainerView>) -> UIViewController {
            return UINavigationController(rootViewController: LeagueOptions())
        }
        
        func updateUIViewController(_ uiViewController: leagueinfo.ContainerView.UIViewControllerType, context: UIViewControllerRepresentableContext<leagueinfo.ContainerView>) {
            
        }
    }
}
