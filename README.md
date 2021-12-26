# Описание
Агрегатор приютов для бездомных животных (кошек и собак). 

Позволяет сотрудникам-представителем приютов создавать персональные страницы животных и, используя десктопное GUI приложение, формировать базы данных с подробной информацией, которую затем можно загрузить на сайт.

Пользователи могут просматривать информацию о животных, вести поиск одновременно по всем приютам (например, если текущее местонахождение животного неизвестно), добавлять животных в закладки, чтобы следить за судьбой “постояльцев” нескольких разных организаций одновременно.  

## Наименование 
AnimAll

## Предметная область

Приюты для животных, благотворительность, поиск пропавших животных

# Данные
![ER Diagram blank](https://raw.githubusercontent.com/alxtt/AnimAll/main/AnimAll-BD%20.png)

### animals
name | type | constraints
--- | --- | ---
id | UNIQUIEIDENTIFIER | NOT NULL PRIMARY KEY
species | VARCHAR(32) | NOT NULL
breed | VARCHAR(32) | 
gender | BIT | NOT NULL
age | INT |
infirm | BIT |
vaccinated | BIT |
shelter_id | UNIQUIEIDENTIFIER | NOT NULL FOREIGN KEY

### users
name | type | constraints
--- | --- | ---
id | UNIQUIEIDENTIFIER | NOT NULL PRIMARY KEY
user_login | VARCHAR(32) | NOT NULL
user_password | VARCHAR(32) | NOT NULL
is_shelter | BIT | NOT NULL
is_admin | BIT | NOT NULL
user_name | VARCHAR(32) |
user_location | VARCHAR(32) |

### shelters
name | type | constraints
--- | --- | ---
id | UNIQUIEIDENTIFIER | NOT NULL PRIMARY KEY
user_id | UNIQUIEIDENTIFIER | NOT NULL FOREIGN KEY
shelter_name | VARCHAR(64) | NOT NULL
adress | VARCHAR(128) | NOT NULL
email | VARCHAR(128) |
phone | VARCHAR(32) |
website | VARCHAR(32) |

### likes
name | type | constraints
--- | --- | ---
animal_id | UNIQUIEIDENTIFIER | NOT NULL FOREIGN KEY
user_id | UNIQUIEIDENTIFIER | NOT NULL FOREIGN KEY

### comments
name | type | constraints
--- | --- | ---
animal_id | UNIQUIEIDENTIFIER | NOT NULL FOREIGN KEY
user_id | UNIQUIEIDENTIFIER | NOT NULL FOREIGN KEY
content | TEXT | NOT NULL
timedate | TIMESTAMP | NOT NULL

## Общие ограничения целостности
- Связь `one to many`: `shelters` и `animals`.
- Связь `one to one`: `likes` и `animals`, `likes` и `users`, `comments` и `animals`, `comments` и `users`, `shelters` и `users`.

# Пользовательские роли

## Пользователь (количество не ограничено)
- Авторизоваться в системе (при помощи Auth0)
- Просматривать страницы животных
- Добавлять комментарии
- Ставить “лайки” животным
- Просматривать свои “лайки”

## Сотрудник приюта (количество не ограничено)
- Все права пользователя
- Создавать страницы животных (через web-приложение)
- Загружать информацию о животных (через desktop-приложение)
- Редактировать и удалять страницы добавленных сотрудником той же организации животных
- Просматривать “лайки”, поставленные пользователями

## Администратор (более 1)
- Все права сотрудника
- Редактировать и удалять страницы всех животных
- Давать и отзывать права сотрудников приютов
- Удалять комментарии и “лайки” всех пользователей
- Удалять пользователей


# UI / API 

- UI: React (JavaScript) [Web App], Tkinter (Python) [Desktop App]
- API: Python Flask

# Технологии разработки

## Языки программирования

- Backend: Python, SQL
- Frontend: JavaScript, HTML, CSS

## СУБД

- SQL Azure (Microsoft SQL Server)
