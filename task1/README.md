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

terraform init
terraform validate
terraform plan
terraform apply -auto-approve

## решение 1.1 бакет Object Storage
в результаты работы кода терраформ создан бакет **yc-15-2-bucket-2025-11**
корзина содержит файлы:
Страница ошибки ─ error.html  
Главная страница ─ index.html  
файлс с картинкой ─ netology.png  
![Рисунок 1](https://github.com/ysatii/homeworks-clopro-15.2/blob/main/img/img_1.jpg) 

![Рисунок 2](https://github.com/ysatii/homeworks-clopro-15.2/blob/main/img/img_2.jpg)  

![Рисунок 3](https://github.com/ysatii/homeworks-clopro-15.2/blob/main/img/img_3.jpg)  

