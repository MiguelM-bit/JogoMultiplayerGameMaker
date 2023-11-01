/// @description 

//faz sumir o mouse
window_set_cursor(cr_none);

//seleciona a sprite da mira
cursor_sprite = spr_cursor


//define os inputs
rollback_define_input(
{
	up : ord("W"),
	down : ord("S"),
	left : ord("A"),
	right : ord("D"),
	mb_x : m_axisx,
	mb_y : m_axisy,
	fire : mb_left,
	fire2 : mb_right
});

//define o jogador
rollback_define_player(obj_player, "Player");


//verifica se nao ingressou no jogo ainda
if (!rollback_join_game())
{
	//cria o jogo
	rollback_create_game(3, false, "South America");
	//true = ambiente de teste / false = ambiente real/online
	
}

