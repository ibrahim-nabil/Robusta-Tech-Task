// MARK: - Mocks generated from file: Robusta-Tech-Task/Core/Network/APIClient/APIClient.swift at 2022-04-28 01:17:59 +0000

//
//  APIClient.swift
//  Robusta-Tech-Task
//
//  Created by ibrahim nabil on 27/04/2022.
//

import Cuckoo
@testable import Robusta_Tech_Task

import Foundation


 class MockAPIClient: APIClient, Cuckoo.ProtocolMock {
    
     typealias MocksType = APIClient
    
     typealias Stubbing = __StubbingProxy_APIClient
     typealias Verification = __VerificationProxy_APIClient

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: APIClient?

     func enableDefaultImplementation(_ stub: APIClient) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    
    
    
     var session: URLSession {
        get {
            return cuckoo_manager.getter("session",
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.session)
        }
        
    }
    

    

    
    
    
     func fetch<T: Decodable>(with request: URLRequest, decode: @escaping (Decodable) -> T?, completion: @escaping (Result<T, APIError>) -> Void)  {
        
    return cuckoo_manager.call("fetch(with: URLRequest, decode: @escaping (Decodable) -> T?, completion: @escaping (Result<T, APIError>) -> Void)",
            parameters: (request, decode, completion),
            escapingParameters: (request, decode, completion),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.fetch(with: request, decode: decode, completion: completion))
        
    }
    

	 struct __StubbingProxy_APIClient: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    var session: Cuckoo.ProtocolToBeStubbedReadOnlyProperty<MockAPIClient, URLSession> {
	        return .init(manager: cuckoo_manager, name: "session")
	    }
	    
	    
	    func fetch<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable, M3: Cuckoo.Matchable, T: Decodable>(with request: M1, decode: M2, completion: M3) -> Cuckoo.ProtocolStubNoReturnFunction<(URLRequest, (Decodable) -> T?, (Result<T, APIError>) -> Void)> where M1.MatchedType == URLRequest, M2.MatchedType == (Decodable) -> T?, M3.MatchedType == (Result<T, APIError>) -> Void {
	        let matchers: [Cuckoo.ParameterMatcher<(URLRequest, (Decodable) -> T?, (Result<T, APIError>) -> Void)>] = [wrap(matchable: request) { $0.0 }, wrap(matchable: decode) { $0.1 }, wrap(matchable: completion) { $0.2 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockAPIClient.self, method: "fetch(with: URLRequest, decode: @escaping (Decodable) -> T?, completion: @escaping (Result<T, APIError>) -> Void)", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_APIClient: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	    
	    var session: Cuckoo.VerifyReadOnlyProperty<URLSession> {
	        return .init(manager: cuckoo_manager, name: "session", callMatcher: callMatcher, sourceLocation: sourceLocation)
	    }
	    
	
	    
	    @discardableResult
	    func fetch<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable, M3: Cuckoo.Matchable, T: Decodable>(with request: M1, decode: M2, completion: M3) -> Cuckoo.__DoNotUse<(URLRequest, (Decodable) -> T?, (Result<T, APIError>) -> Void), Void> where M1.MatchedType == URLRequest, M2.MatchedType == (Decodable) -> T?, M3.MatchedType == (Result<T, APIError>) -> Void {
	        let matchers: [Cuckoo.ParameterMatcher<(URLRequest, (Decodable) -> T?, (Result<T, APIError>) -> Void)>] = [wrap(matchable: request) { $0.0 }, wrap(matchable: decode) { $0.1 }, wrap(matchable: completion) { $0.2 }]
	        return cuckoo_manager.verify("fetch(with: URLRequest, decode: @escaping (Decodable) -> T?, completion: @escaping (Result<T, APIError>) -> Void)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class APIClientStub: APIClient {
    
    
     var session: URLSession {
        get {
            return DefaultValueRegistry.defaultValue(for: (URLSession).self)
        }
        
    }
    

    

    
     func fetch<T: Decodable>(with request: URLRequest, decode: @escaping (Decodable) -> T?, completion: @escaping (Result<T, APIError>) -> Void)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
}


// MARK: - Mocks generated from file: Robusta-Tech-Task/Core/UseCase/RepositoriesUseCase.swift at 2022-04-28 01:17:59 +0000

//
//  RepositoriesUseCase.swift
//  RobustaTechTask
//
//  Created by ibrahim nabil on 27/04/2022.
//

import Cuckoo
@testable import Robusta_Tech_Task

import Foundation


 class MockRepositoriesUseCase: RepositoriesUseCase, Cuckoo.ClassMock {
    
     typealias MocksType = RepositoriesUseCase
    
     typealias Stubbing = __StubbingProxy_RepositoriesUseCase
     typealias Verification = __VerificationProxy_RepositoriesUseCase

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: true)

    
    private var __defaultImplStub: RepositoriesUseCase?

     func enableDefaultImplementation(_ stub: RepositoriesUseCase) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    
    
    
     override var session: URLSession {
        get {
            return cuckoo_manager.getter("session",
                superclassCall:
                    
                    super.session
                    ,
                defaultCall: __defaultImplStub!.session)
        }
        
        set {
            cuckoo_manager.setter("session",
                value: newValue,
                superclassCall:
                    
                    super.session = newValue
                    ,
                defaultCall: __defaultImplStub!.session = newValue)
        }
        
    }
    

    

    
    
    
     override func getFeed(from userFeedType: RepositoriesFeed, completion: @escaping (Result<[Repositories], APIError>) -> Void)  {
        
    return cuckoo_manager.call("getFeed(from: RepositoriesFeed, completion: @escaping (Result<[Repositories], APIError>) -> Void)",
            parameters: (userFeedType, completion),
            escapingParameters: (userFeedType, completion),
            superclassCall:
                
                super.getFeed(from: userFeedType, completion: completion)
                ,
            defaultCall: __defaultImplStub!.getFeed(from: userFeedType, completion: completion))
        
    }
    
    
    
     func fetch<T: Decodable>(with request: URLRequest, decode: @escaping (Decodable) -> T?, completion: @escaping (Result<T, APIError>) -> Void)  {
        
    return cuckoo_manager.call("fetch(with: URLRequest, decode: @escaping (Decodable) -> T?, completion: @escaping (Result<T, APIError>) -> Void)",
            parameters: (request, decode, completion),
            escapingParameters: (request, decode, completion),
            superclassCall:
                
                super.fetch(with: request, decode: decode, completion: completion)
                ,
            defaultCall: __defaultImplStub!.fetch(with: request, decode: decode, completion: completion))
        
    }
    

	 struct __StubbingProxy_RepositoriesUseCase: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    var session: Cuckoo.ClassToBeStubbedProperty<MockRepositoriesUseCase, URLSession> {
	        return .init(manager: cuckoo_manager, name: "session")
	    }
	    
	    
	    func getFeed<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(from userFeedType: M1, completion: M2) -> Cuckoo.ClassStubNoReturnFunction<(RepositoriesFeed, (Result<[Repositories], APIError>) -> Void)> where M1.MatchedType == RepositoriesFeed, M2.MatchedType == (Result<[Repositories], APIError>) -> Void {
	        let matchers: [Cuckoo.ParameterMatcher<(RepositoriesFeed, (Result<[Repositories], APIError>) -> Void)>] = [wrap(matchable: userFeedType) { $0.0 }, wrap(matchable: completion) { $0.1 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockRepositoriesUseCase.self, method: "getFeed(from: RepositoriesFeed, completion: @escaping (Result<[Repositories], APIError>) -> Void)", parameterMatchers: matchers))
	    }
	    
	    func fetch<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable, M3: Cuckoo.Matchable, T: Decodable>(with request: M1, decode: M2, completion: M3) -> Cuckoo.ProtocolStubNoReturnFunction<(URLRequest, (Decodable) -> T?, (Result<T, APIError>) -> Void)> where M1.MatchedType == URLRequest, M2.MatchedType == (Decodable) -> T?, M3.MatchedType == (Result<T, APIError>) -> Void {
	        let matchers: [Cuckoo.ParameterMatcher<(URLRequest, (Decodable) -> T?, (Result<T, APIError>) -> Void)>] = [wrap(matchable: request) { $0.0 }, wrap(matchable: decode) { $0.1 }, wrap(matchable: completion) { $0.2 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockRepositoriesUseCase.self, method: "fetch(with: URLRequest, decode: @escaping (Decodable) -> T?, completion: @escaping (Result<T, APIError>) -> Void)", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_RepositoriesUseCase: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	    
	    var session: Cuckoo.VerifyProperty<URLSession> {
	        return .init(manager: cuckoo_manager, name: "session", callMatcher: callMatcher, sourceLocation: sourceLocation)
	    }
	    
	
	    
	    @discardableResult
	    func getFeed<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(from userFeedType: M1, completion: M2) -> Cuckoo.__DoNotUse<(RepositoriesFeed, (Result<[Repositories], APIError>) -> Void), Void> where M1.MatchedType == RepositoriesFeed, M2.MatchedType == (Result<[Repositories], APIError>) -> Void {
	        let matchers: [Cuckoo.ParameterMatcher<(RepositoriesFeed, (Result<[Repositories], APIError>) -> Void)>] = [wrap(matchable: userFeedType) { $0.0 }, wrap(matchable: completion) { $0.1 }]
	        return cuckoo_manager.verify("getFeed(from: RepositoriesFeed, completion: @escaping (Result<[Repositories], APIError>) -> Void)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func fetch<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable, M3: Cuckoo.Matchable, T: Decodable>(with request: M1, decode: M2, completion: M3) -> Cuckoo.__DoNotUse<(URLRequest, (Decodable) -> T?, (Result<T, APIError>) -> Void), Void> where M1.MatchedType == URLRequest, M2.MatchedType == (Decodable) -> T?, M3.MatchedType == (Result<T, APIError>) -> Void {
	        let matchers: [Cuckoo.ParameterMatcher<(URLRequest, (Decodable) -> T?, (Result<T, APIError>) -> Void)>] = [wrap(matchable: request) { $0.0 }, wrap(matchable: decode) { $0.1 }, wrap(matchable: completion) { $0.2 }]
	        return cuckoo_manager.verify("fetch(with: URLRequest, decode: @escaping (Decodable) -> T?, completion: @escaping (Result<T, APIError>) -> Void)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class RepositoriesUseCaseStub: RepositoriesUseCase {
    
    
     override var session: URLSession {
        get {
            return DefaultValueRegistry.defaultValue(for: (URLSession).self)
        }
        
        set { }
        
    }
    

    

    
     override func getFeed(from userFeedType: RepositoriesFeed, completion: @escaping (Result<[Repositories], APIError>) -> Void)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func fetch<T: Decodable>(with request: URLRequest, decode: @escaping (Decodable) -> T?, completion: @escaping (Result<T, APIError>) -> Void)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
}

