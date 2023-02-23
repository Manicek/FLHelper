//
// © 2023 Manicek
//

import SwiftUI

enum Goods: CaseIterable {
    case arrowsIronHead
    case arrowsWoodenHead
    case quiver
    case grapplingHook
    case rope10Meters
    case tallowCandle
    case oilLamp
    case lantern
    case torches
    case sack
    case backpack
    case waterskin
    case bandages
    case lampOil
    case inkAndQuill
    case parchment
    case blanket
    case sleepingFur
    case flintAndSteel
    case lockpicks
    case fieldRations
    case fieldKitchen
    case cauldron
    case metalChalice
    case tankard
    case metalPlate
    case foodKnife
    case spoon
    case bearTrap
    case snaresCloth
    case snaresLeather
    case barrel
    case clayJug
    case smallTentCloth
    case smallTentLeather
    case largeTentCloth
    case largeTentLeather
    case fishingHookAndLine
    case fishingNet
    case magnifyingGlass
    case holySymbol
    case chalk
    case map
    case spyglass
    case crystalBall
    case hourglass
    case scales
    case flute
    case horn
    case lyre
    case harp
    case drum
    case lethalPoisonOrAntidote
    case paralyzingPoisonOrAntidote
    case sleepingPoisonOrAntidote
    case hallucinogenicPoisonOrAntidote
    
    var name: LocalizedStringKey {
        switch self {
        case .arrowsIronHead: return .goodsArrowsIronHead
        case .arrowsWoodenHead: return .goodsArrowsWoodenHead
        case .quiver: return .goodsQuiver
        case .grapplingHook: return .goodsGrapplingHook
        case .rope10Meters: return .goodsRope10Meters
        case .tallowCandle: return .goodsTallowCandle
        case .oilLamp: return .goodsOilLamp
        case .lantern: return .goodsLantern
        case .torches: return .goodsTorches
        case .sack: return .goodsSack
        case .backpack: return .goodsBackpack
        case .waterskin: return .goodsWaterskin
        case .bandages: return .goodsBandages
        case .lampOil: return .goodsLampOil
        case .inkAndQuill: return .goodsInkAndQuill
        case .parchment: return .goodsParchment
        case .blanket: return .goodsBlanket
        case .sleepingFur: return .goodsSleepingFur
        case .flintAndSteel: return .goodsFlintAndSteel
        case .lockpicks: return .goodsLockpicks
        case .fieldRations: return .goodsFieldRations
        case .fieldKitchen: return .goodsFieldKitchen
        case .cauldron: return .goodsCauldron
        case .metalChalice: return .goodsMetalChalice
        case .tankard: return .goodsTankard
        case .metalPlate: return .goodsMetalPlate
        case .foodKnife: return .goodsFoodKnife
        case .spoon: return .goodsSpoon
        case .bearTrap: return .goodsBearTrap
        case .snaresCloth: return .goodsSnaresCloth
        case .snaresLeather: return .goodsSnaresLeather
        case .barrel: return .goodsBarrel
        case .clayJug: return .goodsClayJug
        case .smallTentCloth: return .goodsSmallTentCloth
        case .smallTentLeather: return .goodsSmallTentLeather
        case .largeTentCloth: return .goodsLargeTentCloth
        case .largeTentLeather: return .goodsLargeTentLeather
        case .fishingHookAndLine: return .goodsFishingHookAndLine
        case .fishingNet: return .goodsFishingNet
        case .magnifyingGlass: return .goodsMagnifyingGlass
        case .holySymbol: return .goodsHolySymbol
        case .chalk: return .goodsChalk
        case .map: return .goodsMap
        case .spyglass: return .goodsSpyglass
        case .crystalBall: return .goodsCrystalBall
        case .hourglass: return .goodsHourglass
        case .scales: return .goodsScales
        case .flute: return .goodsFlute
        case .horn: return .goodsHorn
        case .lyre: return .goodsLyre
        case .harp: return .goodsHarp
        case .drum: return .goodsDrum
        case .lethalPoisonOrAntidote: return .goodsLethalPoisonOrAntidote
        case .paralyzingPoisonOrAntidote: return .goodsParalyzingPoisonOrAntidote
        case .sleepingPoisonOrAntidote: return .goodsSleepingPoisonOrAntidote
        case .hallucinogenicPoisonOrAntidote: return .goodsHallucinogenicPoisonOrAntidote
        }
    }
    
