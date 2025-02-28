#include <stdio.h>
#include <string.h>
#include <stdlib.h>

#define MAX_WORDS 100
#define MAX_LENGTH 100

// Функция для нахождения самого длинного слова в строке
void find_longest_words(char *sentence, char *result) {
    char *words[MAX_WORDS];
    int max_length = 0, word_count = 0;

    char *token = strtok(sentence, " ");
    while (token) {
        int len = strlen(token);
        if (len > max_length) {
            max_length = len;
            word_count = 0;
        }
        if (len == max_length) {
            words[word_count++] = token;
        }
        token = strtok(NULL, " ");
    }

    for (int i = 0; i < word_count; i++) {
        strcat(result, words[i]);
        if (i != word_count - 1) strcat(result, " ");
    }
}

int main() {
    char text[256], result[256] = "";
    printf("Введите текст: ");
    fgets(text, sizeof(text), stdin);

    find_longest_words(text, result);
    printf("Самые длинные слова: %s\n", result);

    return 0;
}
