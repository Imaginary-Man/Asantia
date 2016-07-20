//time_loop()
if (global.time >= 5 * T_HOUR && global.time <= 9 * T_HOUR)
{
    global.alpha = 0.85 - 0.85 * ((global.time - 5 * T_HOUR) /(4 * T_HOUR));
}
else if (global.time > 9 * T_HOUR && global.time < 20 * T_HOUR)
{
    global.alpha = 0
}
else if(global.time >= 20 * T_HOUR && global.time <= 24 * T_HOUR)
{
    global.alpha = 0 + 0.85 * ((global.time - 20 * T_HOUR) /(4 * T_HOUR));
}
else if(global.time > 24 * T_HOUR && global.time < 5 * T_HOUR)
{
    global.alpha = 0.85
}

global.time+=global.timespeed
if global.time>=86400 {global.time=0}

global.hours = global.time div T_HOUR
global.minutes = (global.time div T_MINUTE) mod T_HOUR
global.seconds = global.time mod T_MINUTE
