//
// © 2023 Manicek
//

import Foundation

enum Talent {
    // MARK: - Kin
    case adaptive
    case innerPeace
    case PsychicPower
    case trueGrit
    case hardToCatch
    case huntingInstincts
    case nocturnal
    // MARK: - Druid
    case pathOfHealing
    case pathOfShiftingShapes
    case pathOfSight
    // MARK: - Fighter
    case pathOfTheBlade
    case pathOfTheEnemy
    case pathOfTheShield
    // MARK: - Hunter
    case pathOfTheArrow
    case pathOfTheBeast
    case pathOfTheForest
    // MARK: - Minstrel
    case pathOfTheHymn
    case pathOfTheSong
    case pathOfTheWarcry
    // MARK: - Peddler
    case pathOfTreasures
    case pathOfWords
    case pathOfManyThings
    // MARK: - Rider
    case pathOfTheCompanion
    case pathOfTheKnight
    case pathOfThePlains
    // MARK: - Rogue
    case pathOfTheFace
    case pathOfTheKiller
    case pathOfPoison
    // MARK: - Sorcerer
    case pathOfBlood
    case pathOfDeath
    case pathOfSigns
    case pathOfStone
    // MARK: - General
    case ambidextrous
    case axeFighter
    case berserker
    case bowyer
    case brawler
    case builder
    case chef
    case coldBlooded
    case defender
    case dragonslayer
    case executioner
    case fastFootwork
    case fastShooter
    case fearless
    case firmGrip
    case fisher
    case hammerFighter
    case herbalist
    case horsebackFighter
    case incorruptible
    case knifeFighter
    case lightningFast
    case lockpicker
    case lucky
    case masterOfTheHunt
    case meleeCharge
    case packRat
    case painResistant
    case pathfinder
    case poisoner
    case quartermaster
    case quickdraw
    case sailor
    case sharpshooter
    case sharpTongue
    case shieldFighter
    case sixthSense
    case smith
    case spearFighter
    case steadyFeet
    case swordFighter
    case tailor
    case tanner
    case threatening
    case throwingArm
    case wanderer
    
    var kin: Kin? {
        switch self {
        case .adaptive: return .human
        case .innerPeace: return .elf
        case .PsychicPower: return .halfelf
        case .trueGrit: return .dwarf
        case .hardToCatch: return .halfling
        case .huntingInstincts: return .wolfkin
        case .nocturnal: return .goblin
        default: return nil
        }
    }
    
    var profession: Profession? {
        switch self {
        case .pathOfHealing, .pathOfShiftingShapes, .pathOfSight: return .druid
        case .pathOfTheBlade, .pathOfTheEnemy, .pathOfTheShield: return .fighter
        case .pathOfTheArrow, .pathOfTheBeast, .pathOfTheForest: return .hunter
        case .pathOfTheHymn, .pathOfTheSong, .pathOfTheWarcry: return .minstrel
        case .pathOfTreasures, .pathOfWords, .pathOfManyThings: return .peddler
        case .pathOfTheCompanion, .pathOfTheKnight, .pathOfThePlains: return .rider
        case .pathOfTheFace, .pathOfTheKiller, .pathOfPoison: return .rogue
        case .pathOfBlood, .pathOfDeath, .pathOfSigns, .pathOfStone: return .sorcerer
        default: return nil
        }
    }
    
    var isKinTalent: Bool {
        kin != nil
    }
    
    var isProfessionTalent: Bool {
        profession != nil
    }
    
    var isGenericTalent: Bool {
        kin == nil && profession == nil
    }
}
