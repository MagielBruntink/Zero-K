unitDef = {
  unitname                      = [[factoryjump]],
  name                          = [[Jump/Specialist Plant]],
  description                   = [[Produces Jumpjets and Special Walkers, Builds at 10 m/s]],
  acceleration                  = 0,
  brakeRate                     = 0,
  buildCostMetal                = 600,
  builder                       = true,
  buildingGroundDecalDecaySpeed = 30,
  buildingGroundDecalSizeX      = 8,
  buildingGroundDecalSizeY      = 7,
  buildingGroundDecalType       = [[factoryjump_aoplane.dds]],

  buildoptions                  = {
    [[corfast]],
    [[puppy]],
    [[corpyro]],
	[[jumpblackhole]],
	[[slowmort]],
    [[corcan]],
    [[corsumo]],
	[[firewalker]],
    [[armaak]],
	[[corsktl]],
  },

  buildPic                      = [[factoryjump.png]],
  canMove                       = true,
  canPatrol                     = true,
  canstop                       = [[1]],
  category                      = [[SINK UNARMED]],
  collisionVolumeOffsets        = [[0 0 0]],
  collisionVolumeScales         = [[104 70 40]],
  collisionVolumeType           = [[box]],
  selectionVolumeOffsets        = [[0 0 30]],
  selectionVolumeScales         = [[104 70 100]],
  selectionVolumeType           = [[box]],
  corpse                        = [[DEAD]],

  customParams                  = {
    description_de = [[Produziert Spezial- und Sprungd�senroboter, Baut mit 10 M/s]],
    helptext       = [[The esoteric Jumpjet/Specialist Plant offers unique tactical options for rapidly closing the distance in a knife fight, or getting over hills and rivers to cut a path through enemy lines. Key units: Pyro, Moderator, Jack, Firewalker, Sumo]],
    helptext_de    = [[Hier werden au�ergew�hnliche Einheiten erzeugt, die durch spezielle F�higkeiten Distanzen schnell �berbr�cken k�nnen, um in den Nahkampf zu treten oder auch, um Hindernisse schnell zu �berbr�cken. Wichtigste Einheiten: Pyro, Moderator, Jack, Firewalker, Sumo]],
    aimposoffset   = [[0 0 -28]],
    midposoffset   = [[0 0 -28]],
    canjump  = [[1]],
	no_jump_handling = [[1]],
    sortName = [[5]],
	modelradius    = [[38]],
	solid_factory = [[3]],
  },

  energyUse                     = 0,
  explodeAs                     = [[LARGE_BUILDINGEX]],
  footprintX                    = 7,
  footprintZ                    = 7,
  iconType                      = [[facjumpjet]],
  idleAutoHeal                  = 5,
  idleTime                      = 1800,
  maxDamage                     = 4000,
  maxSlope                      = 15,
  maxVelocity                   = 0,
  maxWaterDepth                 = 0,
  minCloakDistance              = 150,
  moveState        				= 1,
  noAutoFire                    = false,
  objectName                    = [[factoryjump.s3o]],
  script						= [[factoryjump.lua]],
  selfDestructAs                = [[LARGE_BUILDINGEX]],
  showNanoSpray                 = false,
  sightDistance                 = 273,
  turnRate                      = 0,
  useBuildingGroundDecal        = true,
  workerTime                    = 10,
  yardMap                       = [[ooooooo ooooooo ooooooo ccccccc ccccccc ccccccc ccccccc]],

  featureDefs                   = {

    DEAD  = {
      blocking         = true,
      featureDead      = [[HEAP]],
      footprintX       = 5,
      footprintZ       = 6,
      object           = [[factoryjump_dead.s3o]],
    },


    HEAP  = {
      blocking         = false,
      footprintX       = 5,
      footprintZ       = 5,
      object           = [[debris4x4c.s3o]],
    },

  },

}

return lowerkeys({ factoryjump = unitDef })