    var weight: Weight {
        switch self {
        case .arrowsIronHead, .arrowsWoodenHead, .grapplingHook, .rope10Meters, .torches, .sleepingFur, .fieldRations,
                .cauldron, .bearTrap, .smallTentCloth, .smallTentLeather, .fishingNet, .spyglass, .scales, .horn, .lyre,
                .drum:
            return .normal
        case .quiver, .tallowCandle, .sack, .backpack, .waterskin, .inkAndQuill, .parchment, .flintAndSteel, .lockpicks,
                .foodKnife, .spoon, .magnifyingGlass, .holySymbol, .chalk, .map, .lethalPoisonOrAntidote,
                .paralyzingPoisonOrAntidote, .sleepingPoisonOrAntidote, .hallucinogenicPoisonOrAntidote:
            return .tiny
        case .oilLamp, .lantern, .bandages, .lampOil, .blanket, .metalChalice, .tankard, .metalPlate, .snaresCloth,
                .snaresLeather, .clayJug, .fishingHookAndLine, .crystalBall, .hourglass, .flute:
            return .light
        case .fieldKitchen, .barrel, .largeTentCloth, .largeTentLeather, .harp:
            return .heavy
        }
    }
    
    var price: Price {
        switch self {
        case .arrowsIronHead: return 12
        case .arrowsWoodenHead, .tallowCandle, .bandages, .parchment, .foodKnife: return 6
        case .quiver, .sack, .metalPlate, .spoon, .barrel, .harp: return 8
        case .grapplingHook, .waterskin, .sleepingFur, .scales, .horn, .sleepingPoisonOrAntidote: return 30
        case .rope10Meters, .lantern, .inkAndQuill, .smallTentCloth, .smallTentLeather: return 20
        case .oilLamp, .torches, .clayJug: return 5
        case .backpack, .fieldKitchen, .map, .paralyzingPoisonOrAntidote, .hallucinogenicPoisonOrAntidote: return 40
        case .lampOil, .flintAndSteel, .tankard, .chalk: return 2
        case .blanket, .metalChalice: return 7
        case .lockpicks: return 100
        case .fieldRations, .snaresCloth, .snaresLeather: return 10
        case .cauldron, .drum: return 18
        case .bearTrap, .largeTentCloth, .largeTentLeather, .lyre, .lethalPoisonOrAntidote: return 50
        case .fishingHookAndLine: return 4
        case .fishingNet, .holySymbol: return 10
        case .magnifyingGlass, .spyglass: return 300
        case .crystalBall: return 60
        case .hourglass: return 120
        case .flute: return 15
        }
    }
    
    var supply: Supply {
        switch self {
        case .arrowsIronHead, .arrowsWoodenHead, .quiver, .rope10Meters, .tallowCandle, .oilLamp, .lantern, .torches,
                .sack, .backpack, .waterskin, .bandages, .lampOil, .blanket, .sleepingFur, .flintAndSteel,
                .fieldRations, .cauldron, .tankard, .foodKnife, .snaresCloth, .snaresLeather, .barrel, .clayJug,
                .smallTentCloth, .smallTentLeather, .fishingHookAndLine, .fishingNet, .chalk, .flute, .horn, .drum:
            return .common
        case .grapplingHook, .inkAndQuill, .parchment, .lockpicks, .fieldKitchen, .metalChalice, .metalPlate, .spoon,
                .bearTrap, .largeTentCloth, .largeTentLeather, .holySymbol, .map, .crystalBall, .scales, .lyre:
            return .uncommon
        case .magnifyingGlass, .spyglass, .hourglass, .harp, .lethalPoisonOrAntidote, .paralyzingPoisonOrAntidote,
                .sleepingPoisonOrAntidote, .hallucinogenicPoisonOrAntidote:
            return .rare
        }
    }
    
