
# touhou common infected l4d1 fix & optimization 

the touhou common infected mod ( https://steamcommunity.com/sharedfiles/filedetails/?id=2255725019 ) has improper animations for the common infected models added by dlc3  
this fixes those so that the animations match the ones on public servers, so that hitboxes are correct

this mod also disables proportion modification so that hitboxes better match the mesh
i am able to reliably headshot with this mod

this also optimizes all of the models by removing duplicated/impossible to see triangles
it also removes all unnecessary vta vertices

optimizations: 
```
sanae:  30,863 tris -> 23,202 tris (25% reduction)
orin:   70,429 tris -> 63,419 tris (10% reduction)
mokou:  40,777 tris -> 28,853 tris (30% reduction)
kaku:   19,682 tris -> 18,826 tris (5% reduction)
alice:  51,254 tris -> 44,249 tris (14% reduction)
reimu:  82,476 tris -> 48,903 tris (41% reduction)
aya:    55,222 tris -> 46,221 tris (13% reduction)
tenshi: 35,309 tris -> 31,327 tris (12% reduction)
```

