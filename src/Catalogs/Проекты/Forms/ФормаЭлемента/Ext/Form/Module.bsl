﻿//*****************************************************************************************
&НаКлиенте
Процедура ЗагрузитьФайл(Команда) 

	Фильтр = "Внешнаяя обработка (*.epf)|*.epf|"	+ "Внешний отчет (*.erf)|*.erf|"	+ "Конфигурация (*.cf)|*.cf|"	+ "Расширение конфигурации (*.cfe)|*.cfe|";		Диалог = Новый ПараметрыДиалогаПомещенияФайлов("Выберите файл", Ложь, Фильтр);			Оповещение = Новый ОписаниеОповещения("ПослеЗакрытияДиалогаВыбораПодписи", ЭтаФорма);		НачатьПомещениеФайлаНаСервер(Оповещение,,,, Диалог, УникальныйИдентификатор);	
КонецПроцедуры       
//*****************************************************************************************
&НаКлиентеПроцедура ПослеЗакрытияДиалогаВыбораПодписи (ОписаниеФайла, ДопПараметры) Экспорт		Если ОписаниеФайла.ПомещениеФайлаОтменено Тогда 
				Возврат;		
	КонецЕсли;

	Объект.Расширение	 = ОписаниеФайла.СсылкаНаФайл.Расширение; 
	Объект.Наименование	 = ОписаниеФайла.СсылкаНаФайл.Имя; 
		АдресВХранилище = ОписаниеФайла.Адрес;	КонецПроцедуры
//*****************************************************************************************
&НаСервере
Процедура ПередЗаписьюНаСервере()     
	
	Если ЭтоАдресВременногоХранилища(АдресВХранилище) ТОгда						Объект.Файл = новый ХранилищеЗначения(ПолучитьИзВременногоХранилища(АдресВХранилище));					КонецЕсли;	

КонецПроцедуры
//*****************************************************************************************
