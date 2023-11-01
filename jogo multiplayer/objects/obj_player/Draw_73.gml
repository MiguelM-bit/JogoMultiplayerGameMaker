/// @description

draw_set_font(fnt_font1);

//desenha na tela a pontuação
//draw_text(x, y - 32, "pontuacao: " + string(pontos));

//desenha na tela a vida
//draw_text(x, y - 52, "vida: " + string(vida));

//escreve a classe
//draw_text(x, y - 72, "classe: " + classe);



if (player_local)
{
	//desenhando a fog
	draw_sprite(spr_fog, 0, x, y);
}

