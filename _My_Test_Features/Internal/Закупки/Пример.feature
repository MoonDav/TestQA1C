﻿#language: ru

@tree

Функционал: <описание фичи>

Как <Роль> я хочу
<описание функционала> 
чтобы <бизнес-эффект>   

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: <описание сценария>
* Подготовка тестовых данных
	И я загружаю константы
	
	И Создание документа Поступления товаров
	И Проверка наличия в справочнике номенклатуры Торт
	
