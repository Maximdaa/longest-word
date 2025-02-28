# Компилятор
CC = gcc

# Флаги компиляции
CFLAGS = -Wall -Wextra -std=c11

# Название исполняемого файла
TARGET = longest-word

# Исходные файлы
SRCS = main.c

# Объектные файлы (получаются из .c)
OBJS = $(SRCS:.c=.o)

# Сборка проекта
all: $(TARGET)

# Компоновка (собираем исполняемый файл)
$(TARGET): $(OBJS)
	$(CC) $(CFLAGS) -o $(TARGET) $(OBJS)

# Компиляция каждого .c в .o
%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

# Очистка (удаляем .o и бинарник)
clean:
	rm -f $(OBJS) $(TARGET)

# Установка в /usr/local/bin
install: $(TARGET)
	sudo cp $(TARGET) /usr/local/bin/

# Удаление установленного файла
uninstall:
	sudo rm -f /usr/local/bin/$(TARGET)
