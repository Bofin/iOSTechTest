import Foundation
import XCTest
@testable import SmurfViewer

class UnitTestCase: XCTestCase {
    var mockDateService: MockDateService!
    var mockNetworkService: MockNetworkService!
    var mockSmurfService: MockSmurfService!
    
    // MARK: - Test lifecycle
    
    override func setUp() {
        super.setUp()
        Injected.reset()
        setupMocks()
    }
    
    func setupMocks() {
        if let mock = createMockDateService() {
            mockDateService = mock
            Injected.dateService = mock
        }
        if let mock = createMockNetworkService() {
            mockNetworkService = mock
            Injected.networkService = mock
        }
        if let mock = createMockSmurfService() {
            mockSmurfService = mock
            Injected.smurfService = mock
        }
    }
    
    // MARK: - Subclassing
    
    func createMockDateService() -> MockDateService? {
        return MockDateService()
    }
    func createMockNetworkService() -> MockNetworkService? {
        return MockNetworkService()
    }
    func createMockSmurfService() ->  MockSmurfService? {
        return MockSmurfService()
    }
}
