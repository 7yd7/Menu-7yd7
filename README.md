# UI Menu-7yd7
Documentation

## Getting Loadstring
```
loadstring(game:HttpGet("https://raw.githubusercontent.com/7yd7/Menu-7yd7/refs/heads/Script/basis.lua"))()
```

## Creating UI Interface button
```
getgenv().createButton({
	image = "rbxassetid://1",
	name = "Test", 
	enabled = true,
	closeOnClick = false,
	action = function(buttonData) 
		print("test")
	end
})
```

## Stop or save buttons to stop later
```
getgenv().updateAllowedButtonData({
	["Home"] = false,
})
```
<small>Default buttons script go [here](https://raw.githubusercontent.com/7yd7/Menu-7yd7/refs/heads/Script/Create/buttons.lua) Type the name of the button that will be made invisible.</small>

## Creating UI Universal Scripts button
```
getgenv().createScriptButton({
	name = "Test Print ( TEST RUN !!)",
	author = "Test author",
	color = Color3.fromRGB(35, 35, 35),
	action = function() 
		print("Test") 
	end
})
```

## Update the existing CONFIG
```
getgenv().updateConfig({
	OPEN_KEY = Enum.KeyCode.F8,
        ButtonHeight = 40,
        Height = 60,
})
<small>More [here](https://raw.githubusercontent.com/7yd7/Menu-7yd7/refs/heads/Script/GUIS/List.lua) Line 40</small>
