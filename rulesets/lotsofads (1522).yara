/*
    Koodous Community Public Rule. Create your own rules to detect malware 
    for android at: https://koodous.com/
    
    Author: _hugo_gonzalez_
    Rule name: LotsofAds
    Rule id: 1522
    Created at: 2016-06-16 20:06:04
    Updated at: 2016-06-16 20:16:07
    
    Rating: #3
    Total detections: 43355
*/

rule LotsofAds
{
	meta:
		description = "This rule detects apps with lots of ads"
		

	strings:
		
        $aa = "com.vungle.publisher.FullScreenAdActivity"
		$ab = "com.inmobi.rendering.InMobiAdActivity"
		$ac = "com.amazon.device.ads.AdActivity"
		$ad = "com.yandex.mobile.ads.AdActivity"
		$ae = "com.mopub.common.MoPubBrowser"
		$af = "com.facebook.ads.InterstitialAdActivity"
		$ag = "com.unity3d.ads.android.view.UnityAdsFullscreenActivity"
		$ai = "com.google.android.gms.ads.AdActivity"
		$aj = "com.startapp.android.publish.AppWallActivity"
		$ak = "com.jirbo.adcolony.AdColonyFullscreen"
		$al = "com.unity3d.ads.android2.view.UnityAdsFullscreenActivity"
		$an = "com.startapp.android.publish.FullScreenActivity"
		$ao = "com.jirbo.adcolony.AdColonyOverlay"
		$ap = "org.nexage.sourcekit.mraid.MRAIDBrowser"
		$aq = "com.appodeal.ads.networks.vpaid.VPAIDActivity"
		$as = "com.appodeal.ads.InterstitialActivity"
		$at = "com.startapp.android.publish.list3d.List3DActivity"
		$au = "com.appodeal.ads.VideoActivity"
		$av = "org.nexage.sourcekit.vast.activity.VPAIDActivity"
		$aw = "com.appodeal.ads.networks.SpotXActivity"
		$ax = "org.nexage.sourcekit.vast.activity.VASTActivity"
		$az = "com.startapp.android.publish.OverlayActivity"
		$ba = "com.appodeal.ads.LoaderActivity"
		$bc = "ru.mail.android.mytarget.ads.MyTargetActivity"
		$bd = "com.flurry.android.FlurryFullscreenTakeoverActivity"
		$be = "com.google.android.gms.ads.purchase.InAppPurchaseActivity"
		$bfa = "com.jirbo.adcolony.AdColonyBrowser"
		$bha = "com.mopub.mobileads.MoPubActivity"
		$bia = "com.applovin.adview.AppLovinInterstitialActivity"
		$bja = "com.mopub.mobileads.MraidVideoPlayerActivity"
		$bka = "com.mopub.mobileads.MraidActivity"

condition:

		20 of them
}
