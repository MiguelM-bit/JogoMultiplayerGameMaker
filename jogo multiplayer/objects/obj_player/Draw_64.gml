/// @description

if (player_local)
{
	var _xx = 20;
	var _y = 20;
	//desenha os corações de vida
	for (var _i = 0; _i < vida; _i++) 
	{
	    draw_sprite(spr_coracao, 0, _xx, _y); // Desenha a sprite do coração
	    _xx += 35; // Ajuste a distância horizontal entre os corações
	}
	
	
	draw_text(20, _y * 4, "pontuacao: " + string(pontos));
	
	var _frames = game_get_speed(gamespeed_fps);
	draw_text(20, _y * 5, "frames: " + string(_frames));
	
	
	
}



