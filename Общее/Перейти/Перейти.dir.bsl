﻿// Производит переход к строке таблицы или динамического списка
//
// Параметры:
// Сутруктура параметров, полученная методом "Общее.Перейти.Параметры"
//
// Возврат:
// Тестируемая таблица

таблица = _.Таблица;

если ( ТипЗнч ( таблица ) = Тип ( "Строка" ) ) тогда
	таблица = Фокус ( таблица );
конецесли;

если ( _.СНачала ) тогда
	таблица.ПерейтиКПервойСтроке ();
конецесли;

если ( _.Плоский ) тогда
	попытка
		Нажать ( "!ФормаСписок" );
	исключение
	конецпопытки;
конецесли;

возврат таблица.ПерейтиКСтроке ( _.Поля );
