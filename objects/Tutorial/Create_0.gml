
// Depth
depth = DEP_TUTORIAL;

// Center on screen
alarm[0] = 2;

// Make text
var _text = [];
var _ind = 0;
_text[_ind++] = "Left-click: Place/select node";
_text[_ind++] = "Left-click (held): Move node";
_text[_ind++] = "Right-click: Edit node";
_text[_ind++] = "Delete: Delete selected node";
_text[_ind++] = "Middle-click (held): Pan view";
_text[_ind++] = "Scroll wheel: Zoom view";
_text[_ind++] = "Double click a node then click another node to link them.";
text = "";
for(var i = 0; i < array_length_1d(_text); i++)
	text += _text[i]+"\n";

// Scale of text
scale = 1;