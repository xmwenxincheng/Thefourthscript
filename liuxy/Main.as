package 
{
import flash.display.MovieClip;
import flash.events.MouseEvent;
	public class Main extends MovieClip
	{

		var startPage:StartPage;
		var hillPage:HillPage;
		var pondPage:PondPage;

		public function Main()
		{
			// constructor code
			startPage = new StartPage();
			hillPage=new HillPage();
			pondPage=new PondPage();
			addChild(startPage);
			
			startPage.hillButtom.addEventListener(MouseEvent.CLICK,onHillButtonClick);
			startPage.pondButtom.addEventListener(MouseEvent.CLICK,onPondButtonClick);
			
			function onHillButtonClick(event:MouseEvent):void{
				addChild(hillPage);
				removeChild(startPage);
			}
			function onPondButtonClick(event:MouseEvent):void{
				addChild(pondPage);
				removeChild(startPage);
			}
			
			hillPage.backToStartButton.addEventListener(MouseEvent.CLICK,onBackButtonClick);
			pondPage.backToStartButton.addEventListener(MouseEvent.CLICK,onBackButtonClick);
			
			function onBackButtonClickHill(event:MouseEvent):void{
				addChild(startPage);
				removeChild(hillPage);
			}
			function onBackButtonClickPond(event:MouseEvent):void{
				addChild(startPage);
				removeChild(pondPage);
			}
		}

	}

}