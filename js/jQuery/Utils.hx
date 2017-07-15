package js.jQuery;
import jQuery.haxe.Plugin;
import js.html.HtmlElement;


/**
 * ...
 * @author axel@cunity.me
 */
extern class Utils implements Plugin
{
	static public function fileDownload(url:String, options:Dynamic):JQueryStatic
	{
		return untyped Browser.window.fileDownload(url, options);
	}
}