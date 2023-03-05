//
// © 2023 Manicek
//

import SwiftUI

class PlayerDetailViewModel: ObservableObject {
    @Published var player: PlayerCharacter
    @Published var isEditing = false
    @Published var skillCausingExperienceWarning: Skill?
    @Published var talentCausingExperienceWarning: Talent?
    
    var ignoreAllExperienceRequirements = false
    
    init(player: PlayerCharacter) {
        self.player = player
    }
    
    func toggleEditMode() {
        withAnimation {
            isEditing.toggle()
        }
    }
    
    // MARK: - Attributes
    
    func onPlayerAttributeChanged(attribute: Attribute, change: Int) {
        if let current = player.attributes[attribute], let maximum = player.maxAttributes[attribute] {
            player.attributes[attribute] = min(max(0, current + change), maximum)
        }
    }
    
    func onAnimalAttributeChanged(attribute: Attribute, change: Int) {
        if let current = player.animal.attributes[attribute], let maximum = player.animal.maxAttributes[attribute] {
            player.animal.attributes[attribute] = min(max(0, current + change), maximum)
        }
    }
    
    // MARK: - Skills
    
    func onIncreaseSkill(skill: Skill) {
        let currentSkillLevel = player.skills[skill] ?? 0
        if currentSkillLevel == Skill.maxLevel {
            return
        }
        let requiredXP = Skill.xpPerLevel * (currentSkillLevel + 1)
        if player.experience < requiredXP && !ignoreAllExperienceRequirements {
            skillCausingExperienceWarning = skill
        } else {
            player.experience -= requiredXP
            player.skills[skill] = currentSkillLevel + 1
        }
    }
    
    func onIgnoreExperienceForSkill(skill: Skill) {
        let currentSkillLevel = player.skills[skill] ?? 0
        player.skills[skill] = currentSkillLevel + 1
        skillCausingExperienceWarning = nil
    }
    
    // MARK: - Talents
    
    func onIncreaseTalent(talent: Talent) {
        let currentTalentLevel = player.talents[talent] ?? 0
        if currentTalentLevel == Talent.maxLevel {
            return
        }
        let requiredXP = Talent.xpPerLevel * (currentTalentLevel + 1)
        if player.experience < requiredXP && !ignoreAllExperienceRequirements {
            talentCausingExperienceWarning = talent
        } else {
            player.experience -= requiredXP
            player.talents[talent] = currentTalentLevel + 1
        }
    }
    
    func onIgnoreExperienceForTalent(talent: Talent) {
        let currentTalentLevel = player.talents[talent] ?? 0
        player.talents[talent] = currentTalentLevel + 1
        talentCausingExperienceWarning = nil
    }
    
    // MARK: - Experience
    
    func onAcceptNotEnoughExperience() {
        skillCausingExperienceWarning = nil
        talentCausingExperienceWarning = nil
    }
    
    func onIgnoreThisAndFutureExperienceRequirements(skill: Skill?, talent: Talent?) {
        ignoreAllExperienceRequirements = true
        if let skill = skill {
            onIgnoreExperienceForSkill(skill: skill)
        }
        if let talent = talent {
            onIgnoreExperienceForTalent(talent: talent)
        }
    }
}
