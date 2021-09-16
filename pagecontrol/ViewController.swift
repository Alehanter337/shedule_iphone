//
//  ViewController.swift
//  pagecontrol
//
//  Created by alehanter on 13.09.2021.
//

import UIKit


class ViewController: UIViewController {

    @IBOutlet weak var contentView: UIView!

    
    var dataSource = ["Понедельник 1н.", "Среда 1н.", "Четверг 1н.", "Пятница 1н.", "Суббота 1н."]
    
    var firstL = ["11:40\nЗащита информации в комп. сетях (Лк) Новиков, 411 (к. 1)", //понедельник 1 пара
    "8:00\nСолонская (Лк) 159 (к. 5)", //среда 1 пара
    "9:50\nФизра", //четверг 1 пара
    "9:50\nОперационные системы (Лк) Моренкова, 307 (к. 1)", //пятница 1 пара
    "11:40\nЦОС (Пр) Яковлев, 441 (к. 3)"] //суббота 1 пара
    
    var secondL = ["13:45\nТехническая защита информации (Лаб) Федоров, 344 (к. 5)", //понедельник 2 пара
                   "9:50\nЦОС (Лк) Лебедянцев, 159 (к. 5)", //среда 2 пара
                   "9:50\nПраво (Лк), Овчинникова, 407 (к. 1) (", //четверг 2 пара
                   "11:40\nОперационные системы (Лаб) Моренкова, 317 (к. 1)", //пятница 2 пара
                   "13:45\nЗащита информации в комп. сетях (Лаб) Федоров, 346 (к. 5)"] //суббота 2 пара
    
    var thirdL = ["15:35\nОсновы управления ИБ (Лк) Попков, 347 (к. 5)", //понедельник 3 пара
                  "11:40\nБЖ (Лк) Симакова 207 (к. 1)", //среда 3 пара
                  "13:45\nИзмерения в ТКС (Лк) Сметанин, 253 (к. 3)", //четверг 3 пара
                  "13:45\nСолонская (Лаб), 346 (к. 5)", //пятница 3 пара
                  "-"] //суббота
    
    var fourthL = ["-", //понедельник 4 пара
                   "13:45\nБЖ (Пр) Симакова 415а (к. 1)", //среда 4 пара
                   "15:35\nИзмерения в ТКС (Лаб) Сметанин, 266 (к. 3)", //четверг 4 пара
                   "15:35\nПраво (Пр) Овчинникова, 347 (к. 5)", //пятница 4 пара
                   "-"] //суббота
    
    var currentViewControllerIndex = 0
    
        
    override func viewDidLoad() {
        super.viewDidLoad()
        configurePageViewController()
    }

