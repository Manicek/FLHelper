//
// © 2023 Manicek
//

import Foundation

enum Talent: CaseIterable, Comparable {
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
    
    var czName: String {
        switch self {
        case .adaptive: return "Přizpůsobivý"
        case .innerPeace: return "Vnitřní klid"
        case .psychicPower: return "Duševní síla"
        case .trueGrit: return "Hlava žulová"
        case .hardToCatch: return "Nepolapitelný"
        case .huntingInstincts: return "Instinkt lovce"
        case .unbreakable: return "Nezlomný"
        case .nocturnal: return "Noční tvor"
        case .pathOfHealing: return "Cesta léčitele"
        case .pathOfShiftingShapes: return "Cesta proměny"
        case .pathOfSight: return "Cesta zraku"
        case .pathOfTheBlade: return "Cesta ostří"
        case .pathOfTheEnemy: return "Cesta protivníka"
        case .pathOfTheShield: return "Cesta štítu"
        case .pathOfTheArrow: return "Cesta šípu"
        case .pathOfTheBeast: return "Cesta šelmy"
        case .pathOfTheForest: return "Cesta hvozdu"
        case .pathOfTheHymn: return "Cesta chvály"
        case .pathOfTheSong: return "Cesta písně"
        case .pathOfTheWarcry: return "Cesta válečného pokřiku"
        case .pathOfTreasures: return "Cesta pokladů"
        case .pathOfWords: return "Cesta slov"
        case .pathOfManyThings: return "Cesta mnoha věcí"
        case .pathOfTheCompanion: return "Cesta společníka"
        case .pathOfTheKnight: return "Cesta rytíře"
        case .pathOfThePlains: return "Cesta stepi"
        case .pathOfTheFace: return "Cesta tváře"
        case .pathOfTheKiller: return "Cesta zabijáka"
        case .pathOfPoison: return "Cesta jedu"
        case .pathOfBlood: return "Cesta krve"
        case .pathOfDeath: return "Cesta smrti"
        case .pathOfSigns: return "Cesta znamení"
        case .pathOfStone: return "Cesta kamene"
        case .ambidextrous: return "Obouruký"
        case .axeFighter: return "Sekerník"
        case .berserker: return "Berserkr"
        case .bowyer: return "Lukař"
        case .brawler: return "Rváč"
        case .builder: return "Stavitel"
        case .chef: return "Kuchař"
        case .coldBlooded: return "Chladnokrevný"
        case .defender: return "Obránce"
        case .dragonslayer: return "Drakobijec"
        case .executioner: return "Popravčí"
        case .fastFootwork: return "Hbité nohy"
        case .fastShooter: return "Rychlostřelec"
        case .fearless: return "Nebojácný"
        case .firmGrip: return "Pevný stisk"
        case .fisher: return "Rybář"
        case .hammerFighter: return "Kladivář"
        case .herbalist: return "Bylinkář"
        case .horsebackFighter: return "Bojovník v sedle"
        case .incorruptible: return "Zásadový"
        case .knifeFighter: return "Dýkař"
        case .lightningFast: return "Rychlost blesku"
        case .lockpicker: return "Zámečník"
        case .lucky: return "Šťastlivec"
        case .masterOfTheHunt: return "Stopař"
        case .meleeCharge: return "Pěší zteč"
        case .packRat: return "Soumar"
        case .painResistant: return "Odolný proti bolesti"
        case .pathfinder: return "Průzkumník"
        case .poisoner: return "Travič"
        case .quartermaster: return "Zálesák"
        case .quickdraw: return "Rychlé tasení"
        case .sailor: return "Námořník"
        case .sharpshooter: return "Ostrostřelec"
        case .sharpTongue: return "Ostrý jazýček"
        case .shieldFighter: return "Štítonoš"
        case .sixthSense: return "Šestý smysl"
        case .smith: return "Kovář"
        case .spearFighter: return "Kopiník"
        case .steadyFeet: return "Pevný postoj"
        case .swordFighter: return "Šermíř"
        case .tailor: return "Krejčí"
        case .tanner: return "Koželuh"
        case .threatening: return "Děsivý"
        case .throwingArm: return "Vrhač"
        case .wanderer: return "Poutník"
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
