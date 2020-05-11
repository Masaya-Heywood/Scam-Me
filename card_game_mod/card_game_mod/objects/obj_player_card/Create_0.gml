/// @description Insert description here
// You can write your code in this editor

randomNum = floor(random_range(0,18));

attackValue = 0;
defenseValue = 0;
toolPhrase = "Placeholder";
healthRestore = false;
healthUse = false;
sacrifice = false;
endRound = false;
restore = false;
trojan = false;
reformat = false;
ddos = false;
wipe = false;
undo = false;
VPN = false;
manual = true;
healthBonus = 10;
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
	attackValue = -5;
	defenseValue = 15;
	
} else if (randomNum == 4){
	sprite_index = spr_card_scanner;
	toolPhrase = "'Port Scanner' Atk: 15 | Def: -5. \n Any a port in a cyberstorm!";
	attackValue = 15;
	defenseValue = -5;
	
} else if (randomNum == 5){
	sprite_index = spr_card_hard;
	toolPhrase = "'Back Up Hard Drive'  Atk: 2 | Def: 2 \n On use: +8 Health \n Hard drives like to sound tough \n but they're afraid of milk.";
	attackValue = 2;
	defenseValue = 2;
	healthUse = true;
	
} else if (randomNum == 6){
	sprite_index = spr_card_regedit;
	toolPhrase = "'RegEdit' Atk: Random (-5 to 18) | Def: Random (-5 to 18). \n There's a reason why \n it gives five warnings \n before you edit.";
	attackValue = floor(random_range(-5,18));
	defenseValue = floor(random_range(-5,18));
	
} else if (randomNum == 7){
	sprite_index = spr_card_usb;
	toolPhrase = "'Back Up USB' Atk: 0 to 2| Def: 1 to 3\n On use: + 2 to 4 Health, +1 Base Defense\n Better than floppy disks. \n Not as fun of a name though.";
	attackValue = 1 + floor(random_range(0,2));
	defenseValue = 1 + + floor(random_range(1,3));
	healthRestore = true;
} else if (randomNum == 8){
	sprite_index = spr_card_support;
	toolPhrase = "'Tech Support' Atk: 5 + Random (1 to 6) | Def: 5 + Random (1 to 6). \n Subtracts health 7 health on use. \n A lot of help for the steep price of \n annoying social interactions.";
	attackValue = floor(random_range(1,6)) + 5;
	defenseValue = floor(random_range(1,6)) + 5;
	sacrifice = true;
} else if (randomNum == 9){
	sprite_index = spr_card_reboot;
	toolPhrase = "'Reboot' Atk: -15 | Def: 25 \n On use: End the round. \n Can't hack a computer that's off. \n Granted, you can't remove a virus off one either.";
	attackValue = -15;
	defenseValue = 25;
	endRound = true;
} else if (randomNum == 10){
	sprite_index = spr_card_restore;
	toolPhrase = "'System Restore' Atk: 0 | Def: 0 \n On use: +25 Health, +8 Health for Enemy \n Can't hack a computer that's off. \n Granted, you can't remove a virus off one either.";
	attackValue = 0;
	defenseValue = 0;
	restore = true;
} else if (randomNum == 11){
	sprite_index = spr_card_reformat;
	toolPhrase = "'Reformat' Atk: 4 | Def: -2 \n On use: -3 Health, -8 Health for Enemy \n Can't hack a computer that's off. \n Granted, you can't remove a virus off one either.";
	attackValue = 4;
	defenseValue = -2;
	reformat = true;
} else if (randomNum == 12){
	sprite_index = spr_card_vpn;
	toolPhrase = "'VPN' Atk: 0 | Def: 10 \n On use: +1 Base Defense \n It's like wearing a mask online!";
	attackValue = 0;
	defenseValue = 10;
	VPN = true;
} else if (randomNum == 13){
	sprite_index = spr_card_trojan;
	toolPhrase = "'Counter Trojan' Atk: 10 | Def: 0 \n On use: +1 Base Attack \n No one knows where you go this from!";
	attackValue = 10;
	defenseValue = 0;
	trojan = true;
} else if (randomNum == 14){
	sprite_index = spr_card_ddos;
	toolPhrase = "'DDoS' Atk: 10 + Random (7 - 20) | Def: 0 \n On use: -3 Base Attack \n Join the dark side. Unleash your hacker skills.";
	attackValue = 10 + floor(random_range(7,20));
	defenseValue = 0;
	ddos = true;
} else if (randomNum == 15){
	sprite_index = spr_card_wipe;
	toolPhrase = "'Deep Scan & Wipe' Atk: 0 | Def: 10 + Random (7 - 20) \n On use: -3 Base Defense \n Get that yucky stuff off your computer for once and for all.";
	attackValue = 0;
	defenseValue = 10 + floor(random_range(7,20));
	wipe = true;
} else if (randomNum == 16){
	sprite_index = spr_card_undo;
	toolPhrase = "'Undo' Atk: 0 | Def: 0 \n On use: Clears the other slots. \n Removes given stats but not 'On use' benefits. \n Refer to title.";
	attackValue = 0;
	defenseValue = 0;
	undo = true;
}  else if (randomNum == 17){
	sprite_index = spr_card_manual;
	toolPhrase = "'Operational Security Manual' Atk: 0 | Def: 0 \n On use: Gives +1 to 2 Base Attack and Defense\n 'The biggest gap in security is you.'";
	attackValue = 0;
	defenseValue = 0;
	manual = true;
}