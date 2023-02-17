//
// © 2023 Manicek
//

import Foundation

enum MeleeWeaponOption {
    case unarmed
    case knife
    case dagger
    case falchion
    case shortsword
    case broadsword
    case longsword
    case twoHandedSword
    case scimitar
    case handaxe
    case battleaxe
    case twoHandedAxe
    case mace
    case morningstar
    case warhammer
    case flail
    case woodenClub
    case largeWoodenClub
    case heavyWarhammer
    case staff
    case shortSpear
    case longSpear
    case pike
    case halberd
    case trident
    
    var czName: String {
        switch self {
        case .unarmed: return "Žádná"
        case .knife: return "Nůž"
        case .dagger: return "Dýka"
        case .falchion: return "Tesák"
        case .shortsword: return "Krátký meč"
        case .broadsword: return "Široký meč"
        case .longsword: return "Dlouhý meč"
        case .twoHandedSword: return "Obouruční meč"
        case .scimitar: return "Šavle"
        case .handaxe: return "Sekyrka"
        case .battleaxe: return "Válečná sekera"
        case .twoHandedAxe: return "Obouruční sekera"
        case .mace: return "Palcát"
        case .morningstar: return "Kropáč"
        case .warhammer: return "Válečné kladivo"
        case .flail: return "Řemdih"
        case .woodenClub: return "Dřevěný kyj"
        case .largeWoodenClub: return "Velký dřevěný kyj"
        case .heavyWarhammer: return "Těžké válečné kladivo"
        case .staff: return "Hůl"
        case .shortSpear: return "Krátké kopí"
        case .longSpear: return "Dlouhé kopí"
        case .pike: return "Píka"
        case .halberd: return "Halapartna"
        case .trident: return "Trojzubec"
        }
    }
    
    var weight: Weight {
        switch self {
        case .unarmed:
            return .tiny
        case .knife, .dagger:
            return .light
        case .falchion, .shortsword, .broadsword, .scimitar, .handaxe, .mace, .morningstar, .warhammer, .flail,
                .woodenClub, .staff, .shortSpear, .longSpear, .trident:
            return .normal
        case .longsword, .twoHandedSword, .battleaxe, .twoHandedAxe, .largeWoodenClub, .heavyWarhammer, .pike, .halberd:
            return .heavy
        }
    }
    
    var price: Int {
        switch self {
        case .unarmed: return 0
        case .knife, .staff, .woodenClub: return 10
        case .dagger, .shortSpear, .largeWoodenClub, .handaxe: return 20
        case .falchion, .mace, .longSpear: return 40
        case .shortsword, .trident, .battleaxe: return 60
        case .broadsword: return 100
        case .longsword: return 180
        case .twoHandedSword: return 400
        case .scimitar, .morningstar: return 80
        case .twoHandedAxe: return 240
        case .warhammer, .pike: return 120
        case .flail: return 160
        case .heavyWarhammer: return 220
        case .halberd: return 300
        }
    }
    
    var supply: Supply {
        switch self {
        case .unarmed, .knife, .dagger, .falchion, .shortsword, .broadsword, .handaxe, .mace, .woodenClub,
                .largeWoodenClub, .staff, .shortSpear, .longSpear:
            return .common
        case .longsword, .scimitar, .battleaxe, .twoHandedAxe, .morningstar, .warhammer, .flail, .heavyWarhammer, .pike:
            return .uncommon
        case .twoHandedSword, .halberd, .trident:
            return .rare
        }
    }
    
    var rawMaterials: [RawMaterial: Double] {
        switch self {
        case .unarmed: return [:]
        case .knife: return [.iron: 0.5, .wood: 0.5]
        case .dagger: return [.iron: 0.5, .leather: 0.5]
        case .falchion, .shortsword, .scimitar: return [.iron: 1, .leather: 0.5]
        case .broadsword: return [.iron: 2, .leather: 0.5]
        case .longsword: return [.iron: 3, .leather: 0.5]
        case .twoHandedSword: return [.iron: 4, .leather: 1]
        case .handaxe, .shortSpear: return [.iron: 0.5, .wood: 1]
        case .battleaxe, .mace, .morningstar, .warhammer, .trident: return [.iron: 1, .wood: 1]
        case .twoHandedAxe: return [.iron: 2, .wood: 2]
        case .flail: return [.iron: 2, .wood: 1]
        case .woodenClub: return [.wood: 1]
        case .largeWoodenClub, .staff: return [.wood: 2]
        case .heavyWarhammer: return [.iron: 3, .wood: 2]
        case .longSpear, .pike: return [.iron: 0.5, .wood: 2]
        case .halberd: return [.iron: 1, .wood: 2]
        }
    }
    
