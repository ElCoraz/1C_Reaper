﻿//*****************************************************************************************
&НаСервере
Процедура ОчиститьНаСервере()

	ЗначенияПроцедурФункций = РегистрыСведений.ЗначенияПроцедурФункций.СоздатьНаборЗаписей();
	
	ЗначенияПроцедурФункций.Записать();

КонецПроцедуры
//*****************************************************************************************
&НаКлиенте
Процедура Очистить(Команда)
	
	ОчиститьНаСервере(); 
	
	Элементы.Список.Обновить();
	
КонецПроцедуры
//*****************************************************************************************
&НаСервере
Процедура ПриСозданииНаСервере(Отказ, СтандартнаяОбработка)
	
	Запрос = Новый Запрос("ВЫБРАТЬ
	|	ПроцедурыФункции.Адрес КАК Адрес,
	|	ПроцедурыФункции.Наименование КАК Наименование
	|ИЗ
	|	РегистрСведений.ПроцедурыФункции КАК ПроцедурыФункции
	|
	|УПОРЯДОЧИТЬ ПО
	|	Наименование
	|АВТОУПОРЯДОЧИВАНИЕ");
	
	Выборка = Запрос.Выполнить().Выбрать();
	
	Пока Выборка.Следующий() Цикл
		
		Элементы.ПроцедураФункция.СписокВыбора.Добавить(Выборка.Адрес, Выборка.Наименование);
		
	КонецЦикла; 
	
	УстановитьПараметры();
	
КонецПроцедуры
//*****************************************************************************************
&НаСервере
Процедура УстановитьПараметры()
	
	Список.Параметры.УстановитьЗначениеПараметра("Тип",		 Тип);
	Список.Параметры.УстановитьЗначениеПараметра("Адрес",	 ПроцедураФункция);   
	
КонецПроцедуры
//*****************************************************************************************
&НаКлиенте
Процедура ПроцедураФункцияПриИзменении(Элемент)
	
	УстановитьПараметры();
	
КонецПроцедуры
//*****************************************************************************************
&НаКлиенте
Процедура Тип1ПриИзменении(Элемент)
	
	УстановитьПараметры();
	
КонецПроцедуры
//*****************************************************************************************
