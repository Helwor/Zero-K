unitDef = {
  unitname                      = [[striderhub]],
  name                          = [[Strider Hub]],
  description                   = [[Constructs Striders, Builds at 6 m/s]],
  acceleration                  = 0,
  brakeRate                     = 1.5,
  buildCostEnergy               = 550,
  buildCostMetal                = 550,
  buildDistance                 = 300,
  builder                       = true,
  buildingGroundDecalDecaySpeed = 30,
  buildingGroundDecalSizeX      = 5,
  buildingGroundDecalSizeY      = 5,
  buildingGroundDecalType       = [[armnanotc_aoplane.dds]],

  buildoptions                  = {
    [[armcomdgun]],
    [[dante]],
    [[armraven]],
    [[armbanth]],
    [[gorg]],
    [[armorco]],
  },

  buildPic                      = [[striderhub.png]],
  buildTime                     = 550,
  canGuard                      = true,
  canMove                       = false,
  canPatrol                     = true,
  canreclamate                  = [[1]],
  canstop                       = [[1]],
  cantBeTransported             = true,
  category                      = [[FLOAT UNARMED]],
  collisionVolumeOffsets        = [[0 -15 0]],
  collisionVolumeScales         = [[70 90 70]],
  collisionVolumeTest           = 1,
  collisionVolumeType           = [[ellipsoid]],
  corpse                        = [[DEAD]],

  customParams                  = {
    description_de = [[Erzeugt Strider, Baut mit 6 M/s]],
    helptext       = [[The Strider Hub deploys striders, the "humoungous mecha" that inspire awe and fear on the battlefield. Unlike a normal factory, the hub is only required to start a project, not to finish it.]],
	helptext_de    = [[Das Strider Hub erzeugt Strider, welche sehr gef�rchtet sind auf dem Schlachtfeld. Anders als normale Fabriken, wird dieser Hub nur ben�tigt, um ein Projekt zu starten, nicht, um es zu vollenden.]],
  },

  defaultmissiontype            = [[Standby]],
  energyMake                    = 0.3,
  explodeAs                     = [[ESTOR_BUILDINGEX]],
  floater                       = true,
  footprintX                    = 4,
  footprintZ                    = 4,
  iconType                      = [[t3hub]],
  idleAutoHeal                  = 5,
  idleTime                      = 1800,
  levelGround                   = false,
  maneuverleashlength           = [[380]],
  mass                          = 100000,
  maxDamage                     = 2000,
  maxSlope                      = 15,
  maxVelocity                   = 0,
  metalMake                     = 0.3,
  minCloakDistance              = 150,
  movementClass                 = [[KBOT4]],
  noAutoFire                    = false,
  objectName                    = [[striderhub.s3o]],
  script                        = [[nanotower.lua]],
  seismicSignature              = 4,
  selfDestructAs                = [[ESTOR_BUILDINGEX]],
  showNanoSpray                 = false,
  side                          = [[ARM]],
  sightDistance                 = 380,
  smoothAnim                    = true,
  steeringmode                  = [[1]],
  TEDClass                      = [[CNSTR]],
  terraformSpeed                = 600,
  turnRate                      = 1,
  upright                       = true,
  useBuildingGroundDecal        = true,
  workerTime                    = 6,

  featureDefs                   = {

    DEAD = {
      description      = [[Wreckage - Strider Hub]],
      blocking         = false,
      category         = [[heaps]],
      damage           = 2000,
      energy           = 0,
      featureDead      = [[HEAP]],
      featurereclamate = [[SMUDGE01]],
      footprintX       = 4,
      footprintZ       = 4,
      height           = [[4]],
      hitdensity       = [[100]],
      metal            = 88,
      object           = [[striderhub_dead.s3o]],
      reclaimable      = true,
      reclaimTime      = 88,
      seqnamereclamate = [[TREE1RECLAMATE]],
      world            = [[All Worlds]],
    },


    HEAP = {
      description      = [[Debris - Strider Hub]],
      blocking         = false,
      category         = [[heaps]],
      damage           = 2000,
      energy           = 0,
      featurereclamate = [[SMUDGE01]],
      footprintX       = 4,
      footprintZ       = 4,
      height           = [[4]],
      hitdensity       = [[100]],
      metal            = 44,
      object           = [[debris4x4a.s3o]],
      reclaimable      = true,
      reclaimTime      = 44,
      seqnamereclamate = [[TREE1RECLAMATE]],
      world            = [[All Worlds]],
    },

  },

}

return lowerkeys({ striderhub = unitDef })
