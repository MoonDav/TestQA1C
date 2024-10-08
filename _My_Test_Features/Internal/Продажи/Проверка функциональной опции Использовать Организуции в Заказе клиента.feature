﻿#language: ru

@tree

Функционал: Проверка функциональной опции Использовать Организуции в Заказе клиента

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: Проверка функциональной опции Использовать Организуции в Заказе клиента (Выключена)

	* Опция "Использовать организации" выключена
		Дано я устанавливаю в константу "UseCompanies" значение "False"
		И В командном интерфейсе я выбираю "Продажи" "Заказы покупателей"
		Тогда открылось окно "Заказы покупателей"
		И я нажимаю на кнопку с именем 'FormCreate'
		Тогда элемент формы с именем "Company" отсутствует на форме
		И я закрываю все окна клиентского приложения

Сценарий: Проверка функциональной опции Использовать Организуции в Заказе клиента (Включена)

	* Опция "Использовать организации" включена
		Дано Я устанавливаю в константу "UseCompanies" значение "True"
		И я закрываю все окна клиентского приложения
		И В командном интерфейсе я выбираю "Продажи" "Заказы покупателей"
		Тогда открылось окно "Заказы покупателей"
		И я нажимаю на кнопку с именем 'FormCreate'
		Тогда элемент формы с именем "Company" присутствует на форме
		И я закрываю все окна клиентского приложения
		

