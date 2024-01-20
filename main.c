#include <stdio.h>
#include <windows.h>


typedef int (*AddNumbersFunction)(int a, int b);

int main() {
    HINSTANCE hDLL = LoadLibrary("mylib.dll");
    if (hDLL == NULL) {
        fprintf(stderr, "Unable to load DLL\n");
        return 1;
    }

    AddNumbersFunction addNumbers = (AddNumbersFunction)GetProcAddress(hDLL, "add_numbers");
    if (addNumbers == NULL) {
        fprintf(stderr, "Unable to locate the function\n");
        FreeLibrary(hDLL);
        return 1;
    }
    int result = addNumbers(3, 4);
    printf("Result: %d\n", result);

    FreeLibrary(hDLL);
    return 0;
}
