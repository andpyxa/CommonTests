﻿// Проверяет наличие ошибки проведения.
// Происходят два действия:
// 1. Проверяется наличие стандартного диалогового окна ошибки проведения
// 2. Проверяется текст сообщения об ошибке, проверяется что данная ошибка
//    должна быть всего один раз
//
// Параметры:
// Текст ошибки проведения. Могут быть использованы автоподстановочные символы.
// Пример: "Недостаточно товара * на складе *"

СтандартнаяОбработка = ложь;

если ( НайтиСообщения ( "Не удалось провести*" ).Количество () = 0 ) тогда
	Стоп ( "<Не удалось провести*> диалоговое окно должно быть показано" );
конецесли;

Нажать ( "OK", Forms.Get1C () ); // Закрыть стандартное 1С окно

если ( НайтиСообщения ( _ ).Количество () <> 1 ) тогда
	Стоп ( "<" + _ + "> сообщение об ошибке должно быть показано один раз" );
конецесли;
