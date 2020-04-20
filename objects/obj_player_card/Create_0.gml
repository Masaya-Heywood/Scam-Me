/// @description Insert description here
// You can write your code in this editor

randomNum = floor(random_range(0,8));

attackValue = 0;
defenseValue = 0;
toolPhrase = "Placeholder";
healthRestore = false;
healthUse = false;
healthBonus = 10;

if (randomNum == 0){
	sprite_index = spr_card_anti_virus;
	toolPhrase = "'Antivirus' Atk: 6 | Def: 6. \n Succumbing to some popups \n is actually useful.";
	attackValue = 6;
	defenseValue = 6;
} else if (randomNum == 1){
	sprite_index = spr_card_anti_malware;
	toolPhrase = "'Antimalware' Atk: 8 | Def: 1. \n Antivirus' younger, more hip cousin.";
	attackValue = 8;
	defenseValue = 1;
} else if (randomNum == 2){
	sprite_index = spr_card_firewall;
	toolPhrase = "'Firewall' Atk: 1 | Def: 8. \n Fire not included";
	attackValue = 1;
	defenseValue = 8;
} else if (randomNum == 3){
	sprite_index = spr_card_sniffer;
	toolPhrase = "'Packet Sniffer' Atk: -3 | Def: 15. \n A basic sniffer that \n records helpful information in \n cyberdefense.";
	attackValue = -3;
	defenseValue = 15;
	
} else if (randomNum == 4){
	sprite_index = spr_card_scanner;
	toolPhrase = "'Port Scanner' Atk: 15 | Def: -3. \n Any a port in a cyberstorm!";
	attackValue = 15;
	defenseValue = -3;
	
} else if (randomNum == 5){
	sprite_index = spr_card_hard;
	toolPhrase = "'Back Up Hard Drive'  Atk: 3 | Def: 3 \n On use: +8 Health \n Hard drives like to sound tough \n but they're afraid of milk.";
	attackValue = 2;
	defenseValue = 2;
	healthUse = true;
	
} else if (randomNum == 6){
	sprite_index = spr_card_regedit;
	toolPhrase = "'RegEdit' Atk: Random | Def: Random. \n (Can Subtract) \n There's a reason why \n it gives five warnings \n before you edit.";
	attackValue = floor(random_range(-5,18));
	defenseValue = floor(random_range(-5,18));
	
} else if (randomNum == 7){
	sprite_index = spr_card_usb;
	toolPhrase = "'Back Up USB' Atk: Random | Def: Random. \n On discard & use: +4 Health \n Better than floppy disks. \n Not as fun of a name though.";
	attackValue = floor(random_range(0,3));
	defenseValue = floor(random_range(1,6));
	healthRestore = true;
	
}