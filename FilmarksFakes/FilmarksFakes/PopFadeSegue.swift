//
//  PopFadeSegue.swift
//  FilmarksFakes
//
//  Created by 1st-impact on 2019/07/01.
//  Copyright © 2019 S4ch1mos. All rights reserved.
//

import UIKit

class PopFadeSegue: UIStoryboardSegue {
    override func perform() {
        UIView.transition(
            with: (source.navigationController?.view)!,
            duration: 0.5,
            options: .transitionCrossDissolve,
            animations: {
                () -> Void in
                self.source.navigationController?.popViewController(animated: false)
        },
            completion: nil)
    }
}