    var rawMaterials: [RawMaterial: Double] {
        switch self {
        case .arrowsIronHead: return [.iron: 0.5, .wood: 1]
        case .arrowsWoodenHead, .torches, .horn: return [.wood: 1]
        case .quiver, .snaresLeather: return [.leather: 0.5]
        case .grapplingHook, .lantern, .cauldron, .bearTrap: return [.iron: 1]
        case .rope10Meters, .sack, .smallTentCloth, .fishingNet: return [.cloth: 1]
        case .tallowCandle: return [.cloth: 0.1, .tallow: 0.25]
        case .oilLamp, .clayJug, .hourglass: return [.stone: 1]
        case .backpack, .largeTentCloth: return [.cloth: 2]
        case .waterskin, .smallTentLeather: return [.leather: 1]
        case .bandages, .blanket, .snaresCloth: return [.cloth: 0.5]
        case .lampOil: return [.tallow: 0.25]
        case .inkAndQuill: return [.feather: 1, .iron: 0.1]
        case .parchment: return [.leather: 0.25]
        case .sleepingFur: return [.pelt: 2]
        case .flintAndSteel: return [.iron: 0.1, .stone: 0.25]
        case .lockpicks: return [.iron: 0.25]
        case .fieldRations: return [.meatFishOrVegetables: 1]
        case .fieldKitchen: return [.iron: 2]
        case .metalChalice, .metalPlate, .holySymbol, .scales: return [.iron: 0.5]
        case .tankard, .flute: return [.wood: 0.5]
        case .foodKnife, .spoon: return [.iron: 0.25]
        case .barrel: return [.wood: 2]
        case .largeTentLeather: return [.leather: 2]
        case .fishingHookAndLine: return [.iron: 0.1, .cloth: 0.1]
        case .magnifyingGlass: return [.iron: 0.25, .glass: 0.5]
        case .chalk: return [.stone: 0.25]
        case .map: return [.parchment: 1]
        case .spyglass: return [.iron: 1, .glass: 1]
        case .crystalBall: return [.glass: 1]
        case .lyre: return [.wood: 1, .cloth: 0.25]
        case .harp: return [.wood: 2, .cloth: 0.5]
        case .drum: return [.wood: 1, .leather: 0.5]
        case .lethalPoisonOrAntidote, .paralyzingPoisonOrAntidote, .sleepingPoisonOrAntidote,
                .hallucinogenicPoisonOrAntidote: return [.herbs: 1]
        }
    }
    
    var requiredTalents: [Talent] {
        switch self {
        case .arrowsIronHead: return [.smith, .bowyer]
        case .arrowsWoodenHead: return [.bowyer]
        case .quiver, .waterskin, .lampOil, .inkAndQuill, .parchment, .sleepingFur, .smallTentLeather,
                .largeTentLeather: return [.tanner]
        case .grapplingHook, .lantern, .metalChalice, .metalPlate, .foodKnife, .spoon, .bearTrap, .holySymbol,
                .crystalBall, .scales: return [.smith]
        case .rope10Meters, .sack, .backpack, .bandages, .blanket, .smallTentCloth, .largeTentCloth,
                .fishingNet: return [.tailor]
        case .tallowCandle, .oilLamp, .torches, .flintAndSteel, .tankard, .barrel, .clayJug, .chalk: return []
        case .lockpicks: return [.smith, .lockpicker]
        case .fieldRations: return [.chef]
        case .fieldKitchen, .cauldron: return [.chef, .smith]
        case .snaresCloth, .snaresLeather: return [.masterOfTheHunt]
        case .fishingHookAndLine: return [.smith, .tailor]
        case .magnifyingGlass, .spyglass: return [.smith, .builder]
        case .map: return [.pathfinder]
        case .hourglass: return [.builder]
        case .flute, .horn, .lyre, .harp, .drum: return [.pathOfTheSong]
        case .lethalPoisonOrAntidote, .paralyzingPoisonOrAntidote, .sleepingPoisonOrAntidote,
                .hallucinogenicPoisonOrAntidote: return [.poisoner]
        }
    }
    
