(define (problem Monster2)
    (:domain CaveSystem)
    (:objects
        player treasure bow boots loc1 loc2 loc3 loc4 loc5 loc6 loc7 loc8 loc9
    )
    (:init
        (player player) (treasure treasure) (weapon bow) (boots boots)
        (location loc1) (location loc2) (location loc3) (location loc4)
        (location loc5) (location loc6) (location loc7) (location loc8)
        (location loc9) 
        
        (playerAt player loc1) (treasureAt treasure loc4)
        (weaponAt bow loc6) (bootsAt boots loc8) (monsterAt loc3)  (pitAt loc7)
        
        (passage loc1 loc2) (passage loc2 loc1) (passage loc1 loc5)
        (passage loc2 loc3) (passage loc3 loc2) (passage loc5 loc2)
        (passage loc5 loc7) (passage loc5 loc6) (passage loc6 loc5)
        (passage loc5 loc9) (passage loc3 loc4) (passage loc4 loc3)
        (passage loc7 loc4) (passage loc6 loc8) (passage loc8 loc6)
    )
    (:goal  (and
            (playerAt player loc1)
            (hasTreasure player treasure)
            )
    )
)