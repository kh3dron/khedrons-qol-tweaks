# khedron's QoL Tweaks

Custom factorio mod for QOL features I want.

## Inclusions

- **Roboports now transmit power inside their service areas**: Once I've got bots, I'm building everything in a roboport grid. Power poles are pretty much just a nuisance anyway, so this feature places a roboport-sized substation on top of every roboport. No more need for powerpoles inside the roboport grid.
- **Speed does not detract from quality**: The devs said in [FFF-375](https://www.factorio.com/blog/post/fff-375) that "we wanted to reduce the number of places where beacons full of speed modules is the best way to go." This makes complete sense, but I think this is more often annoying than interesting to me, and it's _my_ QOL modpack so I get to pick the music
- **Handcraftable Engines**: Engine units are the _only_ non-fluid items in the game that can't be crafted by hand. Why? just to annoy you when you're a mile away from the base running fluid pumps. Not anymore.

## todo

- Features
  - roboports also behave as a 4x4 grid of lamps
  - all items craftable in inventory (engines)
  - all buildings are lamps internally
- Fixes
  - make invisible substations work with option+C to maniuplate wire connections

## considered, but not included

- legendary buildings get more module slots? op
- bot speed increases? not needed

## Leaderboard of issues that have wasted time

- 3 hours: not noticing that the API docs default to the latest experimental versions, IE I was modifying fields that do not exist in the latest stable release I was testing on
- 30m: not adding the quality mod as a dependency of all my changes that affect quality