    var requiredTools: [Tool] {
        switch self {
        case .arrowsIronHead, .arrowsWoodenHead, .quiver, .grapplingHook, .rope10Meters, .tallowCandle, .oilLamp,
                .lantern, .torches, .sack, .bandages, .lampOil, .inkAndQuill, .parchment, .blanket, .sleepingFur,
                .flintAndSteel, .lockpicks, .fieldRations, .fieldKitchen, .cauldron, .metalChalice, .tankard,
                .metalPlate, .foodKnife, .spoon, .bearTrap, .snaresCloth, .snaresLeather, .clayJug, .fishingNet,
                .magnifyingGlass, .holySymbol, .chalk, .map, .spyglass, .crystalBall, .hourglass, .scales, .flute,
                .horn, .lyre, .harp, .drum, .lethalPoisonOrAntidote, .paralyzingPoisonOrAntidote,
                .sleepingPoisonOrAntidote, .hallucinogenicPoisonOrAntidote: return []
        case .backpack, .waterskin, .smallTentCloth, .smallTentLeather, .largeTentCloth,
                .largeTentLeather: return [.needleAndThread]
        case .barrel: return [.saw, .hammer]
        case .fishingHookAndLine: return [.hammer]
        }
    }
    
    var specialRequirements: [SpecialRequirement] {
        switch self {
        case .arrowsIronHead: return [.forge, .knife]
        case .arrowsWoodenHead, .quiver, .rope10Meters, .torches, .sack, .backpack, .bandages, .snaresCloth,
                .snaresLeather, .smallTentCloth, .smallTentLeather, .largeTentCloth, .largeTentLeather,
                .fishingNet, .flute, .horn, .lyre, .harp, .drum: return [.knife]
        case .grapplingHook, .lantern, .parchment, .blanket, .sleepingFur, .lockpicks, .fieldKitchen, .cauldron,
                .metalChalice, .metalPlate, .foodKnife, .spoon, .bearTrap, .fishingHookAndLine, .magnifyingGlass,
                .holySymbol, .spyglass, .crystalBall, .hourglass, .scales: return [.forge]
        case .tallowCandle, .oilLamp, .lampOil, .fieldRations, .clayJug: return [.fire]
        case .waterskin, .flintAndSteel, .tankard, .barrel, .chalk: return []
        case .inkAndQuill: return [.knife, .fire]
        case .map: return [.inkAndQuill]
        case .lethalPoisonOrAntidote, .paralyzingPoisonOrAntidote, .sleepingPoisonOrAntidote,
                .hallucinogenicPoisonOrAntidote: return [.cauldron, .fire]
        }
    }
    
    var quarterDaysToMake: Int {
        switch self {
        case .arrowsIronHead, .arrowsWoodenHead, .quiver, .grapplingHook, .rope10Meters, .tallowCandle, .torches, .sack,
                .backpack, .waterskin, .bandages, .lampOil, .inkAndQuill, .parchment, .blanket, .sleepingFur,
                .flintAndSteel, .fieldRations, .tankard, .foodKnife, .snaresCloth, .snaresLeather, .smallTentCloth,
                .smallTentLeather, .fishingHookAndLine, .chalk, .lethalPoisonOrAntidote, .paralyzingPoisonOrAntidote,
                .sleepingPoisonOrAntidote, .hallucinogenicPoisonOrAntidote: return 1
        case .oilLamp, .lantern, .lockpicks, .fieldKitchen, .cauldron, .metalChalice, .metalPlate, .spoon, .bearTrap,
                .barrel, .clayJug, .largeTentCloth, .largeTentLeather, .fishingNet, .holySymbol, .map, .crystalBall,
                .scales, .flute, .horn, .drum: return 2
        case .magnifyingGlass, .hourglass, .lyre: return 14
        case .spyglass, .harp: return 28
        }
    }
    
