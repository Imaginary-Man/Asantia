//element_combo()
/*
if global.element[FIRE]=1
{
 global.element_=FIRE
}

if global.element[WATER]=1
{
 global.element_=WATER
}

if global.element[EARTH]=1
{
 global.element_=EARTH
}

if global.element[ELECTRO]=1
{
 global.element_=ELECTRO
}

if global.element[WIND]=1
{
 global.element_=WIND
}

if global.element[DEATH]=1
{
 global.element_=DEATH
}

if global.element[LIFE]=1
{
 global.element_=LIFE
}


//element combo duo

if global.element[FIRE]=2
{
 global.element[FLAME]=1
 global.element_=FLAME
 global.element[FIRE]=0
}

if global.element[FIRE]=1 and global.element[WIND]=1
{
 global.element[BLAZE]=1
 global.element_=BLAZE
 global.element[FIRE]=0
 global.element[WIND]=0
}

if global.element[FIRE]=1 and global.element[EARTH]=1
{
 global.element[SCORCH]=1
 global.element_=SCORCH
 global.element[FIRE]=0
 global.element[EARTH]=0
}

global.element[FIRE]=1 and global.element[ELECTRO]=1
{
 global.element[BLAST]=1
 global.element_=BLAST
 global.element[FIRE]=0
 global.element[ELECTRO]=0
}

global.element[FIRE]=1 and global.element[WATER]=1
{
 global.element[SMOKE]=1
 global.element_=SMOKE
 global.element[FIRE]=0
 global.element[WATER]=0
}

if global.element[FIRE]=1 and global.element[DEATH]=1
{
 global.element[TORMENT]=1
 global.element_=TORMENT
 global.element[FIRE]=0
 global.element[DEATH]=0
}

if global.element[FIRE]=1 and global.element[LIFE]=1
{
 global.element[SACRIFICE]=1
 global.element_=SACRIFICE
 global.element[FIRE]=0
 global.element[LIFE]=0
}

if global.element[WIND]=2
{
 global.element[TORNADO]=1
 global.element_=TORNADO
 global.element[WIND]=0
}

if global.element[WIND]=1 and global.element[EARTH]=1
{
 global.element[GROSS]=1
 global.element_=GROSS
 global.element[WIND]=0
 global.element[EARTH]=0
}

if global.element[WIND]=1 and global.element[ELECTRO]=1
{
 global.element[STORM]=1
 global.element_=STORM
 global.element[WIND]=0
 global.element[ELECTRO]=0
}

if global.element[WIND]=1 and global.element[WATER]=1
{
 global.element[ICE]=1
 global.element_=ICE
 global.element[WIND]=0
 global.element[WATER]=0
}

if global.element[WIND]=1 and global.element[DEATH]=1
{
 global.element[DREAD]=1
 global.element_=DREAD
 global.element[WIND]=0
 global.element[DEATH]=0
}

if global.element[WIND]=1 and global.element[LIFE]=1
{
 global.element[MOTION]=1
 global.element_=MOTION
 global.element[WIND]=0
 global.element[LIFE]=0
}

if global.element[EARTH]=2
{
 global.element[GRAVITY]=1
 global.element_=GRAVITY
 global.element[EARTH]=0
}

if global.element[EARTH]=1 and global.element[ELECTRO]=1
{
 global.element[CARBON]=1
 global.element_=CARBON
 global.element[EARTH]=0
 global.element[ELECTRO]=0
}

if global.element[EARTH]=1 and global.element[WATER]=1
{
 global.element[ANCIENT]=1
 global.element_=ANCIENT
 global.element[EARTH]=0
 global.element[WATER]=0
}

if global.element[EARTH]=1 and global.element[DEATH]=1
{
 global.element[DECAY]=1
 global.element_=DECAY
 global.element[EARTH]=0
 global.element[DEATH]=0
}

if global.element[EARTH]=1 and global.element[LIFE]=1
{
 global.element[TITAN]=1
 global.element_=TITAN
 global.element[EARTH]=0
 global.element[LIFE]=0
}

if global.element[ELECTRO]=2
{
 global.element[THUNDER]=1
 global.element_=THUNDER
 global.element[ELECTRO]=0
}

if global.element[ELECTRO]=1 and global.element[WATER]=1
{
 global.element[CONDUCTION]=1
 global.element_=CONDUCTION
 global.element[ELECTRO]=0
 global.element[WATER]=0
}

if global.element[ELECTRO]=1 and global.element[DEATH]=1
{
 global.element[VOLTAGE]=1
 global.element_=VOLTAGE
 global.element[ELECTRO]=0
 global.element[DEATH]=0
}

if global.element[ELECTRO]=1 and global.element[LIFE]=1
{
 global.element[HOPE]=1
 global.element_=HOPE
 global.element[ELECTRO]=0
 global.element[LIFE]=0
}

if global.element[WATER]=2
{
 global.element[TIDAL]=1
 global.element_=TIDAL
 global.element[WATER]=0
}

if global.element[WATER]=1 and global.element[DEATH]=1
{
 global.element[POISON]=1
 global.element_=POISON
 global.element[WATER]=0
 global.element[DEATH]=0
}

if global.element[WATER]=1 and global.element[LIFE]=1
{
 global.element[BLOOD]=1
 global.element_=BLOOD
 global.element[WATER]=0
 global.element[LIFE]=0
}

if global.element[DEATH]=2
{
 global.element[DARKNESS]=1
 global.element_=DARKNESS
 global.element[DEATH]=0
}

if global.element[LIFE]=2
{
 global.element[LIGHT]=1
 global.element_=LIGHT
 global.element[LIFE]=0
}

if global.element[DEATH]=1 and global.element[LIFE]=1
{
 global.element[CHAOS]=1
 global.element_=CHAOS
 global.element[DEATH]=0
 global.element[LIFE]=0
}
