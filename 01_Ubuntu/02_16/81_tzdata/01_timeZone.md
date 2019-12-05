```{bash}
$ apt-get install -y tzdata
...

$ dpkg-reconfigure tzdata
debconf: unable to initialize frontend: Dialog
debconf: (No usable dialog-like program is installed, so the dialog based frontend cannot be used. at /usr/share/perl5/Debconf/FrontEnd/Dialog.pm line 76.)
debconf: falling back to frontend: Readline
Configuring tzdata
------------------

Please select the geographic area in which you live. Subsequent configuration questions will narrow this down by presenting a list of cities, representing the time zones in which they are located.

  1. Africa  2. America  3. Antarctica  4. Australia  5. Arctic  6. Asia  7. Atlantic  8. Europe  9. Indian  10. Pacific  11. SystemV  12. US  13. Etc
Geographic area: 6

Please select the city or region corresponding to your time zone.

  1. Aden      9. Baghdad   17. Chita       25. Dushanbe     33. Irkutsk    41. Kashgar       49. Macau         57. Omsk        65. Riyadh         73. Tashkent       81. Ulaanbaatar    89. Yerevan
  2. Almaty    10. Bahrain  18. Choibalsan  26. Famagusta    34. Istanbul   42. Kathmandu     50. Magadan       58. Oral        66. Sakhalin       74. Tbilisi        82. Urumqi
  3. Amman     11. Baku     19. Chongqing   27. Gaza         35. Jakarta    43. Khandyga      51. Makassar      59. Phnom_Penh  67. Samarkand      75. Tehran         83. Ust-Nera
  4. Anadyr    12. Bangkok  20. Colombo     28. Harbin       36. Jayapura   44. Kolkata       52. Manila        60. Pontianak   68. Seoul          76. Tel_Aviv       84. Vientiane
  5. Aqtau     13. Barnaul  21. Damascus    29. Hebron       37. Jerusalem  45. Krasnoyarsk   53. Muscat        61. Pyongyang   69. Shanghai       77. Thimphu        85. Vladivostok
  6. Aqtobe    14. Beirut   22. Dhaka       30. Ho_Chi_Minh  38. Kabul      46. Kuala_Lumpur  54. Nicosia       62. Qatar       70. Singapore      78. Tokyo          86. Yakutsk
  7. Ashgabat  15. Bishkek  23. Dili        31. Hong_Kong    39. Kamchatka  47. Kuching       55. Novokuznetsk  63. Qyzylorda   71. Srednekolymsk  79. Tomsk          87. Yangon
  8. Atyrau    16. Brunei   24. Dubai       32. Hovd         40. Karachi    48. Kuwait        56. Novosibirsk   64. Rangoon     72. Taipei         80. Ujung_Pandang  88. Yekaterinburg
Time zone: 68


Current default time zone: 'Asia/Seoul'
Local time is now:      Thu Oct 25 16:56:14 KST 2018.
Universal Time is now:  Thu Oct 25 07:56:14 UTC 2018.

$ date
Thu Oct 25 16:56:16 KST 2018
```
