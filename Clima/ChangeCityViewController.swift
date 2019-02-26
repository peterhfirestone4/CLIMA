//
//  ChangeCityViewController.swift
//  WeatherApp
//

import UIKit


//Write the protocol declaration here:
protocol ChangeCityDelegate {
    func userEnteredANewCityName(city: String)
    func userSwitches(isOn: Bool)
}


class ChangeCityViewController: UIViewController {
    
    
    var delegate : ChangeCityDelegate?
    var isSwitchOn: Bool = false
    
    //This is the pre-linked IBOutlets to the text field:
    @IBOutlet weak var changeCityTextField: UITextField!

    
    //This is the IBAction that gets called when the user taps on the "Get Weather" button
    
    
    @IBAction func getWeatherPressed(_ sender: AnyObject) {

        let cityName = changeCityTextField.text!
        
        delegate?.userEnteredANewCityName(city: cityName)

        self.dismiss(animated: true, completion: nil)
        
    }

    //IB action that gets called when user switches on switch
    
    
    @IBAction func tempSwitch(_ sender: UISwitch) {
        self.userSwitched(isOn: sender.isOn)
    }
    
    func userSwitched(isOn: Bool) {
        delegate?.userSwitches(isOn: isOn)
    }
    
    
    

    //This is the IBAction that gets called when the user taps the back button. It dismisses the ChangeCityViewController.
    
    @IBAction func backButtonPressed(_ sender: AnyObject) {
        self.dismiss(animated: true, completion: nil)
    }
    
}
