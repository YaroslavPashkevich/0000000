//
//  ViewController.swift
//  animation
//
//  Created by  Yaroslav on 24.08.21.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let viewView = UIView(frame:CGRect(x: 100,
                                           y: 100,
                                           width: 100,
                                           height: 100))
        viewView.backgroundColor = .blue
        
        view.addSubview(viewView)
        
        UIView.animate(withDuration:3) {
            viewView.frame = CGRect(x: 300,
                                    y: 300,
                                    width: 200,
                                    height: 400)
            viewView.backgroundColor = .red
            
        } completion: { _ in
            UIView.animate(withDuration: 3, delay: 2) {
                viewView.center = CGPoint(x: 150,
                                          y: 400)
                
                viewView.backgroundColor = .gray
                viewView.transform = CGAffineTransform(rotationAngle: 90)
                
        } completion: { _ in
            UIView.animate(withDuration: 6, delay: 2, options: .autoreverse ){
                self.view.backgroundColor = .yellow
                viewView.transform = CGAffineTransform(scaleX: 1, y: 2)
                viewView.backgroundColor = .red
            }
            
            
        }
        
        }
    
        }}
    
    
//        withDuration: за сколько времени произойдет анимация, delay: задержка до момента начала анимации, options: .разные опции (например реверс - это анимация в обратку пойдет
//        UIView.animate(withDuration: 3, delay: 1, options: .curveEaseIn) {
//            <#code#>
//        } completion: { <#Bool#> in
//            <#code#>
//        }
    
    
    

