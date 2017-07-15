package js.jQuery;
import jQuery.haxe.Plugin;
import js.html.HtmlElement;
/**
 * ...
 * @author axel@paradiseprojects.de
 */
extern class Tabs implements Plugin{

	@:overload
	public function tabs( op:String, ?field:String, ?val:Dynamic):Dynamic
	{
		return untyped this.tabs(op, field, val);
	};
	
	@:overload
	public  function tabs(?options:Dynamic):JQuery
	{
		return untyped this.tabs(options);
	}
	
	public  function instance(?options:Dynamic):JQuery
	{
		return untyped this.tabs("instance");
	}	
	
}