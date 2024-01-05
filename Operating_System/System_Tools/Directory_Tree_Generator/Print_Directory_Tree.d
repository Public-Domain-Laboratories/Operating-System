import std;
import std.regex;
void main() {
	
    foreach (string name; dirEntries("", SpanMode.breadth))
    {
		if (name.startsWith(".git") == false){
			if (name.isDir) writeln(replaceAll(name, regex(r"[^\\]+\\","g"), "  │───")); // │─ //|____
		}
    }
}
