package handlers;

import flixel.util.FlxColor;
import flixel.FlxG;
import lime.utils.Assets;

using StringTools;

class CoolUtil
{
	public static function coolTextFile(path:String):Array<String>
	{
		var daList:Array<String> = Assets.getText(path).trim().split('\n');

		for (i in 0...daList.length)
		{
			daList[i] = daList[i].trim();
		}

		return daList;
	}

	public static function numberArray(max:Int, ?min = 0):Array<Int>
	{
		var dumbArray:Array<Int> = [];
		for (i in min...max)
		{
			dumbArray.push(i);
		}
		return dumbArray;
	}
	public static function error(error:String, name:String) {
		FlxG.stage.window.alert(error, name);
	}

	public static function stringColor(color:String) {
		if (color.contains(",")) {
			var rgbArray:Array<Int> = [];
			for (colorNum in color.split(','))
				rgbArray.push(Std.parseInt(colorNum.trim()));
			return FlxColor.fromRGB(rgbArray[0], rgbArray[1], rgbArray[2]);
		}
		return (color.startsWith("#") || color.startsWith("0x")) ? FlxColor.fromString(color) : FlxColor.fromString("#" + color);
	}
}
