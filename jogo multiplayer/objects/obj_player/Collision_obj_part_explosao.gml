/// @description

//se o tiro colidiou em quem atirou nao fazer nada
//if (other.player == self) return;


//cria um efeito de explosao quando o tiro acerta
effect_create_above(ef_explosion, x, y, .3, c_red)



//diminui a vida do player que levou o tiro
vida -= granada_dano;

//se a vida do inimigo chegou a zero ganha um ponto
if (vida <= 0) && (other.player != self) other.player.pontos++;



//destroi o projetil
instance_destroy(other);


