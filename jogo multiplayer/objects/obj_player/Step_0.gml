/// @description 


#region setando a camera
//verifica se ja existe um camera no cenario e se ela ainda nao definiu quem seguir
if instance_exists(obj_cam) && !setou_cam
{
	//verifica se sou o jogador local
	if player_local
	{
		//manda o id do jogador para a camera
		obj_cam.follow = id;
		//define que ja foi selecionado quem a camera deve seguir
		setou_cam = true;
	}
}
#endregion



//inputs
var _controle = rollback_get_input();
var _up, _down, _left, _right, _x_mouse, _y_mouse, _fire, _fire2;
_up = _controle.up;
_down = _controle.down;
_left = _controle.left;
_right = _controle.right;
_x_mouse = _controle.mb_x;
_y_mouse = _controle.mb_y;
_fire = _controle.fire_pressed;
_fire2 = _controle.fire2_pressed;

//direções que o jogador apertou para andar
velh = lerp(velh, (_right - _left) * vel, .15);
velv = lerp(velv, (_down - _up) * vel, .15);

//calcula o angulo baseado na direção do mouse
angle = point_direction(x ,y, _x_mouse, _y_mouse);

//apertou o input do tiro e roda a funcao atirou
if (_fire) && pode_atacar atacou();

if !pode_atacar
{
	t--;
	if t <= 0 
	{
		pode_atacar = true;
		t = t_ataque;
	}
	
}




//se a vida chegar a zero roda a funcao de morte
if (vida <= 0) morreu(x, y);

//freia o jogador ao chegar em um velocidade baixa
if (abs(velh)) <= .15 velh = 0;
if (abs(velv)) <= .15 velv = 0;

//move o jogador e colide
move_and_collide(velh, velv, obj_col);




