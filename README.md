# ter-homework-5

## Задание 1

### Ошибки tflint и checkov

#### tflint

- Не указаны версии провайдеров
- Переменные описаны, но нигде не использованы
- Модули ссылаются на ветку main, вместо привязки к определенной версии

#### checkov

- ВМ имеют публичный IP
- Не назначены группы безопасности
- Модули используют ссылку на репозиторий без хэша определенной версии или тэга версии 

## Задание 2

[Ссылка на ветку terraform-05](https://github.com/RiteHist/ter-homework-5/tree/terraform-05)

Созданный бакет для tfstate:

![alt text](https://github.com/RiteHist/ter-homework-5/blob/main/media/1.PNG?raw=true)

Добавление доступа к бакету для сервисного аккаунта:

![alt text](https://github.com/RiteHist/ter-homework-5/blob/main/media/2.PNG?raw=true)

Созданная ydb для tfstate lock:

![alt text](https://github.com/RiteHist/ter-homework-5/blob/main/media/3.PNG?raw=true)

Создание таблицы:

![alt text](https://github.com/RiteHist/ter-homework-5/blob/main/media/4.PNG?raw=true)

Настройка прав доступа к ydb для сервисного аккаунта:

![alt text](https://github.com/RiteHist/ter-homework-5/blob/main/media/5.PNG?raw=true)

Переход с local бэкэнда на s3:

![alt text](https://github.com/RiteHist/ter-homework-5/blob/main/media/6.PNG?raw=true)

Файл tfstate в бакете:

![alt text](https://github.com/RiteHist/ter-homework-5/blob/main/media/7.PNG?raw=true)

Запуск `terraform apply` при ранее запущенном `terraform console`:

![alt text](https://github.com/RiteHist/ter-homework-5/blob/main/media/8.PNG?raw=true)

Разблокировка state:

![alt text](https://github.com/RiteHist/ter-homework-5/blob/main/media/9.PNG?raw=true)