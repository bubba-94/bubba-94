# C++ Cheat Sheet

## Compiling and Running

```bash
g++ file.cpp -o <program>     # Compile program
./<program>                     # Run program
```

## Common Flags

```bash
Kopiera kod
-Wall                         # Enable common warnings
-Wextra                       # Enable extra warnings
-Werror                       # Treat warnings as errors
-g                             # Include debug info (for gdb)
-O2                            # Optimize for speed
-std=c++17                     # Use C++17 standard
```

## Basic Structure

```cpp
#include <iostream>            // Include standard I/O stream

int main() {
    std::cout << "Hello, World!" << std::endl;
    return 0;
}
```

## Input and Output
```cpp
#include <iostream>
using namespace std;

int main() {
    int age;
    cout << "Enter your age: ";
    cin >> age;
    cout << "You are " << age << " years old." << endl;
}
```

## Variables and Data Types

| Type	| Example | Description |
|-------|---------|-------------| 
|int	|int a = 10;|	Integer|
|float	|float b = 3.14;	|Floating-point|
|double	|double c = 9.81;	|Double precision|
|char	|char d = 'A';	|Character|
|bool	|bool e = true;	|Boolean|
|string	|string s = "Hi";|	|Text string (needs <string>)|

## Control Flow

### If / Else

```cpp
if (x > 10)
    cout << "Large";
else if (x > 5)
    cout << "Medium";
else
    cout << "Small";
```

### Loops
```cpp
for (int i = 0; i < 5; i++)
    cout << i << endl;

while (x > 0)
    x--;

do {
    cout << "At least once!" << endl;
} while (false);
```
### Functions
```cpp
int add(int a, int b) {
    return a + b;
}

int main() {
    cout << add(5, 3) << endl; // Output: 8
}
```
## Arrays and Vectors

### Static Array
```cpp
int nums[3] = {1, 2, 3};
```

### Dynamic Array (Vector)
```cpp
#include <vector>
#include <iostream>
using namespace std;

int main() {
    vector<int> v = {1, 2, 3};
    v.push_back(4);
    cout << v[2] << endl; // Output: 3
}
```
## Strings
```cpp
#include <string>
using namespace std;

string name = "Alice";
cout << name.size();          // Length
cout << name.substr(0, 3);    // "Ali"
cout << name + " Smith";      // Concatenation
```
## Pointers and References
```cpp
int a = 10;
int *p = &a;                  // Pointer
cout << *p;                   // Dereference

int &r = a;                   // Reference
r = 20;                       // Changes 'a' to 20
```
## Classes and Objects
```cpp
#include <iostream>
using namespace std;

class Car {
public:
    string model;
    int year;

    void honk() {
        cout << "Beep!" << endl;
    }
};

int main() {
    Car c;
    c.model = "Tesla";
    c.year = 2025;
    c.honk();
}
```
## Constructors and Destructors
```cpp
class Dog {
public:
    Dog() { cout << "Dog created\n"; }
    ~Dog() { cout << "Dog destroyed\n"; }
};
```
## Inheritance

```cpp
class Animal {
public:
    void speak() { cout << "Some sound\n"; }
};

class Dog : public Animal {
public:
    void speak() { cout << "Woof!\n"; }
};
## Templates
```cpp
template <typename T>
T add(T a, T b) {
    return a + b;
}

cout << add(3, 4);      // 7
cout << add(3.1, 2.9);  // 6.0
```
## File I/O
```cpp
#include <fstream>
using namespace std;

int main() {
    ofstream out("file.txt");
    out << "Hello file!";
    out.close();

    ifstream in("file.txt");
    string line;
    getline(in, line);
    cout << line;
}
```
## Useful Headers
| Header | Purpose |
|--------|---------|
|<iostream>|Input/output streams|
|<string>	|String handling|
|<vector>	|Dynamic arrays|
|<map>	|Key-value pairs|
|<fstream>	|File input/output|
|<algorithm>	|Sorting, searching, etc.|
|<cmath>	|Math functions|

## Debugging
```bash
g++ -g main.cpp -o main
gdb ./main
```
