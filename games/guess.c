
#include <stdio.h>
#include <time.h>

int main() {
	const int kMin = 1;
	const int kMax = 10;
	
	srand(time(NULL));
	
	int number = (rand() % ((kMax - kMin)+1)) + kMin;
	int tries = 0;
	int guess= -1;
	
	
	printf("I'm thinking of a number between %d and %d.\n", kMin, kMax);
	printf("Can you think of the number?\n");
	printf("Take a Guess: ");
	scanf("%d", &guess);
	tries++;
	
	while(guess != number) {
		printf("Nope, try again: ");
		scanf("%d", &guess);
		tries++;
	}
	
	if(guess == number) {
		if(tries == 1) {
			printf("Wow, you got it on the first try. Wasn't that fun!\n");
		} else if(tries == 3) {
			printf("You got it. I guess third times the charm.\n");
		} else if (tries == 7) {
			printf("Seven wonders. Seven sins. Seven attempts. Awesome tenacity!");
		} else if(tries == (kMax - kMin)+1) {
			printf("You're really good at the art of elimination.\n");
		} else if(tries > (kMax - kMin)+2) {
			printf("You finally got it, but I think you need your memory checked.\n");
		} else {
			printf("Yep, it was %d. How did you know?\n", number);	
		}
		
		printf("Thanks for playing. bye bye now.\n");
	}
	
	
	return 0;
}