// MARK: - Mocks generated from file: FBAuth/ViewController.swift at 2017-05-15 13:43:02 +0000

//
//  ViewController.swift
//  FBAuth
//
//  Created by Георгий Иванов on 14.05.17.
//  Copyright © 2017 George Ivanov. All rights 
import Cuckoo
@testable import FBAuth

import UIKit

class MockViewController: ViewController, Cuckoo.Mock {
    typealias MocksType = ViewController
    typealias Stubbing = __StubbingProxy_ViewController
    typealias Verification = __VerificationProxy_ViewController
    let cuckoo_manager = Cuckoo.MockManager()

    private var observed: ViewController?

    func spy(on victim: ViewController) -> Self {
        observed = victim
        return self
    }

    
    // ["name": "tokenLabel", "accesibility": "", "@type": "InstanceVariable", "type": "UILabel!", "isReadOnly": false]
     override var tokenLabel: UILabel! {
        get {
            return cuckoo_manager.getter("tokenLabel", original: observed.map { o in return { () -> UILabel! in o.tokenLabel }})
        }
        
        set {
            cuckoo_manager.setter("tokenLabel", value: newValue, original: observed != nil ? { self.observed?.tokenLabel = $0 } : nil)
        }
        
    }
    

    

    
     override func buttonClick(_ sender: UIButton)  {
        
        return cuckoo_manager.call("buttonClick(_: UIButton)",
            parameters: (sender),
            original: observed.map { o in
                return { (sender: UIButton) in
                    o.buttonClick(sender)
                }
            })
        
    }
    
     override func viewDidLoad()  {
        
        return cuckoo_manager.call("viewDidLoad()",
            parameters: (),
            original: observed.map { o in
                return { () in
                    o.viewDidLoad()
                }
            })
        
    }
    
     override func didReceiveMemoryWarning()  {
        
        return cuckoo_manager.call("didReceiveMemoryWarning()",
            parameters: (),
            original: observed.map { o in
                return { () in
                    o.didReceiveMemoryWarning()
                }
            })
        
    }
    

    struct __StubbingProxy_ViewController: Cuckoo.StubbingProxy {
        private let cuckoo_manager: Cuckoo.MockManager

        init(manager: Cuckoo.MockManager) {
            self.cuckoo_manager = manager
        }
        
        var tokenLabel: Cuckoo.ToBeStubbedProperty<UILabel?> {
            return .init(manager: cuckoo_manager, name: "tokenLabel")
        }
        
        
        func buttonClick<M1: Cuckoo.Matchable>(_ sender: M1) -> Cuckoo.StubNoReturnFunction<(UIButton)> where M1.MatchedType == UIButton {
            let matchers: [Cuckoo.ParameterMatcher<(UIButton)>] = [wrap(matchable: sender) { $0 }]
            return .init(stub: cuckoo_manager.createStub("buttonClick(_: UIButton)", parameterMatchers: matchers))
        }
        
        func viewDidLoad() -> Cuckoo.StubNoReturnFunction<()> {
            let matchers: [Cuckoo.ParameterMatcher<Void>] = []
            return .init(stub: cuckoo_manager.createStub("viewDidLoad()", parameterMatchers: matchers))
        }
        
        func didReceiveMemoryWarning() -> Cuckoo.StubNoReturnFunction<()> {
            let matchers: [Cuckoo.ParameterMatcher<Void>] = []
            return .init(stub: cuckoo_manager.createStub("didReceiveMemoryWarning()", parameterMatchers: matchers))
        }
        
    }


    struct __VerificationProxy_ViewController: Cuckoo.VerificationProxy {
        private let cuckoo_manager: Cuckoo.MockManager
        private let callMatcher: Cuckoo.CallMatcher
        private let sourceLocation: Cuckoo.SourceLocation

