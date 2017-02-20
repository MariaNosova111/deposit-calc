#include <stdio.h>

int main(void) {
    int duration;
    float investment;

    printf("Enter investment duration: ");
    scanf("%d", &duration);
    
    if (duration < 0 || duration > 365) {
        printf("Invalid input, exit");
        return 1;
    }

    printf("Enter investment amount: ");
    scanf("%f", &investment);

      if (investment < 0.0) {
        printf("Invalid  input, exit");
        return 1;
    }
    return 0;
}
