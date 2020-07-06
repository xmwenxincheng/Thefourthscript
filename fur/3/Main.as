package
{
	import flash.display.MovieClip;
	import flash.events.MouseEvent;
	import flash.display.SimpleButton;
	
	public class Main extends MovieClip
	{
		var startPage:StartPage;
		var hillPage:HillPage;
		var pondPage:PondPage;
		
		
		public function Main()
		{
			startPage=new StartPage();
			hillPage=new HillPage();
			pondPage=new PondPage();
			
			startPage.x=290;
			startPage.y=183.55;
			
			
			addChild(startPage);
			
			function onHillButtonClick(event:MouseEvent):void
			{
				hillPage.x=262.15;
			    hillPage.y=276.30;
				addChild(hillPage);
				removeChild(startPage);
			}
			function onPondButtonClick(event:MouseEvent):void
			{
				pondPage.x=272.15;
			    pondPage.y=250.30;
				addChild(pondPage);
				removeChild(startPage);
			}
			function onHillRebackButtonClick(event:MouseEvent):void
			{
				addChild(startPage);
				removeChild(hillPage);
			}
			function onPondRebackButtonClick(event:MouseEvent):void
			{
				addChild(startPage);
				removeChild(pondPage);
			}
			function onUpButton(event:MouseEvent):void
			{
				hillPage.cat.y+=1;
				addChild(hillPage);
			}
			function onDownButton(event:MouseEvent):void
			{
				hillPage.cat.y-=1;
				addChild(hillPage);
			}
			startPage.hillButton.addEventListener(MouseEvent.CLICK,onHillButtonClick);
			startPage.pondButton.addEventListener(MouseEvent.CLICK,onPondButtonClick);
			hillPage.rebackButton.addEventListener(MouseEvent.CLICK,onHillRebackButtonClick);
			pondPage.rebackButton.addEventListener(MouseEvent.CLICK,onPondRebackButtonClick);
			hillPage.upButton.addEventListener(MouseEvent.CLICK,onUpButton);
			hillPage.downButton.addEventListener(MouseEvent.CLICK,onDownButton);
			
		}
	}
}