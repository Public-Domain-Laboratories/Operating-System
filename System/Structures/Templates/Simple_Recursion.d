void recursion(int recursive_parameter=0){ //Recursive function
    
    if (recursive_parameter < 10) { // Base case
        recursion(recursive_parameter + 1); // Recursive call
    }
}

import std;
void main() => recursion();
 
