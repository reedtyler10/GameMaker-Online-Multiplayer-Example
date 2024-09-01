// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function remove_player(_sock){
	show_debug_message($"removing player: {_sock}");
	show_debug_message($"player index: {get_player(_sock)}");
	array_delete(self.pdata, get_player(_sock), 1);
}