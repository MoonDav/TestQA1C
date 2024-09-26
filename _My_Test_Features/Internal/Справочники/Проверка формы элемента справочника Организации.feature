﻿#language: ru

@tree
@SmokeTest

Функционал: проверка формы элемента справочника Организации

Как Тастировщик я хочу
проверить доступность вкладок Налоги и Валюты
чтобы убедиться, что пользователь не ошибется при вводе данных

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: проверка доступности вкладок Нагоги и Валюты в справочнике Организаций

	* Открытие элемента справочника Организации
		И В командном интерфейсе я выбираю "Справочники" "Организации"
		Тогда открылось окно "Организации"
		И я нажимаю на кнопку с именем 'FormCreate'
		Тогда открылось окно "Организация (создание)"
	* Установка галочки "Наша компания" и проверка присутствия на форме Валют и Налогов
		И я устанавливаю флаг с именем 'OurCompany'
		И элемент формы с именем 'GroupCurrencies' присутствует на форме
		И элемент формы с именем 'GroupTaxes' присутствует на форме
	* Снятие галочки "Наша компания" и проверка отсутствия на форме Валют и Налогов
		И я снимаю флаг с именем 'OurCompany'
		И элемент формы с именем 'GroupCurrencies' существует и невидим на форме
		И элемент формы с именем 'GroupTaxes' существует и невидим на форме		
