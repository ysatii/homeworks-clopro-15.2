# решение 1 
Структура файлов

── bucket.tf  
├── files  
│   ├── error.html  
│   ├── index.html  
│   └── netology.png  
├── index.tpl.yaml  
├── instance-group.tf  
├── instances.tf  
├── loadbalancer.tf  
├── meta.txt  
├── networks.tf  
├── outputs.tf  
├── personal.auto.tfvars  
├── providers.tf  
├── service-account.tf  
├── terraform.tfstate  
├── terraform.tfstate.backup  
├── variables.tf  
└── versions.tf  




Инициализация и применение
```
terraform init
terraform validate
terraform plan
terraform apply -auto-approve
```

## решение 1.1 бакет Object Storage
В результаты работы кода терраформ создан бакет **yc-15-2-bucket-2025-11**  
Корзина содержит файлы:  
Страница ошибки ─ error.html   
Главная страница ─ index.html  
Файлс с картинкой ─ netology.png  
Стринца бакета - https://yc-15-2-bucket-2025-11.website.yandexcloud.net/  
Ссылка на файл https://yc-15-2-bucket-2025-11.website.yandexcloud.net/netology.png  

![Рисунок 1](https://github.com/ysatii/homeworks-clopro-15.2/blob/main/img/img_1.jpg) 

Настройки бакета
![Рисунок 2](https://github.com/ysatii/homeworks-clopro-15.2/blob/main/img/img_2.jpg)  

Безопастность
![Рисунок 3](https://github.com/ysatii/homeworks-clopro-15.2/blob/main/img/img_3.jpg)  

вебсайт с помощью бакета 
![Рисунок 4](https://github.com/ysatii/homeworks-clopro-15.2/blob/main/img/img_4.jpg)  

сама картинка 
![Рисунок 5](https://github.com/ysatii/homeworks-clopro-15.2/blob/main/img/img_5.jpg)  

## Решение 1.2 Создать группу ВМ в public подсети фиксированного размера с шаблоном LAMP и веб-страницей, содержащей ссылку на картинку из бакета
![Рисунок 6](https://github.com/ysatii/homeworks-clopro-15.2/blob/main/img/img_6.jpg)  
![Рисунок 7](https://github.com/ysatii/homeworks-clopro-15.2/blob/main/img/img_7.jpg)  
![Рисунок 8](https://github.com/ysatii/homeworks-clopro-15.2/blob/main/img/img_8.jpg)  
![Рисунок 9](https://github.com/ysatii/homeworks-clopro-15.2/blob/main/img/img_9.jpg)  
![Рисунок 10](https://github.com/ysatii/homeworks-clopro-15.2/blob/main/img/img_10.jpg)  
![Рисунок 11](https://github.com/ysatii/homeworks-clopro-15.2/blob/main/img/img_11.jpg)  
![Рисунок 12](https://github.com/ysatii/homeworks-clopro-15.2/blob/main/img/img_12.jpg)  

проверим ответы машин
![Рисунок 13](https://github.com/ysatii/homeworks-clopro-15.2/blob/main/img/img_13.jpg)  

## Решение 1.3 Подключить группу к сетевому балансировщику
![Рисунок 14](https://github.com/ysatii/homeworks-clopro-15.2/blob/main/img/img_14.jpg)  
![Рисунок 15](https://github.com/ysatii/homeworks-clopro-15.2/blob/main/img/img_15.jpg) 
![Рисунок 16](https://github.com/ysatii/homeworks-clopro-15.2/blob/main/img/img_16.jpg) 

Машины отвечают по очереди 
![Рисунок 17](https://github.com/ysatii/homeworks-clopro-15.2/blob/main/img/img_17.jpg) 
![Рисунок 18](https://github.com/ysatii/homeworks-clopro-15.2/blob/main/img/img_18.jpg) 
![Рисунок 19](https://github.com/ysatii/homeworks-clopro-15.2/blob/main/img/img_19.jpg) 

Удалим две машины, но работспособность балансировщика поддерживаеться
![Рисунок 20](https://github.com/ysatii/homeworks-clopro-15.2/blob/main/img/img_20.jpg) 
![Рисунок 21](https://github.com/ysatii/homeworks-clopro-15.2/blob/main/img/img_21.jpg) 
![Рисунок 22](https://github.com/ysatii/homeworks-clopro-15.2/blob/main/img/img_22.jpg) 
![Рисунок 23](https://github.com/ysatii/homeworks-clopro-15.2/blob/main/img/img_23.jpg) 

Машины создаються в замен удаленных
![Рисунок 24](https://github.com/ysatii/homeworks-clopro-15.2/blob/main/img/img_24.jpg) 
![Рисунок 25](https://github.com/ysatii/homeworks-clopro-15.2/blob/main/img/img_25.jpg) 
![Рисунок 26](https://github.com/ysatii/homeworks-clopro-15.2/blob/main/img/img_26.jpg)  
![Рисунок 27](https://github.com/ysatii/homeworks-clopro-15.2/blob/main/img/img_27.jpg) 
![Рисунок 28](https://github.com/ysatii/homeworks-clopro-15.2/blob/main/img/img_28.jpg) 
![Рисунок 29](https://github.com/ysatii/homeworks-clopro-15.2/blob/main/img/img_29.jpg)  

машина в зоне d имеет другой адрес! по не понятной мне причине так и не поднялась допустимое время
![Рисунок 30](https://github.com/ysatii/homeworks-clopro-15.2/blob/main/img/img_30.jpg) 
![Рисунок 31](https://github.com/ysatii/homeworks-clopro-15.2/blob/main/img/img_31.jpg)

повтороно удалим нужно , навреное ждать дольше 
![Рисунок 32](https://github.com/ysatii/homeworks-clopro-15.2/blob/main/img/img_32.jpg) 
![Рисунок 33](https://github.com/ysatii/homeworks-clopro-15.2/blob/main/img/img_33.jpg)
![Рисунок 34](https://github.com/ysatii/homeworks-clopro-15.2/blob/main/img/img_34.jpg)

Удалим все машины
![Рисунок 35](https://github.com/ysatii/homeworks-clopro-15.2/blob/main/img/img_35.jpg)
![Рисунок 36](https://github.com/ysatii/homeworks-clopro-15.2/blob/main/img/img_36.jpg)
![Рисунок 37](https://github.com/ysatii/homeworks-clopro-15.2/blob/main/img/img_37.jpg)

машина в зоне d также заново создаеться
![Рисунок 38](https://github.com/ysatii/homeworks-clopro-15.2/blob/main/img/img_38.jpg)

Балансировщик понял что нет машин
![Рисунок 39](https://github.com/ysatii/homeworks-clopro-15.2/blob/main/img/img_39.jpg)
н чего не востановилось, прошло 20 мин, удалим созданные объекты и оставимв не работоспособном состоянии одну машину

перездали проет и удали машину в зоне d 
![Рисунок 40](https://github.com/ysatii/homeworks-clopro-15.2/blob/main/img/img_40.jpg)  
![Рисунок 41](https://github.com/ysatii/homeworks-clopro-15.2/blob/main/img/img_41.jpg)

Балансировщик отдает контент с 2 из 3 машин
![Рисунок 42](https://github.com/ysatii/homeworks-clopro-15.2/blob/main/img/img_42.jpg)

Создаеться третья машина в зоне d
![Рисунок 43](https://github.com/ysatii/homeworks-clopro-15.2/blob/main/img/img_43.jpg)
![Рисунок 44](https://github.com/ysatii/homeworks-clopro-15.2/blob/main/img/img_44.jpg)
![Рисунок 45](https://github.com/ysatii/homeworks-clopro-15.2/blob/main/img/img_45.jpg)

соответвует списку машин 
![Рисунок 46](https://github.com/ysatii/homeworks-clopro-15.2/blob/main/img/img_46.jpg)  
![Рисунок 47](https://github.com/ysatii/homeworks-clopro-15.2/blob/main/img/img_47.jpg)  
![Рисунок 48](https://github.com/ysatii/homeworks-clopro-15.2/blob/main/img/img_48.jpg)  