/*
    Koodous Community Public Rule. Create your own rules to detect malware 
    for android at: https://koodous.com/
    
    Author: plusvic
    Rule name: New Ruleset
    Rule id: 438
    Created at: 2015-04-27 10:55:13
    Updated at: 2015-04-27 11:06:41
    
    Rating: #0
    Total detections: 0
*/

rule silent_banker : banker
{
	meta:
		description = "This is just an example"
		thread_level = 3
		in_the_wild = true

	strings:
		$a = {6A 40 68 00 30 00 00 6A 14 8D 91}
		$b = {8D 4D B0 2B C1 83 C0 27 99 6A 4E 59 F7 F9}
		$c = "UVODFRYSIHLNWPEJXQZAKCBGMT"

	condition:
		$a or $b or $c
}