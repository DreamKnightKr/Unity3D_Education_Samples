﻿import UnityEngine

class TextVisibleControl (MonoBehaviour): 
	public objText_Editor as GameObject
	public objText_Window as GameObject
	public objText_iOS as GameObject
	public objText_Android as GameObject
    
	def Start ():
		if Application.isEditor:
			objText_Editor.SetActive(true)
		
		// No 'switch' in Boo
		if RuntimePlatform.WindowsPlayer == Application.platform:
    		objText_Window.SetActive(true) // Will Show On exe Build
    	elif RuntimePlatform.IPhonePlayer == Application.platform:
    		objText_iOS.SetActive(true) // Will Show On exe Build
    	if RuntimePlatform.Android == Application.platform:
    		objText_Android.SetActive(true) // Will Show On exe Build
	
	def Update ():
		pass