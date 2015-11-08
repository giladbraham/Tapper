//
//  ViewController.swift
//  Tapper
//
//  Created by Gilad Braham on 08/11/2015.
//  Copyright © 2015 Gilad Braham. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //Properties
    var maxTaps = 0
    var currentTaps = 0
    
    //Outlets
    @IBOutlet weak var logoImg: UIImageView!
    @IBOutlet weak var txtField: UITextField!
    @IBOutlet weak var playBtn: UIButton!
    
    @IBOutlet weak var tapBtn: UIButton!
    @IBOutlet weak var tapsLbl: UILabel!
    
    @IBAction func onPlayBtnClick(sender: UIButton!){
        
        
        if txtField.text != nil && txtField.text != "" {
            logoImg.hidden = true
            playBtn.hidden = true
            txtField.hidden = true
            
            tapBtn.hidden = false
            tapsLbl.hidden = false
            
            
            maxTaps = Int(txtField.text!)!
            currentTaps = 0
            updateTapsLbl()
            
            
            
            
        }
    }
    
    @IBAction func onCoinClick(sender: UIButton!){
        currentTaps++
        updateTapsLbl()
        
        if isGameOver(){
            resetGame()
        }
    }
    
    func updateTapsLbl(){
        tapsLbl.text = "\(currentTaps) Taps"
    }
    
    func isGameOver() -> Bool {
        return currentTaps >= maxTaps
       
        
    }
    
    func resetGame() {
        maxTaps = 0
        txtField.text = ""
        
        logoImg.hidden = false
        playBtn.hidden = false
        txtField.hidden = false
        
        tapBtn.hidden = true
        tapsLbl.hidden = true
    }


}

