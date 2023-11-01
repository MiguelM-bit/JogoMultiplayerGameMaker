/// @description

//se o tiro colidiou em quem atirou nao fazer nada
if (other.player == self) return;
if (other == obj_hitbox) return;




if ((other.classe == "hacker") && (self.classe == "robo")) or 
	((other.classe == "robo") && (self.classe == "alien")) or
	((other.classe == "alien") && (self.classe == "hacker")) or 
	(other.level >= level_max)
	
{

//diminui a vida do player que levou o tiro
vida -= dano_ataque;

//cria um efeito de explosao quando o tiro acerta
effect_create_above(ef_explosion, x, y, .3, c_red)

//se a vida do inimigo chegou a zero ganha um ponto
if vida <= 0 other.player.pontos++;


}


//destroi o projetil
instance_destroy(other);
