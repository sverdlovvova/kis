ФИО: Свердлов Владимир Алексеевич

Номер задачи: 4

Как запустить: из папки build запустить ```./Similarity \<directiry_1\> \<directiry_2\>  \<threshold\>```

Для решения предложенной задачи я решил воспользоваться следующим алгоритмом:

Пусть у нас есть два файла и нам надо сравнить их похожесть. Представим их в виде векторов в многомерном пространстве. Как представить содержимое 1 файла в виде вектора? Разобъем его на блоки размера block_size (в своем решении выбрал 3, так как счел это самым оптимальным). Тогда размерность вектора - количество уникальных блоков, а количество блоков одного вида - длина проекции вектора на соответствующую ось. Таким образом, мы представили два файла в виде двух векторов. Тогда найдем расстояние между этими двумя векторами. Чем меньше расстояние - тем больше похожи файлы. Также решил учитывать соотношение расстояние к размеру большего файла, чтобы для больших файлов позволять больше отличий между ними.

Если это отнешение не превышает 100-threshold, то файлы считаем похожими.
