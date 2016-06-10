///draw_rarity()
if slotid[n].rarity=0
{
 clr=make_colour_rgb(210,215,217)
 strng="Crude"
}
if slotid[n].rarity=1
{
 clr=make_colour_rgb(165,171,173)
 strng="Common"
}
if slotid[n].rarity=2
{
 clr=make_colour_rgb(110,110,110)
 strng="Uncommon"
}
if slotid[n].rarity=3
{
 clr=make_colour_rgb(59,82,120)
 strng="Rare"
}
if slotid[n].rarity=4
{
 clr=make_colour_rgb(117,106,21)
 strng="Unique"
}
if slotid[n].rarity=5
{
 clr=make_colour_rgb(31,102,16)
 strng="Grand"
}
if slotid[n].rarity=6
{
 clr=make_colour_rgb(242,174,15)
 strng="Heroic"
}
if slotid[n].rarity=7
{
 clr=make_colour_rgb(105,187,255)
 strng="Legendary"
}
if slotid[n].rarity=8
{
 clr=make_colour_rgb(153,20,20)
 strng="Mythic"
}
if slotid[n].rarity=9
{
 clr=make_colour_rgb(217,17,107)
 strng="Demonic"
}
if slotid[n].rarity=10
{
 clr=make_colour_rgb(255,250,191)
 strng="Divine"
}
if slotid[n].rarity=11
{
 clr=make_colour_rgb(255,255,0)
 strng="GODLY"
}


draw_set_color(clr)
draw_text_transformed(slotx[n]-(r_width*global.ui_size)+25*global.ui_size,sloty[n]+9*global.ui_size,strng,global.ui_size/3,global.ui_size/3,0)
draw_set_color(c_white)
