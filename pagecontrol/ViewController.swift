//
//  ViewController.swift
//  pagecontrol
//
//  Created by alehanter on 13.09.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var contentView: UIView!

    var dataSource = [""]
    
    var currentViewControllerIndex = 0
    
        
    override func viewDidLoad() {
        super.viewDidLoad()
        configurePageViewController()
    }

    @IBAction func didChangeSegment(_ sender: UISegmentedControl) {

        if sender.selectedSegmentIndex == 0 {
//            dataSource = ["Понедельник\n1 неделя\n11 40 Защита в комп сетях лекция Новиков 5 корпус 344",
//                          "Среда\n1 неделя\n8 00 Солонская лекция 5 корпус 159",
//                          "Четверг\n1 неделя 15 35 Метрология Лаб Сметанин 1 к 266",
//                          "Пятница\n1 неделя",
//                          "Суббота\n1 неделя"]
            dataSource = ["Понедельник 1", "Среда 1", "Четверг 1", "Пятница 1", "Суббота 1"]
        }
        else if sender.selectedSegmentIndex == 1 {
//            dataSource = ["Понедельник\n2 неделя ",
//                          "Среда\n2 неделя",
//                          "Четверг\n2 неделя 15 35 ОУИБ Пр Овчинникова 5 к",
//                          "Пятница\n2 неделя",
//                          "Суббота\n2 неделя"]
            dataSource = ["Понедельник 2", "Среда 2", "Четверг 2", "Пятница 2", "Суббота 2"]
        }
    }
    
    
    func configurePageViewController() {
        guard let pageViewController = storyboard?.instantiateViewController(identifier: String(describing: CustomPageViewController.self)) as? CustomPageViewController else {
            return
        }
        
        pageViewController.delegate = self
        pageViewController.dataSource = self
        
        addChild(pageViewController)
        pageViewController.didMove(toParent: self)
        
        pageViewController.view.translatesAutoresizingMaskIntoConstraints = false
        
        pageViewController.view.backgroundColor = UIColor.black
        
        contentView.addSubview(pageViewController.view)
        
        let views: [String: Any] = ["pageView": pageViewController.view as Any]

        
    
        contentView.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-0-[pageView]-0-|",
                                                                  options: NSLayoutConstraint.FormatOptions(rawValue: 0),
                                                                 metrics: nil, views: views))
        
        contentView.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|-0-[pageView]-0-|",
                                                                  options: NSLayoutConstraint.FormatOptions(rawValue: 0),
                                                                 metrics: nil, views: views))
        
        guard let startingViewController = detailViewControllerAt(index: currentViewControllerIndex) else {
            return
        }
         
        
        pageViewController.setViewControllers([startingViewController], direction: .forward, animated: true)
        
    }
    
    
    func detailViewControllerAt(index: Int) -> DataViewController? {
        
        if index >= dataSource.count || dataSource.count == 0 {
            return nil
        }
        
        guard let dataViewController = storyboard?.instantiateViewController(withIdentifier: String(describing: DataViewController.self)) as? DataViewController else {
            return nil
        }

        dataViewController.index = index
        dataViewController.displayText = dataSource[index]
        
        
        return dataViewController
    }

}


extension ViewController: UIPageViewControllerDelegate, UIPageViewControllerDataSource {
    func presentationIndex(for pageViewController: UIPageViewController) -> Int {
        return currentViewControllerIndex
    }
    
    func presentationCount(for pageViewController: UIPageViewController) -> Int {
        return dataSource.count
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        
        let dataViewController = viewController as? DataViewController
        
        guard var currentIndex = dataViewController?.index else{
            return nil
        }
        
        currentViewControllerIndex = currentIndex
        
        if currentIndex == 0 {
            return nil
        }
        
        currentIndex -= 1
        
        return detailViewControllerAt(index: currentIndex)
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        
        
        let dataViewController = viewController as? DataViewController
        
        guard var currentIndex = dataViewController?.index else{
            return nil
        }
        
        if currentIndex == dataSource.count {
            return nil
        }
        
        currentIndex += 1
        currentViewControllerIndex = currentIndex
        
        return detailViewControllerAt(index: currentIndex)
    }
    
}
