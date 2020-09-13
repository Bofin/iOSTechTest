/*
 The following is an extremely simple DI solution.
 Feel free to add items to here as you see fit.
 */
import Foundation

struct Injected {
    static var dateService: DateService!
    static var networkService: NetworkService!
    static var smurfService: SmurfService!
    
    static func reset() {
        dateService = Date.Service()
        networkService = Network.Service()
        smurfService = Smurfing.Service()
    }
}
