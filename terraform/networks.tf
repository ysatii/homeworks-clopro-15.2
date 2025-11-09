##########
# network
##########

resource "yandex_vpc_network" "network-1" {
  name = "network-1"
}

resource "yandex_vpc_subnet" "subnet-1" {
  name           = var.subnet-1-name
  zone           = "ru-central1-a"
  network_id     = yandex_vpc_network.network-1.id
  v4_cidr_blocks = ["192.168.10.0/24"]
}

resource "yandex_vpc_subnet" "subnet-2" {
  name           = var.subnet-2-private-b
  zone           = "ru-central1-b"
  network_id     = yandex_vpc_network.network-1.id
  v4_cidr_blocks = ["192.168.20.0/24"]
  
}

resource "yandex_vpc_subnet" "subnet-3" {
  name           = var.subnet-2-private-d
  zone           = "ru-central1-d"
  network_id     = yandex_vpc_network.network-1.id
  v4_cidr_blocks = ["192.168.30.0/24"]
  
}




resource "yandex_vpc_route_table" "subnet-2-rt" {
  network_id = yandex_vpc_network.net.id

  static_route {
    destination_prefix = "0.0.0.0/0"
    next_hop_address   = "10.10.1.254"
  }
}


###########################
resource "yandex_vpc_network" "net" {
  name = "demo-net"
}

resource "yandex_vpc_subnet" "subnet_a" {
  name           = "subnet-a"
  zone           = "ru-central1-a"
  network_id     = yandex_vpc_network.net.id
  v4_cidr_blocks = ["10.10.1.0/24"]
  #route_table_id = yandex_vpc_route_table.subnet-2-rt.id
}

resource "yandex_vpc_subnet" "subnet_b" {
  name           = "subnet-b"
  zone           = "ru-central1-b"
  network_id     = yandex_vpc_network.net.id
  v4_cidr_blocks = ["10.10.2.0/24"]
  route_table_id = yandex_vpc_route_table.subnet-2-rt.id
}

resource "yandex_vpc_subnet" "subnet_d" {
  name           = "subnet-d"
  zone           = "ru-central1-d"
  network_id     = yandex_vpc_network.net.id
  v4_cidr_blocks = ["10.10.3.0/24"]
  route_table_id = yandex_vpc_route_table.subnet-2-rt.id
}
