(define (problem Monster1)
    (:domain CaveSystem)
    (:objects
        player treasure loc1 loc2 loc3 loc4 loc5 loc6
    )
    (:init
        (player player) (treasure treasure) (location loc1) (location loc2)
        (location loc3) (location loc4) (location loc5) (location loc6)
        
        (playerAt player loc1) (treasureAt treasure loc4) (pitAt loc5)
        (monsterAt loc6)
        
        (passage loc1 loc2) (passage loc2 loc1) (passage loc1 loc5)
        (passage loc1 loc6) (passage loc5 loc4) (passage loc6 loc4)
        (passage loc2 loc3) (passage loc3 loc2) (passage loc3 loc4)
        (passage loc4 loc3)
    )
    (:goal  (and
            (playerAt player loc1)
            (hasTreasure player treasure)
            )
    )
)