# Описание
Сайт-агрегатор приютов для бездомных животных. 

Позволяет просматривать страницы животных, находящихся в различных приютах, зарегистрированных в системе через сотрудника-представителя, вести поиск одновременно по всем приютам (поиск по имени, возрасту, окрасу и породе животного, если его текущее местонахождение неизвестно).

Пользователи могут просматривать информацию о животных, находящихся в разных приютах, добавлять животных в закладки, чтобы следить за судьбой “постояльцев” нескольких разных организаций одновременно, просматривать реквизиты организаций, чтобы пожертвовать средства приютам или конкретным животным и отправлять запросы, чтобы забрать животное.  

## Наименование 
AnimAll

## Предметная область

Приюты для животных, благотворительность, поиск пропавших животных

# Данные
![ER Diagram blank](https://github.com/alxtt/AnimAll-BD/blob/main/er-diagram.png)

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
likes | BIT | NOT NULL

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
- Просматривать страницы животных
- Добавлять комментарии
- Ставить “лайки” животным
- Просматривать свои “лайки”
- Отправлять запросы в приюты

## Сотрудник приюта (количество не ограничено)
- Все права пользователя
- Добавлять страницы животных
- Редактировать и удалять страницы добавленных сотрудником той же организации животных
- Просматривать “лайки”, поставленные пользователями
- Отправлять “жалобы” на поведение пользователей

## Администратор (более 1)
- Все права сотрудника
- Редактировать и удалять страницы всех животных
- Давать и отзывать права сотрудников приютов
- Удалять комментарии и “лайки” всех пользователей
- Удалять пользователей


# UI / API 

- UI: React (JavaScript)
- API: SQLAlchemy (Python Flask)

# Технологии разработки

## Языки программирования

- Backend: Python, SQL
- Frontend: JavaScript, HTML, CSS

## СУБД

- SQL Azure (Microsoft SQL Server)
