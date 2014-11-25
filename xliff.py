# -*- coding: utf-8 -*-
S='''
% 2.1 Где купить комплектющие? 15
% 2.2 Identifying resistors by their colour codes  16
% 2.3 Светодиоды 17
% 2.4 Some LED Specifications  17
% 2.5 LED research task . 17
% 2.6 Adding a switch to your circuit  18
% 2.7 Switch assignment . 18
% 2.8 Important circuit concepts  19
% 2.9 Changing the value of resistance  19
% 2.10 Adding a transistor to your circuit  20
% 2.11 Understanding circuits  21
% 2.12 The input circuit – an LDR  22
% 2.13 Working darkness detector circuit  23
% 2.14 Protecting circuits – using a diode  24
% 2.15 Diode Research Task  24
% 2.16 Final darkness detector circuit  25
'''

T='''
<trans-unit><source>2.1 Где купить комплектующие? 15</source><target>2.1 Где купить комплектующие? 15</target></trans-unit>
<trans-unit><source>2.2 Identifying resistors by their colour codes  16</source><target>2.2 Определение сопротивления резистора по цветовому коду 16</target></trans-unit>
<trans-unit><source>2.3 Светодиоды 17</source><target>2.3 Светодиоды 17</target></trans-unit>
<trans-unit><source>2.4 Some LED Specifications  17</source><target>2,4 Некоторые технические характеристики светодиода 17</target></trans-unit>
<trans-unit><source>2.5 LED research task . 17</source><target>2.5 Задание на исследование светодиода 17</target></trans-unit>
<trans-unit><source>2.6 Adding a switch to your circuit  18</source><target>2.6 Добавление выключателя  в схему 18</target></trans-unit>
<trans-unit><source>2.7 Switch assignment . 18</source><target>2.7 Задание на установку выключателя 18</target></trans-unit>
<trans-unit><source>2.8 Important circuit concepts  19</source><target>2,8 Важные понятия схемы 19</target></trans-unit>
<trans-unit><source>2.9 Changing the value of resistance  19</source><target>2.9 Изменение величины сопротивления 19</target></trans-unit>
<trans-unit><source>2.10 Adding a transistor to your circuit  20</source><target>2.10 Добавление транзистора в схему 20</target></trans-unit>
<trans-unit><source>2.11 Understanding circuits  21</source><target>2.11 Чтение схем 21</target></trans-unit>
<trans-unit><source>2.12 The input circuit – an LDR  22</source><target>2.12 Входная цепь – LDR 22</target></trans-unit>
<trans-unit><source>2.13 Working darkness detector circuit  23</source><target>2.13 Рабочая схема датчика темноты 23</target></trans-unit>
<trans-unit><source>2.14 Protecting circuits – using a diode  24</source><target>2,14 Защитные цепи - использование диода 24</target></trans-unit>
<trans-unit><source>2.15 Diode Research Task  24</source><target>2.15 Задача исследования диода 24</target></trans-unit>
<trans-unit><source>2.16 Final darkness detector circuit  25</source><target>2.13 Финальная схема датчика темноты 23</target></trans-unit>
'''

import os,sys,re,time

print time.localtime()[:6],sys.argv

for i in [
    (r'^\n',''),
    ('% ','<trans-unit><source>'),
    (r'\n','</source></trans-unit>\n')
]:
    S=re.sub(i[0],i[1],S)

print
print '''
<?xml version="1.0" encoding="utf-8"?>
<xliff xmlns="urn:oasis:names:tc:xliff:document:1.2" version="1.2">
<file>
<body>
'''
print S
print '''
</body>
</file>
</xliff>
'''

for i in [
        ('<source>.*?</source>',''),
        ('<trans-unit>(.+?)</trans-unit>',r'\section{\1}'),
        ('<target>(.*)</target>',r'\1'),
        (' – ',r'\ --- ')
]:
    T=re.sub(i[0],i[1],T)
print T