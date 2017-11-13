/*
 * Copyright (C) 2015 - 2017, Daniel Dahan and CosmicMind, Inc. <http://cosmicmind.com>.
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions are met:
 *
 *	*	Redistributions of source code must retain the above copyright notice, this
 *		list of conditions and the following disclaimer.
 *
 *	*	Redistributions in binary form must reproduce the above copyright notice,
 *		this list of conditions and the following disclaimer in the documentation
 *		and/or other materials provided with the distribution.
 *
 *	*	Neither the name of CosmicMind nor the names of its
 *		contributors may be used to endorse or promote products derived from
 *		this software without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
 * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
 * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
 * DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE
 * FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
 * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
 * SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
 * CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
 * OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
 * OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 */

import UIKit
import Material

class ViewController: UIViewController {
    fileprivate var buttons = [TabItem]()
    fileprivate var tabBar: TabBar!
    
    open override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        prepareButtons()
        prepareTabBar()
    }
}

extension ViewController {
    fileprivate func prepareButtons() {
        let btn1 = TabItem(title: "Library", titleColor: Color.blueGrey.base)
        btn1.pulseAnimation = .none
        buttons.append(btn1)
        
        let btn2 = TabItem(title: "Photo", titleColor: Color.blueGrey.base)
        btn2.pulseAnimation = .none
        buttons.append(btn2)
        
        let btn3 = TabItem(title: "Video", titleColor: Color.blueGrey.base)
        btn3.pulseAnimation = .none
        buttons.append(btn3)
    }
    
    fileprivate func prepareTabBar() {
        tabBar = TabBar()
        tabBar.delegate = self
        
        tabBar.dividerColor = Color.grey.lighten2
        tabBar.dividerAlignment = .top
        
        tabBar.lineColor = Color.blue.base
        tabBar.lineAlignment = .top
        
        tabBar.backgroundColor = Color.grey.lighten5
        tabBar.tabItems = buttons
        
        view.layout(tabBar).horizontally().bottom()
    }
}

extension ViewController: TabBarDelegate {
    @objc
    func tabBar(tabBar: TabBar, willSelect tabItem: TabItem) {
        print("will select")
    }
    
    @objc
    func tabBar(tabBar: TabBar, didSelect tabItem: TabItem) {
        print("did select")
    }
}