    var effect: LocalizedStringKey {
        switch self {
        case .arrowsIronHead: return .itemEffectArrowsIronHead
        case .arrowsWoodenHead: return .itemEffectArrowsWoodenHead
        case .quiver: return .itemEffectQuiver
        case .grapplingHook: return .itemEffectGrapplingHook
        case .rope10Meters: return .itemEffectRope10Meters
        case .tallowCandle: return .itemEffectTallowCandle
        case .oilLamp: return .itemEffectOilLamp
        case .lantern: return .itemEffectLantern
        case .torches: return .itemEffectTorches
        case .sack: return .itemEffectSack
        case .backpack: return .itemEffectBackpack
        case .waterskin: return .itemEffectWaterskin
        case .bandages: return .itemEffectBandages
        case .lampOil: return .itemEffectLampOil
        case .inkAndQuill: return .itemEffectInkAndQuill
        case .parchment: return .itemEffectParchment
        case .blanket: return .itemEffectBlanket
        case .sleepingFur: return .itemEffectSleepingFur
        case .flintAndSteel: return .itemEffectFlintAndSteel
        case .lockpicks: return .itemEffectLockpicks
        case .fieldRations: return .itemEffectFieldRations
        case .fieldKitchen: return .itemEffectFieldKitchen
        case .cauldron: return .itemEffectCauldron
        case .metalChalice, .tankard, .metalPlate, .foodKnife, .spoon: return .empty
        case .bearTrap: return .itemEffectBearTrap
        case .snaresCloth: return .itemEffectSnaresCloth
        case .snaresLeather: return .itemEffectSnaresLeather
        case .barrel: return .itemEffectBarrel
        case .clayJug: return .itemEffectClayJug
        case .smallTentCloth: return .itemEffectSmallTentCloth
        case .smallTentLeather: return .itemEffectSmallTentLeather
        case .largeTentCloth: return .itemEffectLargeTentCloth
        case .largeTentLeather: return .itemEffectLargeTentLeather
        case .fishingHookAndLine: return .itemEffectFishingHookAndLine
        case .fishingNet: return .itemEffectFishingNet
        case .magnifyingGlass: return .itemEffectMagnifyingGlass
        case .holySymbol: return .itemEffectHolySymbol
        case .chalk: return .itemEffectChalk
        case .map: return .itemEffectMap
        case .spyglass: return .itemEffectSpyglass
        case .crystalBall: return .itemEffectCrystalBall
        case .hourglass: return .itemEffectHourglass
        case .scales: return .itemEffectScales
        case .flute: return .itemEffectFlute
        case .horn: return .itemEffectHorn
        case .lyre: return .itemEffectLyre
        case .harp: return .itemEffectHarp
        case .drum: return .itemEffectDrum
        case .lethalPoisonOrAntidote: return .itemEffectLethalPoisonOrAntidote
        case .paralyzingPoisonOrAntidote: return .itemEffectParalyzingPoisonOrAntidote
        case .sleepingPoisonOrAntidote: return .itemEffectSleepingPoisonOrAntidote
        case .hallucinogenicPoisonOrAntidote: return .itemEffectHallucinogenicPoisonOrAntidote
        }
    }
    
    func toItem() -> Item {
        Item(
            name: name,
            type: .tool,
            weight: weight,
            price: price,
            supply: supply,
            craftingRequirements: CraftingRequirements(
                materials: rawMaterials,
                talents: requiredTalents,
                tools: requiredTools,
                special: specialRequirements,
                quarterDays: quarterDaysToMake
            ),
            effect: effect
        )
    }
    
    static var defaultItems: [Item] {
        allCases.map { $0.toItem() }
    }
}
