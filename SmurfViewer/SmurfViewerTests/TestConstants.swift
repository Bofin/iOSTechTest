import Foundation
import XCTest
@testable import SmurfViewer

struct Test {

    struct Dates {
        static let _2020_01_01 = Date(timeIntervalSince1970: 1577836800)
        static let _1998_01_01 = Date(timeIntervalSince1970: 883612800)
        static let _2000_5_15 = Date(timeIntervalSince1970: 958348800)
        static let _2019_08_02__9_49_19 = Date(timeIntervalSince1970: 1564739359)
    }
    
    static let pathExample = "SmurfImages/404Smurf.png"
    
    static let smurfsJson =  """
[
        {
            "name": "Vanity",
            "path": "SmurfImages/VanitySmurf.png",
            "wikipediaInfo": "Vanity Smurf is the epitome of a narcissist. He has a flower in his hat, and he often holds a hand mirror, staring into his own reflection, which he kisses often. He thinks he is the best-looking of all of the Smurfs. In Movie 2, Vanity becomes Commando Smurf."
        },
        {
            "name": "Scaredy",
            "path": "SmurfImages/ScaredySmurf.png",
            "wikipediaInfo": "Scaredy Smurf easily gets scared by anything, whether it is a small insect or the noise of a storm. He is often teased by the other Smurfs because of this."
        },
        {
            "name": "Brainy",
            "path": "SmurfImages/BrainySmurf.png",
            "wikipediaInfo": "Brainy Smurf considers himself the most intelligent Smurf in the village and an expert on everything, although his actual knowledge is questionable at best; often, his attempts to help in a given situation lead to even more problems. He can be distinguished from the others by the large glasses he wears."
        },
        {
            "name": "Papa",
            "wikipediaInfo": "Papa Smurf is the leader and elder of the Smurfs and can be easily distinguished by his red clothes, bushy white moustache and beard. The Smurfs turn to Papa Smurf when things go wrong. Papa Smurf is skilled in making magical spells and potions. He is much older than the other Smurfs (except for Grandpa and Nanny, who are older than Papa). Papa Smurf often serves the other Smurfs with his knowledge and wisdom and usually devises a plan for how to get out of trouble or to save the Smurf village from attacks by Gargamel. Unlike the other male Smurfs, Papa Smurf's trousers and hat are red instead of white."
        },
        {
            "name": "Grouchy",
            "path": "SmurfImages/404Smurf.png",
            "wikipediaInfo": "Grouchy Smurf is the misanthropic grouch of the Smurf village. His catchphrase is \"I hate (something somebody else mentions)\" yet it is shown during the show that he is a good observer and notices kindness in others even if he is not playing active role in an event. Even though Grouchy Smurf portrays a role of a moaner within the group, he mostly wishes others to be happy and successful in order to get out of a problematic situation. Grouchy usually has a scowl on his face."
        },
        {
               "name": "Greedy",
               "path": "SmurfImages/GreedySmurf.png",
               "wikipediaInfo": "Greedy is an exceptionally gluttonous Smurf. He has an exceptional interest in eating cakes and other pastry. Greedy usually cannot seem to help himself and he is often chased by Chef Smurf for stealing snacks and food."
           },
        {
            "name": "Clumsy",
            "path": "SmurfImages/ClumsySmurf.png",
            "wikipediaInfo": "Clumsy Smurf is a somewhat dimwitted yet amiable Smurf. In some dangerous situations he is also revealed to be quite brave too. Despite his clumsiness, he finds himself always wanting to help others and usually looks on the bright side of things. He also ends up surprising himself and others when facing consequences."
        }
    ]
"""
}
