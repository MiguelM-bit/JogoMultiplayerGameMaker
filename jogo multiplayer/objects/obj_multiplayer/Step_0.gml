/// @description 

//desabilita tudo se o jogo nao começou
if (!rollback_game_running)
{
	instance_deactivate_all(true);
}
else //jogo esta rodando
{
	instance_activate_all();
}