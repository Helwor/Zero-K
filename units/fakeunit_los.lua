return { fakeunit_los = {
  name                  = [[LOS Provider]],
  description           = [[Knows all and sees all]],
  acceleration          = 1,
  brakeRate             = 0.8,
  builder               = false,
  buildPic              = [[levelterra.png]],
  canFly                = true,
  canGuard              = true,
  canMove               = true,
  canPatrol             = true,
  canSubmerge           = false,
  canSelfDestruct       = false,
  category              = [[FAKEUNIT]],
  cruiseAlt             = 300,
  
  customParams          = {
    dontcount         = [[1]],
    dontkill          = [[1]],
    completely_hidden = 1, -- for widget-senpai not to notice me
  },
  
  floater               = true,
  footprintX            = 3,
  footprintZ            = 3,
  hoverAttack           = true,
  iconType              = [[none]],
  idleAutoHeal          = 10,
  idleTime              = 300,
  levelGround           = false,
  maxDamage             = 900000,
  maxVelocity           = 5,
  maxWaterDepth         = 0,
  metalCost             = 0.45,
  minCloakDistance      = 9,
  noAutoFire            = false,
  objectName            = [[debris1x1b.s3o]],
  script                = [[fakeunit_los.lua]],
  sightDistance         = 500,
  stealth               = true,
  turnRate              = 0,
  workerTime            = 0,
} }
