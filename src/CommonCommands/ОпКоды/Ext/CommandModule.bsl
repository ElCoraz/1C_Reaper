﻿//*****************************************************************************************
&НаСервере
Функция ПолучитьОпКоды()
	
	ТабличныйДокумент = Новый ТабличныйДокумент;   
	
	Макет = ПолучитьОбщийМакет("ОпКоды");    
	
	Область = Макет.ПолучитьОбласть("Данные");

	ТабличныйДокумент.Вывести(Область);
	
	ТабличныйДокумент.ОтображатьСетку		 = Ложь;
	ТабличныйДокумент.ОтображатьЗаголовки	 = Ложь;

	Возврат ТабличныйДокумент;	
	
КонецФункции
//*****************************************************************************************
&НаКлиенте
Процедура ОбработкаКоманды(ПараметрКоманды, ПараметрыВыполненияКоманды)
	
	ТабличныйДокумент = ПолучитьОпКоды(); 

	ТабличныйДокумент.Показать("ОпКоды");

КонецПроцедуры
//*****************************************************************************************