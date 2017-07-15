package js.jQuery;

import haxe.extern.EitherType;
import jQuery.haxe.Plugin;
import js.html.Element;

/**
 * ...
 * @author axel@cunity.me
 */
extern class Template implements Plugin
{

	public function tmpl(data:Dynamic):jQuery.JQuery 
	{
		trace(data);
		return untyped this.tmpl(data);
	}
	
	public function template(name:String):JQuery
	{
		return untyped this.template(name);
	}
	
	public function tmplItem():JQuery
	{
		return untyped this.templItem();
	}
	
	public function update():JQuery
	{
		return untyped this.update();
	}
	
	static public function template(name:String, template: String):JQuery
	//static public function template(name:String, template: EitherType<String,JQuery>):JQuery
	{
		return untyped this.template(name, template);
	}
	
	static public function tmpl(compiledName:String, data:Dynamic):JQuery
	{
		return untyped this.tmpl(compiledName, data);
		//return untyped Browser.window.$.tmpl(compiledName, data);
	}
}