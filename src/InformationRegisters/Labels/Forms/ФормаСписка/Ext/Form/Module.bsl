﻿//*****************************************************************************************
&НаСервере
Процедура ОчиститьНаСервере()

	Labels = РегистрыСведений.Labels.СоздатьНаборЗаписей();
	
	Labels.Записать();

КонецПроцедуры
//*****************************************************************************************
&НаКлиенте
Процедура Очистить(Команда)

	ОчиститьНаСервере();   

	Элементы.Список.Обновить();

КонецПроцедуры
//*****************************************************************************************
