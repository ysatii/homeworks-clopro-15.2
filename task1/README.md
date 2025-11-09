 
yc-ig-nlb/
├─ providers.tf
├─ variables.tf
├─ outputs.tf
├─ network.tf
├─ bucket.tf
├─ ig.tf
├─ lb.tf
└─ templates/
   └─ user_data.sh.tftpl


   Инициализация и применение

terraform init
terraform validate
terraform plan
terraform apply -auto-approve


yc compute instance-group list
+----------------------+------------+--------+------+
|          ID          |    NAME    | STATUS | SIZE |
+----------------------+------------+--------+------+
| cl1c2al2985336218c6m | testing-ig | ACTIVE |    3 |
+----------------------+------------+--------+------+

lamer@lamer-VirtualBox:~/Рабочий стол/homeworks-clopro-15.2/2/15.02_yc_computing_power/yandex$ 
lamer@lamer-VirtualBox:~/Рабочий стол/homeworks-clopro-15.2/2/15.02_yc_computing_power/yandex$ yc compute instance-group get lamp-group
ERROR: instance-group with id or name "lamp-group" not found
lamer@lamer-VirtualBox:~/Рабочий стол/homeworks-clopro-15.2/2/15.02_yc_computing_power/yandex$ yc compute instance-group get testing-ig




Проверка
В выводе будут:

image_url — открой в браузере и убедись, что картинка доступна по HTTPS из интернета.

nlb_public_ips — возьми IP и проверь:

curl -s http://<NLB_IP>


Должна прийти HTML-страница с <img src="..."> на твой Object Storage.

Проверка отказоустойчивости (из задания)
Зайди в консоль YC → Compute Cloud → Instance groups → твоя группа.
Удалить/остановить 1–2 ВМ (или сделать им Stop).

NLB продолжит отдавать страницу (здоровые ВМ остаются).

Instance Group восстановит недостающие инстансы до размера size = 3.

Что приложить в README.md (для приёмки)

Скриншот публичной картинки в бакете (URL вида https://storage.yandexcloud.net/<bucket>/<file>).

Скриншот страницы index.html через IP NLB в браузере.

Скриншот страницы «Instance groups»: размер 3, Pass health-check.

Скриншот, что после удаления 1–2 ВМ трафик всё ещё доступен через NLB и размер группы вернулся к 3 (или процесс восстановления идёт).

Ссылки на манифесты Terraform в репозитории.
(Требования из задания: выполнить на Yandex Cloud, всё — Terraform. )