        init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
            self.cuckoo_manager = manager
            self.callMatcher = callMatcher
            self.sourceLocation = sourceLocation
        }

        
        var tokenLabel: Cuckoo.VerifyProperty<UILabel?> {
            return .init(manager: cuckoo_manager, name: "tokenLabel", callMatcher: callMatcher, sourceLocation: sourceLocation)
        }
        

        
        @discardableResult
        func buttonClick<M1: Cuckoo.Matchable>(_ sender: M1) -> Cuckoo.__DoNotUse<Void> where M1.MatchedType == UIButton {
            let matchers: [Cuckoo.ParameterMatcher<(UIButton)>] = [wrap(matchable: sender) { $0 }]
            return cuckoo_manager.verify("buttonClick(_: UIButton)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
        }
        
        @discardableResult
        func viewDidLoad() -> Cuckoo.__DoNotUse<Void> {
            let matchers: [Cuckoo.ParameterMatcher<Void>] = []
            return cuckoo_manager.verify("viewDidLoad()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
        }
        
        @discardableResult
        func didReceiveMemoryWarning() -> Cuckoo.__DoNotUse<Void> {
            let matchers: [Cuckoo.ParameterMatcher<Void>] = []
            return cuckoo_manager.verify("didReceiveMemoryWarning()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
        }
        
    }


}

 class ViewControllerStub: ViewController {
    
     override var tokenLabel: UILabel! {
        get {
            return DefaultValueRegistry.defaultValue(for: (UILabel!).self)
        }
        
        set { }
        
    }
    

    

    
     override func buttonClick(_ sender: UIButton)  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
     override func viewDidLoad()  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
     override func didReceiveMemoryWarning()  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
}




// MARK: - Mocks generated from file: FBAuth/Facebook.swift at 2017-05-15 13:43:02 +0000

//
//  Facebook.swift
//  FBAuth
//
//  Created by Георгий Иванов on 14.05.17.
//  Copyright © 2017 George Ivanov. All rights 
import Cuckoo
@testable import FBAuth

import FBSDKLoginKit
import Foundation

class MockFacebook: Facebook, Cuckoo.Mock {
    typealias MocksType = Facebook
    typealias Stubbing = __StubbingProxy_Facebook
    typealias Verification = __VerificationProxy_Facebook
    let cuckoo_manager = Cuckoo.MockManager()

    private var observed: Facebook?

    func spy(on victim: Facebook) -> Self {
        observed = victim
        return self
    }

    
    // ["name": "token", "accesibility": "", "@type": "InstanceVariable", "type": "String?", "isReadOnly": false]
     override var token: String? {
        get {
            return cuckoo_manager.getter("token", original: observed.map { o in return { () -> String? in o.token }})
        }
        
        set {
            cuckoo_manager.setter("token", value: newValue, original: observed != nil ? { self.observed?.token = $0 } : nil)
        }
        
    }
    

    

    
    public override func getAuthToken(from: UIViewController, callback: @escaping (String?, Error?) -> Void)  {
        
        return cuckoo_manager.call("getAuthToken(from: UIViewController, callback: @escaping (String?, Error?) -> Void)",
            parameters: (from, callback),
            original: observed.map { o in
                return { (from: UIViewController, callback: @escaping (String?, Error?) -> Void) in
                    o.getAuthToken(from: from, callback: callback)
                }
            })
        
    }
    

    struct __StubbingProxy_Facebook: Cuckoo.StubbingProxy {
        private let cuckoo_manager: Cuckoo.MockManager

        init(manager: Cuckoo.MockManager) {
            self.cuckoo_manager = manager
        }
        
        var token: Cuckoo.ToBeStubbedProperty<String?> {
            return .init(manager: cuckoo_manager, name: "token")
        }
        
        
        func getAuthToken<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(from: M1, callback: M2) -> Cuckoo.StubNoReturnFunction<(UIViewController, (String?, Error?) -> Void)> where M1.MatchedType == UIViewController, M2.MatchedType == (String?, Error?) -> Void {
            let matchers: [Cuckoo.ParameterMatcher<(UIViewController, (String?, Error?) -> Void)>] = [wrap(matchable: from) { $0.0 }, wrap(matchable: callback) { $0.1 }]
            return .init(stub: cuckoo_manager.createStub("getAuthToken(from: UIViewController, callback: @escaping (String?, Error?) -> Void)", parameterMatchers: matchers))
        }
        
    }


    struct __VerificationProxy_Facebook: Cuckoo.VerificationProxy {
        private let cuckoo_manager: Cuckoo.MockManager
        private let callMatcher: Cuckoo.CallMatcher
        private let sourceLocation: Cuckoo.SourceLocation

        init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
            self.cuckoo_manager = manager
            self.callMatcher = callMatcher
            self.sourceLocation = sourceLocation
        }

        
        var token: Cuckoo.VerifyProperty<String?> {
            return .init(manager: cuckoo_manager, name: "token", callMatcher: callMatcher, sourceLocation: sourceLocation)
        }
        

        
        @discardableResult
        func getAuthToken<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(from: M1, callback: M2) -> Cuckoo.__DoNotUse<Void> where M1.MatchedType == UIViewController, M2.MatchedType == (String?, Error?) -> Void {
            let matchers: [Cuckoo.ParameterMatcher<(UIViewController, (String?, Error?) -> Void)>] = [wrap(matchable: from) { $0.0 }, wrap(matchable: callback) { $0.1 }]
            return cuckoo_manager.verify("getAuthToken(from: UIViewController, callback: @escaping (String?, Error?) -> Void)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
        }
        
    }


}

 class FacebookStub: Facebook {
    
     override var token: String? {
        get {
            return DefaultValueRegistry.defaultValue(for: (String?).self)
        }
        
        set { }
        
    }
    

    

    
    public override func getAuthToken(from: UIViewController, callback: @escaping (String?, Error?) -> Void)  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
}