    var requiredTalents: [Talent] {
        switch self {
        case .unarmed, .woodenClub, .largeWoodenClub, .staff:
            return []
        case .knife, .dagger, .falchion, .shortsword, .broadsword, .longsword, .twoHandedSword, .scimitar, .handaxe,
                .battleaxe, .twoHandedAxe, .mace, .morningstar, .warhammer, .flail, .heavyWarhammer, .shortSpear,
                .longSpear, .pike, .halberd, .trident:
            return [.smith]
        }
    }
    
    var requiredTools: [Tool] {
        []
    }
    
    var specialRequirements: [SpecialRequirement] {
        switch self {
        case .unarmed, .woodenClub, .largeWoodenClub, .staff:
            return []
        case .knife, .dagger, .falchion, .shortsword, .broadsword, .longsword, .twoHandedSword, .scimitar, .handaxe,
                .battleaxe, .twoHandedAxe, .mace, .morningstar, .warhammer, .flail, .heavyWarhammer, .shortSpear,
                .longSpear, .pike, .halberd, .trident:
            return [.forge]
        }
    }
    
    var quarterDaysToMake: Int {
        switch self {
        case .unarmed: return 0
        case .knife, .handaxe, .woodenClub, .largeWoodenClub, .staff, .shortSpear: return 1
        case .dagger, .falchion, .battleaxe, .mace, .longSpear: return 4
        case .shortsword, .morningstar, .warhammer, .pike, .trident: return 8
        case .broadsword, .longsword, .scimitar, .twoHandedAxe, .flail, .heavyWarhammer, .halberd: return 28
        case .twoHandedSword: return 56
        }
    }
    
    var weaponType: WeaponType {
        .melee
    }
    
    var range: Range {
        switch self {
        case .unarmed, .knife, .dagger, .falchion, .shortsword, .broadsword, .longsword, .twoHandedSword, .scimitar,
                .handaxe, .battleaxe, .twoHandedAxe, .mace, .morningstar, .warhammer, .woodenClub, .largeWoodenClub,
                .heavyWarhammer:
            return .arm
        case .flail, .staff, .shortSpear, .longSpear, .pike, .halberd, .trident:
            return .near
        }
    }
    
    var grip: WeaponGrip {
        switch self {
        case .unarmed, .knife, .dagger, .falchion, .shortsword, .broadsword, .longsword, .scimitar, .handaxe,
                .battleaxe, .mace, .morningstar, .warhammer, .flail, .woodenClub, .shortSpear:
            return .oneHanded
        case .longSpear, .pike, .halberd, .trident, .twoHandedSword,
                .twoHandedAxe, .largeWoodenClub, .heavyWarhammer, .staff:
            return .twoHanded
        }
    }
    
    var features: [WeaponFeature] {
        switch self {
        case .unarmed, .mace, .morningstar, .flail, .woodenClub: return [.blunt]
        case .knife: return [.light, .pointed]
        case .dagger: return [.light, .pointed, .edged]
        case .falchion: return [.pointed, .edged]
        case .shortsword, .broadsword: return [.edged, .pointed, .parrying]
        case .longsword, .twoHandedSword: return [.heavy, .edged, .pointed, .parrying]
        case .scimitar: return [.edged, .pointed, .hook, .parrying]
        case .handaxe: return [.edged, .hook]
        case .battleaxe, .twoHandedAxe: return [.heavy, .edged, .hook]
        case .warhammer: return [.blunt, .hook]
        case .largeWoodenClub: return [.heavy, .blunt]
        case .heavyWarhammer: return [.heavy, .blunt, .hook]
        case .staff: return [.blunt, .hook, .parrying]
        case .shortSpear, .longSpear: return [.pointed]
        case .pike: return [.heavy, .pointed]
        case .halberd: return [.heavy, .pointed, .edged, .hook]
        case .trident: return [.pointed, .hook]
        }
    }
    
    var bonus: Int {
        switch self {
        case .unarmed:
            return 0
        case .knife, .dagger, .falchion, .scimitar, .flail,
                .woodenClub, .largeWoodenClub, .staff, .shortSpear, .trident:
            return 1
        case .shortsword, .broadsword, .longsword, .twoHandedSword, .handaxe, .battleaxe, .twoHandedAxe, .mace,
                .morningstar, .warhammer, .heavyWarhammer, .longSpear, .pike, .halberd:
            return 2
        }
    }
    
    var damage: Int {
        switch self {
        case .unarmed, .knife, .dagger, .shortsword, .mace, .woodenClub, .staff, .shortSpear, .longSpear:
            return 1
        case .falchion, .broadsword, .longsword, .scimitar, .handaxe, .battleaxe, .morningstar, .warhammer, .flail,
                .largeWoodenClub, .pike, .halberd, .trident:
            return 2
        case .twoHandedSword, .twoHandedAxe, .heavyWarhammer:
            return 3
        }
    }
    
    func toWeapon() -> Weapon {
        Weapon(
            name: czName,
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
            weaponType: weaponType,
            range: range,
            grip: grip,
            features: features,
            bonus: bonus,
            damage: damage
        )
    }
    
    static var defaultItems: [Item] {
        return [] // TODO
    }
}