    @IBAction func didChangeSegment(_ sender: UISegmentedControl) {

        if sender.selectedSegmentIndex == 0 {
            dataSource = [""]
            dataSource = ["Понедельник 1н.", "Среда 1н.", "Четверг 1н.", "Пятница 1н.", "Суббота 1н."]
            firstL = ["11:40\nЗащита информации в комп. сетях (Лк) Новиков, 411 (к. 1)", //понедельник 1 пара
            "8:00\nСолонская (Лк) 159 (к. 5)", //среда 1 пара
            "9:50\nФизра", //четверг 1 пара
            "9:50\nОперационные системы (Лк) Моренкова, 307 (к. 1)", //пятница 1 пара
            "11:40\nЦОС (Пр) Яковлев, 441 (к. 3)"] //суббота 1 пара
            secondL = ["13:45\nТехническая защита информации (Лаб) Федоров, 344 (к. 5)", //понедельник 2 пара
                           "9:50\nЦОС (Лк) Лебедянцев, 159 (к. 5)", //среда 2 пара
                           "9:50\nПраво (Лк), Овчинникова, 407 (к. 1) (", //четверг 2 пара
                           "11:40\nОперационные системы (Лаб) Моренкова, 317 (к. 1)", //пятница 2 пара
                           "13:45\nЗащита информации в комп. сетях (Лаб) Федоров, 346 (к. 5)"] //суббота 2 пара
            
            thirdL = ["15:35\nОсновы управления ИБ (Лк) Попков, 347 (к. 5)", //понедельник 3 пара
                          "11:40\nБЖ (Лк) Симакова 207 (к. 1)", //среда 3 пара
                          "13:45\nИзмерения в ТКС (Лк) Сметанин, 253 (к. 3)", //четверг 3 пара
                          "13:45\nСолонская (Лаб), 346 (к. 5)", //пятница 3 пара
                          "-"] //суббота
            
            fourthL = ["сhill", //понедельник 4 пара
                           "13:45\nБЖ (Пр) Симакова 415а (к. 1)", //среда 4 пара
                           "15:35\nИзмерения в ТКС (Лаб) Сметанин, 266 (к. 3)", //четверг 4 пара
                           "15:35\nПраво (Пр) Овчинникова, 347 (к. 5)", //пятница 4 пара
                           "-"] //суббота
        }
        else if sender.selectedSegmentIndex == 1 {
            dataSource = [""]
            dataSource = ["Понедельник 2н.", "Среда 2н.", "Четверг 2н.", "Пятница 2н.", "Суббота 2н."]
            firstL = ["11:40\nЗащита информации в комп. сетях (Лк) Новиков, 411 (к. 1)", //понедельник 1 пара
            "8:00\nСолонская (Лк) 159 (к. 5)", //среда 1 пара
            "9:50\nФизра", //четверг 1 пара
            "9:50\nОперационные системы (Лк) Моренкова, 307 (к. 1)", //пятница 1 пара
            "11:40\nЦОС (Пр) Яковлев, 441 (к. 3)"] //суббота 1 пара
            secondL = ["13:45\nТехническая защита информации (Лк) Смоленцев, 417 (к. 1)", //понедельник 2 пара 2 неделя
                           "9:50\nЦОС (Лк) Лебедянцев, 159 (к. 5)", //среда 2 пара
                           "9:50\nПраво (Лк), Овчинникова, 407 (к. 1)", //четверг 2 пара
                           "11:40\nОперационные системы (Лаб) Моренкова, 317 (к. 1)", //пятница 2 пара
                           "13:45\nЗащита информации в комп. сетях (Лаб) Федоров, 346 (к. 5)"] //суббота 2 пара
            
            thirdL = ["15:35\nТЗИ (Пр) Федоров, 347 (к. 5)", //понедельник 3 пара 2 неделя
                          "11:40\nБЖ (Лк) Симакова 207 (к. 1)", //среда 3 пара
                          "13:45\nИзмерения в ТКС (Лк) Сметанин, 253 (к. 3)", //четверг 3 пара
                          "13:45\nСолонская (Лаб), 346 (к. 5)", //пятница 3 пара
                          "-"] //суббота
            
            fourthL = ["-", //понедельник 4 пара
                           "-", //среда 4 пара 2 неделя
                           "15:35\nОсновы упр. ИБ (Пр) Овчинникова, 266 (к. 3)", //четверг 4 пара 2 неделя
                           "15:35\nПраво (Пр) Овчинникова, 347 (к. 5)", //пятница 4 пара
                           "-"] //суббота
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
        
        if index >= firstL.count || firstL.count == 0 {
            return nil
        }
        
        
        
        guard let dataViewController = storyboard?.instantiateViewController(withIdentifier: String(describing: DataViewController.self)) as? DataViewController else {
            return nil
        }
        

        dataViewController.index = index
        dataViewController.displayText = dataSource[index]
        dataViewController.displayLesson = firstL[index]
        dataViewController.displayLesson_2 = secondL[index]
        dataViewController.displayLesson_3 = thirdL[index]
        dataViewController.displayLesson_4 = fourthL[index]
        
        
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
