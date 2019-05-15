
global.hovering_icon = false;

// Create icons

var _icon_size = 32;
var _margin = _icon_size / 4;

for(var i = 0; i < 3; i++)
{
	with(instance_create(0, 0, Icon))
	{
		index = i;
		yoff = _margin + _icon_size/2;
		xoff = _icon_size*i + _margin*(i+1) + _icon_size/2;
		image_index = i;
	}
}