# ===============
# Outputs
# ===============

output "vm_1_name" {
  description = "Имя созданной виртуальной машины"
  value       = yandex_compute_instance.vm_1.name
}

output "vm_1_public_ip" {
  description = "Публичный IP-адрес виртуальной машины"
  value       = yandex_compute_instance.vm_1.network_interface.0.nat_ip_address
}