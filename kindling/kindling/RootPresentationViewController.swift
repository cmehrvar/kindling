//
//  RootPresentationViewController.swift
//  kindling
//
//  Created by Cina Mehrvar on 2015-11-02.
//  Copyright © 2015 Cina Mehrvar. All rights reserved.
//

import UIKit

class RootPresentationViewController: UIViewController {
    
    
    @IBAction func panGestureAction(sender: AnyObject) {
        
        // Send a UIPanGestureRecognizer
        didPan(sender as! UIPanGestureRecognizer)
        
    }
    
    
    // Container Outlet
    @IBOutlet weak var containerOutlet: roundedPopover!
    
    
    // container view horizontal constraint outlet
    @IBOutlet weak var horizontalContainerConstraint: NSLayoutConstraint!
    
    
    
    
    
    // What happens at the different pan states
    func didPan(sender: UIPanGestureRecognizer){
        
        let myGesture: UIPanGestureRecognizer = sender
        let myVariable = sender.translationInView(view)
        
        switch myGesture.state {
            
        case .Began:
            
            print("began")
            
        case .Changed:
            
            print("changed")
           
            horizontalContainerConstraint.constant = (myVariable.x)
            horizontalContainerConstraint.constant = getChangedState(&horizontalContainerConstraint.constant)
        
        case .Ended:
            horizontalContainerConstraint.constant = 0
            
        default:
            break
            
            
        }
    }
    func getChangedState(inout stateValue:CGFloat) -> CGFloat {
        if stateValue <= -200 {
            stateValue = -200
        } else if stateValue >= 200 {
            stateValue = 200
        }
        return stateValue
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
