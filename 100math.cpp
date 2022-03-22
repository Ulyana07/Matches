#include "function.h"


using namespace std;

const int InitialCount = 100;

int main() {
    setlocale(LC_ALL, "Russian");
    srand(time(0));
    system("cls");

    int variant;

    do {
        print_menu();
        cin >> variant;

        switch (variant) {
        case 1:
            prav();
            break;

        case 2:
            game();
            break;

        }

    } while (variant != 3);

    return 0;
}

