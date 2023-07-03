return { factoryhover = {
  name                          = [[Hovercraft Platform]],
  description                   = [[Produces Hovercraft]],
  buildDistance                 = Shared.FACTORY_PLATE_RANGE,
  builder                       = true,
  buildingGroundDecalDecaySpeed = 30,
  buildingGroundDecalSizeX      = 15,
  buildingGroundDecalSizeY      = 15,
  buildingGroundDecalType       = [[factoryhover_aoplane.dds]],

  buildoptions     = {
    [[hovercon]],
    [[hoverraid]],
    [[hoverheavyraid]],
    [[hoverskirm]],
    [[hoverassault]],
    [[hoverdepthcharge]],
    [[hoverriot]],
    [[hoverarty]],
    [[hoveraa]],
  },

  buildPic         = [[factoryhover.png]],
  canMove          = true,
  canPatrol        = true,
  category         = [[UNARMED FLOAT]],
  collisionVolumeOffsets  = [[0 -2 0]],
  collisionVolumeScales   = [[124 32 124]],
  collisionVolumeType     = [[cylY]],
  selectionVolumeOffsets  = [[0 0 0]],
  selectionVolumeScales   = [[130 20 130]],
  selectionVolumeType     = [[box]],
  corpse           = [[DEAD]],

  customParams     = {
    ploppable = 1,
    sortName            = [[8]],
    modelradius         = [[60]],
    default_spacing     = 8,
    aimposoffset        = [[0 0 -32]],
    midposoffset        = [[0 0 -32]],
    solid_factory       = [[8]],
    unstick_help        = [[1]],
    unstick_help_buffer = 0.3,
    factorytab          = 1,
    shared_energy_gen   = 1,
    parent_of_plate     = [[platehover]],
    buggeroff_radius   = 40,
    buggeroff_offset   = 5,

    stats_show_death_explosion = 1,

    outline_x = 250,
    outline_y = 250,
    outline_yoff = 5,
  },

  explodeAs        = [[LARGE_BUILDINGEX]],
  footprintX       = 8,
  footprintZ       = 12,
  iconType         = [[fachover]],
  levelGround      = false,
  maxDamage        = 4000,
  maxSlope         = 15,
  maxVelocity      = 0,
  metalCost        = Shared.FACTORY_COST,
  moveState        = 1,
  noAutoFire       = false,
  objectName       = [[factoryhover.s3o]],
  script           = [[factoryhover.lua]],
  selfDestructAs   = [[LARGE_BUILDINGEX]],
  showNanoSpray    = false,
  sightDistance    = 273,
  useBuildingGroundDecal = true,
  waterline        = 1,
  workerTime       = Shared.FACTORY_BUILDPOWER,
  yardMap          = [[xoooooox oooooooo oooooooo ooccccoo ooccccoo ooccccoo ooccccoo xoccccox yyyyyyyy yyyyyyyy yyyyyyyy yyyyyyyy]],

  featureDefs      = {

    DEAD  = {
      blocking         = true,
      featureDead      = [[HEAP]],
      footprintX       = 8,
      footprintZ       = 7,
      object           = [[factoryhover_dead.s3o]],
      collisionVolumeOffsets  = [[0 -2 -50]],
      collisionVolumeScales   = [[124 32 124]],
      collisionVolumeType     = [[cylY]],

    },


    HEAP  = {
      blocking         = false,
      footprintX       = 8,
      footprintZ       = 7,
      object           = [[debris4x4c.s3o]],
    },

  },

} }
