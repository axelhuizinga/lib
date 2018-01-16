package js.jq;

/**
 * ...
 * @author axel@cunity.me
 */

extern class Accordion implements js.jquery.Plugin
{
	public var panels:Array<js.html.HtmlElement>;
	public var selector:String;
	
	@:overload(function( op:String, ?field:String, ?val:Dynamic):js.jquery.JQuery{ })
	public  function accordion(?options:Dynamic):js.jquery.JQuery;

	public  function instance(?options:Dynamic):js.jquery.JQuery;
	
}