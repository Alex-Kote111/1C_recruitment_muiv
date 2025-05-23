
Процедура УстановкаПараметровСеанса(ТребуемыеПараметры)
	
	ПользовательИБ = ПользователиИнформационнойБазы.ТекущийПользователь();
	ИмяПользователяИБ = ПользовательИБ.Имя;
	СсылкаНаПользователя = Справочники.Пользователи.НайтиПоНаименованию(ИмяПользователяИБ);
	
	Если СсылкаНаПользователя.Пустая() Тогда
		НовыйПользователь = Справочники.Пользователи.СоздатьЭлемент();
		НовыйПользователь.Наименование = ПользовательИБ.Имя;
		НовыйПользователь.ПолноеИмя = ПользовательИБ.ПолноеИмя;
		НовыйПользователь.Записать();
	Иначе
		ПараметрыСеанса.ТекущийПользователь = СсылкаНаПользователя;
	КонецЕсли;
		
КонецПроцедуры
