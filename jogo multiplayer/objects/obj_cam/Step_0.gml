/// @description 


//verfica se alguem ja foi seleciona para seguir
if (follow != noone)
{
	//passa a posição do jogador
	x_to = follow.x;
	y_to = follow.y;
}

//move a camera
var _acel = .15;
x = lerp(x, x_to, _acel);
y = lerp(y, y_to, _acel);



