inventoryHover = -1;
slotHover = -1;
inventoryDrag = -1;
slotDrag = -1;
itemDrag = -1;

mouseOver = function(){
	if(global.inventoryOpened == true)
	{
	slotHover = -1;
	inventoryHover = -1;
	
	var mx = mouse_x;
	var my = mouse_y;
	
	with (PlayerInventory){
		if (point_in_rectangle(
		mx,
		my,
		x-6,
		y-6,
		x-6 + 12 + rowLength*64,
		y-6 + 12+(((INVENTORY_SLOTS-1) div rowLength)+1)*64
		)){
			for(var i = 0; i < INVENTORY_SLOTS; i++){
				var x1 = x + (i mod rowLength) * 64 + 2;
				var y1 = y + (i div rowLength) * 64 + 2;
				draw_sprite(sprt_slot, 0, x1, y1)
				if(point_in_rectangle(mx, my, x1, y1, x1 + 32, y1 + 32)){
				other.slotHover = i;
				other.inventoryHover = id;
				}  
			}
			}
		}
	}
}

stateFree = function(){
	if(global.inventoryOpened==true)
	{
	mouseOver();
	if(mouse_check_button(mb_left)) && (slotHover != -1) && (inventoryHover.inventory[slotHover] != -1){
	state = stateDrag;
	itemDrag = inventoryHover.inventory[slotHover];
	inventoryDrag = inventoryHover;
	slotDrag = slotHover;
	}
	} 
}

stateDrag = function(){
	if(global.inventoryOpened)
	{
	mouseOver();
	if(!mouse_check_button(mb_left)){
		if(slotHover != -1) Swap(inventoryDrag,slotDrag,inventoryHover, slotHover)
	
		state = stateFree;
		itemDrag = -1;
		inventoryDrag = -1;
		slotDrag = -1
	}
	}
}

state = stateFree; 