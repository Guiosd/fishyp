package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxSubState;
import flixel.text.FlxText;
import flixel.util.FlxColor;
import lime.app.Application;

class OutdatedSubState extends FightBeatState
{
  pubilc static var LeftState:Bool = false;

  override function create()
  {
    super.create()
    var bg:FlxSprite = new FlxSprite().makeGraphic(FlxG.width, FlxG.height, FlxColor.BLACK)
    add(bg);
    var ver = "v" + Application.current.meta.get('version');
    var txt:FlxText = new FlxText(0, 0, FlxG.width,
       "HEY! You're running an outdated version of the game\nCurrent version is "
       + ver
       + " while the most recent version is"
       + itch GAME_VER
       + "! Press Space to go to Github, or ESPACE to ignore this!!",
       32)

  }
}
