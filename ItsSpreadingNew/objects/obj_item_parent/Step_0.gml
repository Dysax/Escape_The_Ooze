var _dist = point_distance(x, y, global.slotx, global.sloty);

//if(_dist <= speed)
//{
//speed = 0;
//}


if(_dist <= speed) {
	//snaps objects to center when close
    x = global.slotx;
    y = global.sloty;
    speed = 0;
}
