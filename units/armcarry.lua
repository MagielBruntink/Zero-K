unitDef = {
  unitname               = [[armcarry]],
  name                   = [[Reef]],
  description            = [[Aircraft Carrier (Bombardment) & Anti-Nuke]],
  acceleration           = 0.0354,
  activateWhenBuilt      = true,
  antiweapons            = [[1]],
  bmcode                 = [[1]],
  brakeRate              = 0.0466,
  buildAngle             = 16384,
  buildCostEnergy        = 4000,
  buildCostMetal         = 4000,
  builder                = true,
  buildPic               = [[ARMCARRY.png]],
  buildTime              = 4000,
  canAssist              = false,
  canGuard               = true,
  canMove                = true,
  canPatrol              = true,
  canReclaim             = false,
  canRepair              = false,
  canRestore             = false,
  canstop                = [[1]],
  category               = [[SHIP]],
  CollisionSphereScale   = 0.6,
  collisionVolumeOffsets = [[0 -20 20]],
  collisionVolumeScales  = [[80 40 260]],
  collisionVolumeTest    = 1,
  collisionVolumeType    = [[box]],
  corpse                 = [[DEAD]],

  customParams           = {
    description_fr = [[Porte-Avion Bombardier & Anti-Nuke]],
    helptext       = [[The most versatile ship on the high seas, the carrier serves several functions. It is equpped with cruise missiles for long range bombardment. Its anti-missile system safeguards the fleet from the threat of nuclear missiles, and it also serves as a mobile repair base for friendly aircraft. Perhaps most notably, the carrier provides its own complement of surface attack drones to engage targets.]],
    helptext_fr    = [[C'est le plus polyvalent des Navires possibles, le Reef peut tirer des missiles de croisicre longue portée pour des frappes chirurgicales, tirer des antimissiles pour contrer tout missile nucléaire, servir de station de réparation et de rechargement pour les planeurs alliés ou encore utiliser ses nombreux drones.]],
  },

  defaultmissiontype     = [[Standby]],
  energyUse              = 1.5,
  explodeAs              = [[ATOMIC_BLASTSML]],
  floater                = true,
  footprintX             = 6,
  footprintZ             = 6,
  iconType               = [[carrier]],
  idleAutoHeal           = 5,
  idleTime               = 1800,
  isAirBase              = true,
  maneuverleashlength    = [[640]],
  mass                   = 695,
  maxDamage              = 7500,
  maxVelocity            = 2.96,
  minCloakDistance       = 75,
  minWaterDepth          = 15,
  movementClass          = [[BOAT6]],
  moveState              = 0,
  noAutoFire             = false,
  objectName             = [[ARMCARRIER]],
  radarDistance          = 1500,
  seismicSignature       = 4,
  selfDestructAs         = [[ATOMIC_BLASTSML]],
  side                   = [[ARM]],
  sightDistance          = 1105,
  smoothAnim             = true,
  steeringmode           = [[1]],
  TEDClass               = [[SHIP]],
  turninplace            = 0,
  turnRate               = 233,
  waterline              = 8,
  workerTime             = 12,

  weapons                = {

    {
      def                = [[carriertargeting]],
      onlyTargetCategory = [[SWIM LAND SINK FLOAT SHIP HOVER]],
    },


    {
      def                = [[ARMMSHIP_ROCKET]],
      badTargetCategory  = [[SWIM LAND SHIP HOVER]],
      onlyTargetCategory = [[SWIM LAND SINK FLOAT SHIP HOVER]],
    },


    {
      def = [[CARRIER_AMD_ROCKET]],
    },

  },


  weaponDefs             = {

    ARMMSHIP_ROCKET    = {
      name                    = [[Cruise Missile]],
      areaOfEffect            = 96,
      burnblow                = true,
      collideFriendly         = false,
      craterBoost             = 1,
      craterMult              = 2,
      cruise                  = [[1]],

      damage                  = {
        default = 900,
        planes  = 900,
        subs    = 45,
      },

      explosionGenerator      = [[custom:STARFIRE]],
      fireStarter             = 100,
      guidance                = true,
      impulseBoost            = 0,
      impulseFactor           = 0.4,
      interceptedByShieldType = 2,
      lineOfSight             = true,
      metalpershot            = 0,
      model                   = [[rocket]],
      noautorange             = [[1]],
      noSelfDamage            = true,
      range                   = 1550,
      reloadtime              = 6,
      renderType              = 1,
      selfprop                = true,
      smokedelay              = [[0.1]],
      smokeTrail              = true,
      soundHit                = [[weapon/missile/vlaunch_hit]],
      soundStart              = [[weapon/missile/missile_launch]],
      startsmoke              = [[1]],
      tolerance               = 4000,
      twoPhase                = true,
      vlaunch                 = true,
      weaponAcceleration      = 355,
      weaponTimer             = 2,
      weaponType              = [[StarburstLauncher]],
      weaponVelocity          = 10000,
    },


    CARRIER_AMD_ROCKET = {
      name                    = [[Anti-Nuke Missile]],
      areaOfEffect            = 420,
      collideFriendly         = false,
      coverage                = 1500,
      craterBoost             = 1,
      craterMult              = 2,

      damage                  = {
        default = 1500,
        subs    = 75,
      },

      explosionGenerator      = [[custom:ANTINUKE]],
      fireStarter             = 100,
      flighttime              = 100,
      guidance                = true,
      impulseBoost            = 0,
      impulseFactor           = 0.4,
      interceptedByShieldType = 1,
      interceptor             = 1,
      lineOfSight             = true,
      model                   = [[amdrocket]],
      noautorange             = [[1]],
      noSelfDamage            = true,
      range                   = 3500,
      reloadtime              = 12,
      renderType              = 1,
      selfprop                = true,
      smokedelay              = [[0.1]],
      smokeTrail              = true,
      soundHit                = [[weapon/missile/vlaunch_hit]],
      soundStart              = [[weapon/missile/missile_launch]],
      startsmoke              = [[1]],
      startVelocity           = 400,
      tolerance               = 4000,
      tracks                  = true,
      turnrate                = 65535,
      twoPhase                = true,
      vlaunch                 = true,
      weaponAcceleration      = 400,
      weaponTimer             = 0.2,
      weaponType              = [[StarburstLauncher]],
      weaponVelocity          = 1300,
    },


    carriertargeting   = {
      name                    = [[Fake Targeting Weapon]],
      areaOfEffect            = 8,
      collideFriendly         = false,
      craterBoost             = 0,
      craterMult              = 0,

      damage                  = {
        default = 1E-06,
        planes  = 1E-06,
        subs    = 5E-08,
      },

      explosionGenerator      = [[custom:NONE]],
      fireStarter             = 0,
      impactOnly              = true,
      interceptedByShieldType = 1,
      range                   = 1600,
      reloadtime              = 1.25,
      size                    = 1E-06,
      smokeTrail              = false,

      textures                = {
        [[null]],
        [[null]],
        [[null]],
      },

      turnrate                = 1000000000,
      turret                  = true,
      weaponAcceleration      = 20000,
      weaponTimer             = 0.5,
      weaponType              = [[StarburstLauncher]],
      weaponVelocity          = 20000,
    },

  },


  featureDefs            = {

    DEAD  = {
      description      = [[Wreckage - Reef]],
      blocking         = false,
      category         = [[corpses]],
      damage           = 7500,
      energy           = 0,
      featureDead      = [[DEAD2]],
      footprintX       = 6,
      footprintZ       = 6,
      height           = [[4]],
      hitdensity       = [[100]],
      metal            = 1600,
      object           = [[ARMCARRIER_DEAD]],
      reclaimable      = true,
      reclaimTime      = 1600,
      seqnamereclamate = [[TREE1RECLAMATE]],
      world            = [[All Worlds]],
    },


    DEAD2 = {
      description      = [[Debris - Reef]],
      blocking         = false,
      category         = [[heaps]],
      damage           = 7500,
      energy           = 0,
      featureDead      = [[HEAP]],
      featurereclamate = [[SMUDGE01]],
      footprintX       = 8,
      footprintZ       = 8,
      hitdensity       = [[100]],
      metal            = 1600,
      object           = [[debris4x4b.s3o]],
      reclaimable      = true,
      reclaimTime      = 1600,
      seqnamereclamate = [[TREE1RECLAMATE]],
      world            = [[All Worlds]],
    },


    HEAP  = {
      description      = [[Debris - Reef]],
      blocking         = false,
      category         = [[heaps]],
      damage           = 7500,
      energy           = 0,
      featurereclamate = [[SMUDGE01]],
      footprintX       = 8,
      footprintZ       = 8,
      hitdensity       = [[100]],
      metal            = 800,
      object           = [[debris4x4b.s3o]],
      reclaimable      = true,
      reclaimTime      = 800,
      seqnamereclamate = [[TREE1RECLAMATE]],
      world            = [[All Worlds]],
    },

  },

}

return lowerkeys({ armcarry = unitDef })
