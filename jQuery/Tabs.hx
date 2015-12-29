package jQuery;
import jQuery.haxe.Plugin;
import js.html.HtmlElement;

/**
 * ...
 * @author axel@cunity.me
 */
extern class Tabs implements Plugin
{
	public var panels:Array<js.html.HtmlElement>;
	public var selector:String;
	
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
	
	@:overload
	public  function instance(?options:Dynamic):JQuery
	{
		return untyped this.tabs("instance");
	}	
	
}