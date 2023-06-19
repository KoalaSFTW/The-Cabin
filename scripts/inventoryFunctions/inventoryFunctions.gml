function InventorySearch(rootObject, itemType){
	for(var i = 0; i < INVENTORY_SLOTS; i++){
		if(rootObject.inventory[i] == itemType){
			return(i);
		}
	}
	return(-1);
}

function Remove(rootObject, itemType){
	var slot1 = InventorySearch(rootObject, itemType);
	if(slot1 != -1){
		with (rootObject) inventory[slot1] = -1;
		return true;
	}
	else return false;
}

function Add(rootObject, itemType){
	var slot1 = InventorySearch(rootObject, -1);
	if(slot1 != -1){
		with (rootObject) inventory[slot1] = itemType;
		return true;
	}
	else return false;
}

function Swap(objectFrom, slotFrom, objectTo, slotTo){
	if(global.inventoryOpened)
	{
	var itemFrom1 = objectFrom.inventory[slotFrom];
	objectFrom.inventory[slotFrom] = objectTo.inventory[slotTo];
	objectTo.inventory[slotTo] = itemFrom1;
	}
}