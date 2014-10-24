package
{
	
	import flash.display.Bitmap;
	import flash.utils.Dictionary;
	
	import starling.textures.Texture;

	public class Assets
	{
			[Embed(source="../media/graphics/bgWelcome.jpg")]
			public static const BgWelcome:class;
		
		
			[Embed(source="../media/graphics/welcome_hero.png")]
			public static const WelcomeHero:class;
				
				
			[Embed(source="../media/graphics/welcome_title.png")]
			public static const WelcomeTitle:class;
		
			[Embed(source="../media/graphics/welcome_playButton.png")]
			public static const WelcomePlayBtn:class;
		
		
			[Embed(source="../media/graphics/welcome_aboutButton.png")]
			public static const WelcomeAboutBtn:class;
		
			
			private static var gameTextures:Dictionary = new Dictionary();
			
			public static function getTexture(name:String):Texture
			{
				if (gameTextures[name] == undefined)
				{	
					
					var bitmap:Bitmap = new Assets[name]();
					gameTextures[name] = Texture.fromBitmap(bitmap);
						
				}
				
				return gameTextures[name];
		
		
		
		
		
		
		}
	}
}