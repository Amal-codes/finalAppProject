//
//  LinkViewController.swift
//  finalAppProject
//
//  Created by Mohamed2 on 8/18/22.
//

import UIKit

class LinkViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func link1(_ sender: Any) {
        UIApplication.shared.open(URL(string:"https://innocenceproject.org/donate/?f_src=FY21_web_x_gen_nmat_campNew000Top000Button_Main")! as URL, options: [:], completionHandler: nil)
    }
    
    @IBAction func link2(_ sender: Any) {
        UIApplication.shared.open(URL(string:"https://secure.actblue.com/contribute/page/support-us?refcode=coc-website_homepage_header")! as URL, options: [:], completionHandler: nil)
    }
    
    @IBAction func link3(_ sender: Any) {
        UIApplication.shared.open(URL(string:"https://donate.directrelief.org/give/406660/#!/donation/checkout")! as URL, options: [:], completionHandler: nil)
    }
    
    @IBAction func link4(_ sender: Any) {
        UIApplication.shared.open(URL(string:"https://secure3.convio.net/cfrr/site/Donation2?9666.donation=form1&df_id=9666&mfc_pref=T&s_src=21RRFR0421Nav&s_subsrc=datasync&autologin=true")! as URL, options: [:], completionHandler: nil)
    }
    
    @IBAction func link5(_ sender: Any) {
        UIApplication.shared.open(URL(string:"https://give.thetrevorproject.org/give/63307/?_ga=2.244753989.1506363419.1660833086-1823822853.1660833086#!/donation/checkout")! as URL, options: [:], completionHandler: nil)
    }
    
    @IBAction func link6(_ sender: Any) {
        UIApplication.shared.open(URL(string:"https://donate.nilc.org/page/34668/donate/1?ea.tracking.id=Nilcweb")! as URL, options: [:], completionHandler: nil)
    }
    
    @IBAction func link7(_ sender: Any) {
        UIApplication.shared.open(URL(string:"https://www.aclu.org/")! as URL, options: [:], completionHandler: nil)
    }
    
    @IBAction func link8(_ sender: Any) {
        UIApplication.shared.open(URL(string:"https://join.globalfundforwomen.org/a/donate?_gl=1*1ouutx9*_ga*MjI3OTc1Mjg0LjE2NjA4MzMxMTE.*_ga_WGPQPN3LNW*MTY2MDgzMzExMS4xLjEuMTY2MDgzMzExMS4wLjAuMA..")! as URL, options: [:], completionHandler: nil)
    }
    
    @IBAction func link9(_ sender: Any) {
        UIApplication.shared.open(URL(string:"https://awionline.org/content/make-donation-awi")! as URL, options: [:], completionHandler: nil)
    }
    
    @IBAction func link10(_ sender: Any) {
        UIApplication.shared.open(URL(string:"https://awionline.org/content/make-donation-awi")! as URL, options: [:], completionHandler: nil)
    }
    /*
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
