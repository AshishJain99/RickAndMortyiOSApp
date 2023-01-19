//
//  ViewController.swift
//  RickAndMorty
//
//  Created by sixpep on 19/01/23.
//

import UIKit

final class RMTabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        //view.backgroundColor = .red
        setupTabs()
    }

    private func setupTabs(){
        let characterVc = RMCharacterViewController()
        let episodeVC = RMEpisodeViewController()
        let settingVC = RMSettingsViewController()
        let locationVC = RMLocationViewController()
        
        characterVc.navigationItem.largeTitleDisplayMode = .automatic
        episodeVC.navigationItem.largeTitleDisplayMode = .automatic
        settingVC.navigationItem.largeTitleDisplayMode = .automatic
        locationVC.navigationItem.largeTitleDisplayMode = .automatic
        
      
        
        let nav1 = UINavigationController(rootViewController: characterVc)
        let nav2 = UINavigationController(rootViewController: episodeVC)
        let nav3 = UINavigationController(rootViewController: settingVC)
        let nav4 = UINavigationController(rootViewController: locationVC)
        
        nav1.tabBarItem = UITabBarItem(title: "Characters",
                                              image: UIImage(systemName: "person"),
                                              tag: 1)
        nav2.tabBarItem = UITabBarItem(title: "Episodes",
                                               image: UIImage(systemName: "globe"),
                                              tag: 1)
        nav3.tabBarItem = UITabBarItem(title: "Settings",
                                              image: UIImage(systemName: "tv"),
                                              tag: 1)
        nav4.tabBarItem = UITabBarItem(title: "Location",
                                              image: UIImage(systemName: "gear"),
                                              tag: 1)
        
        
        setViewControllers([nav1,nav2,nav3,nav4], animated: true)
        
        for nav in [nav1,nav2,nav3,nav4]{
            nav.navigationBar.prefersLargeTitles = true
        }
        
    }
    

}

