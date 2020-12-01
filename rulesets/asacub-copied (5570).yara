/*
    Koodous Community Public Rule. Create your own rules to detect malware 
    for android at: https://koodous.com/
    
    Author: doopel23
    Rule name: Asacub - Copied
    Rule id: 5570
    Created at: 2019-05-31 13:37:26
    Updated at: 2019-12-16 10:57:37
    
    Rating: #0
    Total detections: 2
*/

import "androguard"


rule android_asacub
{
	meta:
		description = "Yara detection for Asacub"
		sample = "bca3c9fa1b81e1c325b2e731369bfdacda3149ca332c7411aeda9ad9c0c6a30c"

	strings:
		$str_1 = "res/xml/da.xml"
		$str_2 = "resources.arscPK"

		
	condition:		
		
		androguard.package_name("com.system.tossl") and
		androguard.activity(/\.MAC/) and 
		androguard.receiver(/\.BootReciv/) and 
		androguard.service(/\.IMService/) or 
		
		androguard.permission(/android.permission.INTERNET/) and
		androguard.permission(/android.permission.SEND_SMS/) and
		androguard.permission(/android.permission.KILL_BACKGROUND_PROCESSES/) and
		androguard.permission(/android.permission.RECEIVE_BOOT_COMPLETED/) and
		
		all of ($str_*)
}