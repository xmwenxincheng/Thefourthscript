package 
{

	import flash.display.MovieClip;
	import flash.events.MouseEvent;

	public class main extends MovieClip
	{
		var startPage:StartPage;
		var hillPage:HillPage;
		var pondPage:PondPage;

		public function main()
		{
			startPage= new StartPage();
			hillPage= new HillPage();
			pondPage= new PondPage();
			
			startPage.x=110;
			startPage.y=85;
			hillPage.x=116.5;
			hillPage.y=30;
			pondPage.x=120;
			pondPage.y=110;
			addChild(startPage);



			startPage.hill.addEventListener(MouseEvent.CLICK,onHillButtonClick);
		    startPage.pond.addEventListener(MouseEvent.CLICK,onPondButtonClick);
            hillPage.back.addEventListener(MouseEvent.CLICK,onhillBackClick);
            pondPage.back.addEventListener(MouseEvent.CLICK,onpondBackClick);
			function onHillButtonClick(event:MouseEvent):void
			{
				addChild(hillPage);
				removeChild(startPage);
			}

			function onPondButtonClick(event:MouseEvent):void
			{
				addChild(pondPage);
				removeChild(startPage);
			}

             function onhillBackClick(event:MouseEvent):void
			{
				addChild(startPage);
				removeChild(hillPage);
			}
			  function onpondBackClick(event:MouseEvent):void
			{
				addChild(startPage);
				removeChild(pondPage);
			}

		}


	}

}