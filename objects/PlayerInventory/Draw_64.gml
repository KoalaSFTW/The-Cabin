
/*if(keyboard_check(vk_tab)){
//	global.inventoryOpened = true;
//draw_sprite_stretched
//(
sprt_inventory,
0,
x - 6,
y - 6,
12+rowLength*64,
12+(((INVENTORY_SLOTS-1)div rowLength) +1)*64
);

if(global.inventoryOpened)
for (var i = 0; i < INVENTORY_SLOTS; i++){
	var x1 = x + (i mod rowLength) * 64 + 2;
	var y1 = y + (i	 div rowLength) * 64 + 2;
	var hover = (oMouse.inventoryHover == id) && (oMouse.slotHover == i)
	draw_sprite(sprt_slot, hover, x1, y1)
	if(inventory[i] != -1){
		var alpha = 1.0;
		if((oMouse.inventoryDrag == id) && (oMouse.slotDrag == i)){ alpha = 0.5;}
		draw_set_alpha(alpha);
		draw_sprite(sprt_item_1, inventory[i], x1, y1);
		draw_set_alpha(1.0);
	} 
}
}
else
{global.inventoryOpened = false;}





