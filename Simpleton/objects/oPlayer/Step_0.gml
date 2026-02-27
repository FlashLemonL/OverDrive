ysp += 0.1
xsp = 0

if keyboard_check(vk_left)
{
        xsp = -1
}

if keyboard_check(vk_right)
{
        xsp = +1
}

if place_meeting(x, y+1, oBlock)
{
        ysp = 0
        if keyboard_check(vk_up)
        {
                ysp = -2.45
				
        }
}

move_and_collide(xsp, ysp, oBlock)

if (place_meeting(x, y, oPortal))
{
	room_goto_next();
	
}
if (place_meeting(x, y, oObstacle))
{
    room_restart();
}
if (place_meeting(x, y, oPortal2))
{
	x=oPortal3.x
	y=oPortal3.y-16
	
}
if (place_meeting(x, y, oEnd))
{
	room_goto(Room3);
	
}