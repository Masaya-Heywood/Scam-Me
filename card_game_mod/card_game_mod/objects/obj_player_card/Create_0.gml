/// @description Insert description here
// You can write your code in this editor

randomNum = floor(random_range(0,12));

attackValue = 0;
defenseValue = 0;
toolPhrase = "Placeholder";
healthRestore = false;
healthUse = false;
sacrifice = false;
endRound = false;
restore = false;
healthBonus = 10;
global.usbCount = 2;
depth = 20

if (randomNum == 0){
	sprite_index = spr_card_anti_virus;
	toolPhrase = "'Antivirus' Atk: 6 | Def: 6. \n Succumbing to some popups \n is actually useful.";
	attackValue = 6;
	defenseValue = 6;
} else if (randomNum == 1){
	sprite_index = spr_card_anti_malware;
	toolPhrase = "'Antimalware' Atk: 8 | Def: 1 \n Antivirus' younger, more hip cousin.";
	attackValue = 8;
	defenseValue = 1;
} else if (randomNum == 2){
	sprite_index = spr_card_firewall;
	toolPhrase = "'Firewall' Atk: 1| Def: 8. \n Fire not included";
	attackValue = 1;
	defenseValue = 8;
} else if (randomNum == 3){
	sprite_index = spr_card_sniffer;
	toolPhrase = "'Packet Sniffer' Atk: -5 | Def: 15. \n A basic sniffer that \n records helpful information in \n cyberdefense.";
	attackValue = 5;
	defenseValue = -5;
	
} else if (randomNum == 4){
	sprite_index = spr_card_scanner;
	toolPhrase = "'Port Scanner' Atk: 15 | Def: -5. \n Any a port in a cyberstorm!";
	attackValue = 1;
	defenseValue = 1;
	
} else if (randomNum == 5){
	sprite_index = spr_card_hard;
	toolPhrase = "'Back Up Hard Drive'  Atk: 2 | Def: 2 \n On use: +8 Health \n Hard drives like to sound tough \n but they're afraid of milk.";
	attackValue = 2;
	defenseValue = 2;
	healthUse = true;
	
} else if (randomNum == 6){
	sprite_index = spr_card_regedit;
	toolPhrase = "'RegEdit' Atk: Random | Def: Random. \n (Can Subtract) \n There's a reason why \n it gives five warnings \n before you edit.";
	attackValue = floor(random_range(-5,15));
	defenseValue = floor(random_range(-5,15));
	
} else if (randomNum == 7){
	sprite_index = spr_card_usb;
	toolPhrase = "'Back Up USB' Atk: -2 | Def: -2 \n On use: + 2 to 7 Health \n Better than floppy disks. \n Not as fun of a name though.";
	attackValue = -2;
	defenseValue = -2;
	healthRestore = true;
} else if (randomNum == 8){
	sprite_index = spr_back;
	toolPhrase = "'Tech Support' Atk: 4 + Random | Def: 4 + Random. \n Subtracts health 7 health on use. \n A lot of help for the steep price of \n annoying social interactions.";
	attackValue = floor(random_range(1,6)) + 4;
	defenseValue = floor(random_range(1,6)) + 4;
	sacrifice = true;
} else if (randomNum == 9){
	sprite_index = spr_back;
	toolPhrase = "'Reboot' Atk: -15 | Def: 25 \n On use: End the round. \n Can't hack a computer that's off. \n Granted, you can't remove a virus off one either.";
	attackValue = -15;
	defenseValue = 25;
	endRound = true;
} else if (randomNum == 10){
	sprite_index = spr_back;
	toolPhrase = "'System Restore' Atk: 0 | Def: 0 \n On use: +25 Health, +10 Health for Enemy \n Can't hack a computer that's off. \n Granted, you can't remove a virus off one either.";
	attackValue = -15;
	defenseValue = 25;
	restore = true;
} else if (randomNum == 11){
	sprite_index = spr_back;
	toolPhrase = "'Reformat' Atk: 2 | Def: -2 \n On use: -4 Health, -8 Health for Enemy \n Can't hack a computer that's off. \n Granted, you can't remove a virus off one either.";
	attackValue = -15;
	defenseValue = 25;
	restore = true;
}