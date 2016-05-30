//crit_calculate()
global.actualcritchance=100-global.f_critchance
global.number=random_range(0,100)
if global.number>=global.actualcritchance
{
 global.critical=1
}
 else
{
 global.critical=0
}
