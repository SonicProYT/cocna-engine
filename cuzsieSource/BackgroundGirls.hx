package;

import flixel.FlxSprite;
import flixel.graphics.frames.FlxAtlasFrames;

// For the week 6 BG Girls
class BackgroundGirls extends FlxSprite
{
	public function new(x:Float, y:Float)
	{
		super(x, y);

		// BG fangirls dissuaded
		frames = Paths.getSparrowAtlas('weeb/bgFreaks','week6');

		animation.addByIndices('danceLeft', 'BG girls group', Utility.numberArray(14), "", 24, false);
		animation.addByIndices('danceRight', 'BG girls group', Utility.numberArray(30, 15), "", 24, false);

		animation.play('danceLeft');
	}

	var danceDir:Bool = false;

	public function getScared():Void
	{
		animation.addByIndices('danceLeft', 'BG fangirls dissuaded', Utility.numberArray(14), "", 24, false);
		animation.addByIndices('danceRight', 'BG fangirls dissuaded', Utility.numberArray(30, 15), "", 24, false);
		dance();
	}

	public function dance():Void
	{
		danceDir = !danceDir;

		if (danceDir)
			animation.play('danceRight', true);
		else
			animation.play('danceLeft', true);
	}
}