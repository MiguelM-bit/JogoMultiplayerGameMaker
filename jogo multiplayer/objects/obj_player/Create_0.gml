/// @description

show_debug_message("aaa");
show_debug_message(player_id);


classe = "";

frames = game_get_speed(gamespeed_fps);

t_ataque = 1 * frames/2
t = t_ataque;
pode_atacar = true;

//velocidade que o player anda
vel = 5;

//gerencia para qual eixo ele esta andando
velh = 0;
velv = 0;

//vida do player
vida_max = 5;
vida = vida_max;

//pontuação
pontos = 0;



dano_ataque = 1;

level_max = 10;
level = 0;


//controle se a camera ja foi selecionado
setou_cam = false;

angle = 0;

//verefica qual player eu sou - 1 ou 2
if (player_id == 0)
{
	//seleciona o local para o spawn
	x = 320;
	y = 227;
	
	classe = "hacker";
	
	//seleciona a cor
	image_blend = c_red;
}
else if (player_id == 1)
{
	//seleciona o local para o spawn
	x = 1020;
	y = 227;
	
	classe = "robo";
	
	//seleciona a cor
	image_blend = c_blue;
}
else if (player_id == 2)
{
	//seleciona o local para o spawn
	x = 1700;
	y = 227;
	
	classe = "alien";
	
	//seleciona a cor
	image_blend = c_green;
}


//função do tiro
function atacou()
{
	
	var _hitbox = instance_create_layer(x, y, "Player", obj_hitbox);
	_hitbox.speed = 0; //define a velocidade do tiro
	_hitbox.image_angle = angle; //define a velocidade do tiro
	_hitbox.direction = angle; //definindo a direção do projetil baseado na direção que esta virado
	_hitbox.player = self; //definindo o id de quem deu o tiro
	_hitbox.classe = classe;
	_hitbox.level = level;
	
	var _efeito = instance_create_layer(x, y, "Player", obj_ataque_efeito);
	_efeito.image_angle = angle;
	_efeito.direction = angle;
	_efeito.image_blend = image_blend;
	
	pode_atacar = false;
}



//random spawn
function random_spawn()
{
	x = irandom_range(96, room_width - 96);
	y = irandom_range(96, room_height - 96);
	
	if place_meeting(x, y, obj_col) random_spawn();
}

function morreu(_x, _y)
{
	//reseta a vida
	vida = vida_max;
	
	
	//escolhe um spawn aleatorio
	random_spawn()
	
	//cria um efeito de explosao quando o tiro acerta
	effect_create_above(ef_ring, _x, _y, 2, c_red);
}