import std;

void Print_Directory_Paths(){
	foreach (string absolutePath; dirEntries("", SpanMode.breadth)){
		if (absolutePath.isDir && absolutePath.startsWith(".git") == false){
			writeln(absolutePath.split("\\"));
		}
	}
}

void main() => Print_Directory_Paths();