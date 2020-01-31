//
//  MainTabBar.swift
//  UITabBar
//
//  Created by Marc Meinhardt on 22.01.20.
//  Copyright © 2020 Marc Meinhardt. All rights reserved.
//

import UIKit

class MainTabBar: UITabBarController {

    private let HomeVc =        HomeViewController()
    private let TrendingVc =    TrendingViewController()
    private let PlaylistVc =    PlaylistViewController()
    private let ProfileVc =     ProfileViewController()
    
    let home =      "Home"
    let trending =  "Trending"
    let playlist =  "Playlist"
    let profile =   "Profile"
    
    let circle =    "circle64"
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewControllers =   [
                            createController(title: home, imageName: circle, vc: HomeVc),
                            createController(title: trending, imageName: circle, vc: TrendingVc),
                            createController(title: playlist, imageName: circle, vc: PlaylistVc),
                            createController(title: profile, imageName: circle, vc: ProfileVc),
                            ]
    }
}


extension MainTabBar {
    
    private func createController(title: String, imageName: String, vc: UIViewController) -> UINavigationController {
        let recentVc = UINavigationController(rootViewController: vc)
        recentVc.tabBarItem.title = title
        recentVc.tabBarItem.image = UIImage(named: imageName)
        return recentVc
    }
    
}
