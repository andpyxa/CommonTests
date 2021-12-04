﻿// Внимание! Менеджер тестирования не имеет доступа к меню Файл, в связи с чем,
// открытие внешних обработок и других файлов без промежуточной обработки, невозможно!
//
// Данный метод открывает внешнюю обработку с использованием служебной обработки Worker.epf.
// Обработка Worker.epf находится внутри Тестера и может быть скачана через:
// Меню быстрых функций / Скачать Worker.epf
// Перед вызовом этого метода, обработка Worker.epf уже должна быть открыта в тестируемом приложении.
// Обработку Worker.epf можно открыть вручную или путем запуска тестируемого приложения
// с указанием ключа запуска внешней обработки.
//
// Параметры:
// Файл: Путь к файлу открываемой обработки

Здесь ( "Worker" );
Установить ( "#Path", _ );
Нажать ( "#FormRun" );