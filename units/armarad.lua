unitDef = {
  unitname                      = [[armarad]],
  name                          = [[Advanced Radar Tower]],
  description                   = [[Long-Range Radar and Sonar, halves radar wobble]],
  activateWhenBuilt             = true,
  buildAngle                    = 8192,
  buildCostEnergy               = 500,
  buildCostMetal                = 500,
  builder                       = false,
  buildingGroundDecalDecaySpeed = 30,
  buildingGroundDecalSizeX      = 4,
  buildingGroundDecalSizeY      = 4,
  buildingGroundDecalType       = [[armarad_aoplane.dds]],
  buildPic                      = [[armarad.png]],
  buildTime                     = 500,
  canAttack                     = false,
  category                      = [[UNARMED FLOAT]],
  collisionVolumeOffsets        = [[0 -8 0]],
  collisionVolumeScales         = [[32 83 32]],
  collisionVolumeTest           = 1,
  collisionVolumeType           = [[box]],
  corpse                        = [[DEAD]],

  customParams                  = {
    description_de = [[Langstreckenradar, halbiert Radarungenauigkeit]],
    description_pl = [[Radar Dalekiego Zasiegu z ulepszeniem dokladnosci]],
    helptext       = [[The advanced Radar Tower has a considerably greater range than the basic version and also provides sonar. In addition each advanced radar tower halves the radar wobble of units. This works globally and affects all allied radars. Building one or two can be of great help, at a price.]],
    helptext_de    = [[Der erweiterte Radarturm hat eine weitaus größere Radarreichweite als die Standardvariante und hat einen Sonar. Zusätzlich wird das hin und her wackeln von Zielen halbiert. Dieser Effekt ist global und wirkt such auf alle verbündeten Radartürme aus. Ein, zwei solcher Türme können sehr nützlich sein, haben allerdings ihren Preis.]],
    helptext_pl    = [[Ten radar ma zdecydowanie wiekszy zasieg niz podstawowa wersja i zapewnia takze sonar. Ponadto, kazdy taki budynek zwieksza dokladnosc namiaru wszystkich wlasnych i sprzymierzonych radarow.]],
    modelradius    = [[16]],
  },

  energyUse                     = 3,
  explodeAs                     = [[SMALL_BUILDINGEX]],
  floater                       = true,
  footprintX                    = 2,
  footprintZ                    = 2,
  iconType                      = [[advradar]],
  idleAutoHeal                  = 5,
  idleTime                      = 1800,
  isTargetingUpgrade            = true,
  levelGround                   = false,
  maxDamage                     = 330,
  maxSlope                      = 36,
  minCloakDistance              = 150,
  objectName                    = [[novaradar.s3o]],
  script                        = [[armarad.lua]],
  onoffable                     = true,
  radarDistance                 = 4000,
  radarEmitHeight               = 120,
  seismicSignature              = 4,
  selfDestructAs                = [[SMALL_BUILDINGEX]],
  sightDistance                 = 800,
  sonarDistance                 = 2000,
  useBuildingGroundDecal        = true,
  yardMap                       = [[oooo]],

  featureDefs                   = {

    DEAD  = {
      description      = [[Wreckage - Advanced Radar Tower]],
      blocking         = true,
      damage           = 330,
      energy           = 0,
      featureDead      = [[HEAP]],
      footprintX       = 2,
      footprintZ       = 2,
      metal            = 200,
      object           = [[novaradar_dead.s3o]],
      reclaimable      = true,
      reclaimTime      = 200,
    },

    HEAP  = {
      description      = [[Debris - Advanced Radar Tower]],
      blocking         = false,
      damage           = 330,
      energy           = 0,
      footprintX       = 2,
      footprintZ       = 2,
      metal            = 100,
      object           = [[debris2x2b.s3o]],
      reclaimable      = true,
      reclaimTime      = 100,
    },

  },

}

return lowerkeys({ armarad = unitDef })
