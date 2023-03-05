//
// © 2023 Manicek
//

import SwiftUI

enum Talent: CaseIterable, Comparable {
    static let maxLevel = 3
    static let xpPerLevel = 3
    
    // MARK: - Kin
    case adaptive
    case innerPeace
    case psychicPower
    case trueGrit
    case hardToCatch
    case huntingInstincts
    case unbreakable
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
    
    var name: LocalizedStringKey {
        switch self {
        case .adaptive: return .talentAdaptive
        case .innerPeace: return .talentInnerPeace
        case .psychicPower: return .talentPsychicPower
        case .trueGrit: return .talentTrueGrit
        case .hardToCatch: return .talentHardToCatch
        case .huntingInstincts: return .talentHuntingInstincts
        case .unbreakable: return .talentUnbreakable
        case .nocturnal: return .talentNocturnal
        case .pathOfHealing: return .talentPathOfHealing
        case .pathOfShiftingShapes: return .talentPathOfShiftingShapes
        case .pathOfSight: return .talentPathOfSight
        case .pathOfTheBlade: return .talentPathOfTheBlade
        case .pathOfTheEnemy: return .talentPathOfTheEnemy
        case .pathOfTheShield: return .talentPathOfTheShield
        case .pathOfTheArrow: return .talentPathOfTheArrow
        case .pathOfTheBeast: return .talentPathOfTheBeast
        case .pathOfTheForest: return .talentPathOfTheForest
        case .pathOfTheHymn: return .talentPathOfTheHymn
        case .pathOfTheSong: return .talentPathOfTheSong
        case .pathOfTheWarcry: return .talentPathOfTheWarcry
        case .pathOfTreasures: return .talentPathOfTreasures
        case .pathOfWords: return .talentPathOfWords
        case .pathOfManyThings: return .talentPathOfManyThings
        case .pathOfTheCompanion: return .talentPathOfTheCompanion
        case .pathOfTheKnight: return .talentPathOfTheKnight
        case .pathOfThePlains: return .talentPathOfThePlains
        case .pathOfTheFace: return .talentPathOfTheFace
        case .pathOfTheKiller: return .talentPathOfTheKiller
        case .pathOfPoison: return .talentPathOfPoison
        case .pathOfBlood: return .talentPathOfBlood
        case .pathOfDeath: return .talentPathOfDeath
        case .pathOfSigns: return .talentPathOfSigns
        case .pathOfStone: return .talentPathOfStone
        case .ambidextrous: return .talentAmbidextrous
        case .axeFighter: return .talentAxeFighter
        case .berserker: return .talentBerserker
        case .bowyer: return .talentBowyer
        case .brawler: return .talentBrawler
        case .builder: return .talentBuilder
        case .chef: return .talentChef
        case .coldBlooded: return .talentColdBlooded
        case .defender: return .talentDefender
        case .dragonslayer: return .talentDragonslayer
        case .executioner: return .talentExecutioner
        case .fastFootwork: return .talentFastFootwork
        case .fastShooter: return .talentFastShooter
        case .fearless: return .talentFearless
        case .firmGrip: return .talentFirmGrip
        case .fisher: return .talentFisher
        case .hammerFighter: return .talentHammerFighter
        case .herbalist: return .talentHerbalist
        case .horsebackFighter: return .talentHorsebackFighter
        case .incorruptible: return .talentIncorruptible
        case .knifeFighter: return .talentKnifeFighter
        case .lightningFast: return .talentLightningFast
        case .lockpicker: return .talentLockpicker
        case .lucky: return .talentLucky
        case .masterOfTheHunt: return .talentMasterOfTheHunt
        case .meleeCharge: return .talentMeleeCharge
        case .packRat: return .talentPackRat
        case .painResistant: return .talentPainResistant
        case .pathfinder: return .talentPathfinder
        case .poisoner: return .talentPoisoner
        case .quartermaster: return .talentQuartermaster
        case .quickdraw: return .talentQuickdraw
        case .sailor: return .talentSailor
        case .sharpshooter: return .talentSharpshooter
        case .sharpTongue: return .talentSharpTongue
        case .shieldFighter: return .talentShieldFighter
        case .sixthSense: return .talentSixthSense
        case .smith: return .talentSmith
        case .spearFighter: return .talentSpearFighter
        case .steadyFeet: return .talentSteadyFeet
        case .swordFighter: return .talentSwordFighter
        case .tailor: return .talentTailor
        case .tanner: return .talentTanner
        case .threatening: return .talentThreatening
        case .throwingArm: return .talentThrowingArm
        case .wanderer: return .talentWanderer
        }
    }
    
    var kin: Kin? {
        switch self {
        case .adaptive: return .human
        case .innerPeace: return .elf
        case .psychicPower: return .halfelf
        case .trueGrit: return .dwarf
        case .hardToCatch: return .halfling
        case .huntingInstincts: return .wolfkin
        case .unbreakable: return .orc
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
