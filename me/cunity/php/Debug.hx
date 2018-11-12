package me.cunity.php;
import haxe.PosInfos;
#if (haxe_ver >= 4)
import php.Syntax;
#end
import php.Web;

@:keep
class Debug
{
	public static var logFile:String;
	
	public static function dump(message:Dynamic , stackPos:UInt=0):Void
	{
		untyped Syntax.code('edump({0}, {1})', message, stackPos);
	};	
	
	public static function _trace(v : Dynamic, ?i : PosInfos)
	{
		var info:String = if( i != null ) i.fileName+":"+i.methodName +":"+i.lineNumber+":" else "";		
		//untyped __call__('edump',  info + ':' + v);
		//untyped __call__('error_log',  info + ':' + v);
		#if (haxe_ver >= 4)
		Syntax.code(
			'file_put_contents({0}, {1}, FILE_APPEND)', 
			logFile,  
			info + ':' + ( Std.is(v, String) || Std.is(v, Int) || Std.is(v, Float)  ? v : Syntax.code('print_r({0}, {1})', v, 1)) + '\n'
		);
		#else
		untyped __call__('file_put_contents', v, 
			info+ ':' + ( Std.is(v, String) || Std.is(v, Int) || Std.is(v, Float)  ? v : untyped __call__('print_r', v, 1)) + '\n',
		'FILE_APPEND');
		#end
		//
	}
	
	public static function safeLog(m:String):String
	{
		//m = ~/ TODO: FILTER PASSWORDS
		return m;
	}
	
}