#!/bin/bash

# Список вебсайтів
websites=(
  "https://google.com"
  "https://facebook.com"
  "https://twitter.com"
)

# Файл логів
log_file="website_status.log"

# Очищення файлу логів перед записом
> "$log_file"

# Перевірка доступності сайтів
for site in "${websites[@]}"; do
  response=$(curl -s -o /dev/null -w "%{http_code}" -L "$site")
  if [ "$response" -eq 200 ]; then
    echo "$site is UP" >> "$log_file"
  else
    echo "$site is DOWN" >> "$log_file"
  fi
done

# Виведення повідомлення про завершення роботи
echo "Результати записано у файл логів: $log_file"
