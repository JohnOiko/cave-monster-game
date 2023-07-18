(define (domain CaveSystem)
    (:requirements :strips)
    (:predicates
        (player ?x) (treasure ?x) (weapon ?x) (boots ?x) (location ?x)
        
        (playerAt ?player ?location) (treasureAt ?treasure ?location)
        (weaponAt ?weapon ?location) (bootsAt ?boots ?location)
        (monsterAt ?location) (pitAt ?location)
        
        (hasTreasure ?player ?treasure) (hasWeapon ?player ?weapon)
        (hasBoots ?player ?boots) (passage ?location1 ?location2)
    )
    (:action Move
        :parameters ( ?P ?L1 ?L2 )
        :precondition (and (playerAt ?P ?L1) (passage ?L1 ?L2)
        (not (monsterAt ?L2)) (not (pitAt ?L2)))
        :effect (and (playerAt ?P ?L2) (not (playerAt ?P ?L1)))
    )
    (:action FightMove
        :parameters ( ?P ?W ?L1 ?L2)
        :precondition (and (playerAt ?P ?L1) (passage ?L1 ?L2) (hasWeapon ?P ?W)
        (monsterAt ?L2) (not (pitAt ?L2)))
        :effect (and (playerAt ?P ?L2) (not (playerAt ?P ?L1))
        (not (hasWeapon ?P ?W)) (not (monsterAt ?L2)))
    )
    (:action JumpMove
        :parameters ( ?P ?B ?L1 ?L2 )
        :precondition (and (playerAt ?P ?L1) (passage ?L1 ?L2) (hasBoots ?P ?B)
        (not (monsterAt ?L2)) (pitAt ?L2))
        :effect (and (playerAt ?P ?L2) (not (playerAt ?P ?L1))
        (not (hasBoots ?P ?B)))
    )
    (:action PickUpWeapon
        :parameters ( ?P ?W ?L )
        :precondition (and (playerAt ?P ?L) (weaponAt ?W ?L))
        :effect (and (hasWeapon ?P ?W) (not (weaponAt ?W ?L)))
    )
    (:action PickUpBoots
        :parameters ( ?P ?B ?L )
        :precondition (and (playerAt ?P ?L) (bootsAt ?B ?L))
        :effect (and (hasBoots ?P ?B) (not (bootsAt ?B ?L)))
    )
    (:action PickUpTreasure
        :parameters ( ?P ?T ?L )
        :precondition (and (playerAt ?P ?L) (treasureAt ?T ?L))
        :effect (and (hasTreasure ?P ?T) (not (treasureAt ?T ?L)))
    )
)