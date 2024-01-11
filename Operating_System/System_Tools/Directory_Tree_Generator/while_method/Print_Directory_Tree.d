import std;

void Print_Directory_Paths(){
	foreach (string relativePath; dirEntries("", SpanMode.breadth)){
		if (relativePath.isDir && relativePath.startsWith(".git") == false){
			string[] deconstructed_path = relativePath.split(std.path.dirSeparator); // Needs to know if path is last within the folder. If it is: include round symbol.
			foreach (member; deconstructed_path){
				
				if (member == deconstructed_path.back){ 
					write("├───"); 
					write(member); 
					write("\n"); 
					deconstructed_path.popFront();

				}  		
				else { 
					write("│   ");
				}

			}
			//if (deconstructed_path.empty){write("|");}			
		}
	}
}

void main() => Print_Directory_Paths();