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

## решение 1.2 Создать группу ВМ в public подсети фиксированного размера с шаблоном LAMP и веб-страницей, содержащей ссылку на картинку из бакета
![Рисунок 6](https://github.com/ysatii/homeworks-clopro-15.2/blob/main/img/img_6.jpg)  
![Рисунок 7](https://github.com/ysatii/homeworks-clopro-15.2/blob/main/img/img_7.jpg)  
![Рисунок 8](https://github.com/ysatii/homeworks-clopro-15.2/blob/main/img/img_8.jpg)  
![Рисунок 9](https://github.com/ysatii/homeworks-clopro-15.2/blob/main/img/img_9.jpg)  
![Рисунок 10](https://github.com/ysatii/homeworks-clopro-15.2/blob/main/img/img_10.jpg)  
![Рисунок 11](https://github.com/ysatii/homeworks-clopro-15.2/blob/main/img/img_11.jpg)  
![Рисунок 12](https://github.com/ysatii/homeworks-clopro-15.2/blob/main/img/img_12.jpg)  
