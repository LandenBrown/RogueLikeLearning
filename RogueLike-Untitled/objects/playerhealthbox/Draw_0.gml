draw_sprite(HealthBoxBar, 0, x,y);



with (Player){
	
draw_text_ext(x,y, "Player Health" + string(Player.Player_Health) + "/" + string(Player.Player_Max_Health), 15, 150)
}