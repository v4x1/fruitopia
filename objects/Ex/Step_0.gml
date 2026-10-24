if (global.paused) exit; // Skip movement if paused

right_key = keyboard_check(vk_right);
left_key = keyboard_check(vk_left);
up_key = keyboard_check(vk_up);
down_key = keyboard_check(vk_down);

xspd = (right_key - left_key) * mvspd;
yspd = (down_key - up_key) * mvspd;

if ((yspd == 0) and (xspd == 0)) { face = STAND }
else
{
    if yspd == 0
    {
        if xspd > 0 { face = RIGHT };
        if xspd < 0 { face = LEFT };
    };
    if xspd == 0
    {
        if yspd > 0 { face = DOWN };
        if yspd < 0 { face = UP };  
    };
};

if place_meeting(x + xspd, y + yspd, Stone_wall) == true
{
    yspd = 0;
    xspd = 0;
}

x += xspd;
y += yspd;

sprite_index = sprite[face];

depth = -bbox_bottom;