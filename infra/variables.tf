# ===============
# Variables
# ===============

variable "vpc_name" {
  description = "VPC Name"
  type        = string
  default     = "infra-network"
}

variable "net_cidr" {
  description = "Subnet structure"
  type = list(object({
    name   = string
    zone   = string
    prefix = string
  }))

  default = [
    { name = "infra-subnet-a", zone = "ru-central1-a", prefix = "10.129.1.0/24" },
    { name = "infra-subnet-b", zone = "ru-central1-b", prefix = "10.130.1.0/24" },
    { name = "infra-subnet-d", zone = "ru-central1-d", prefix = "10.131.1.0/24" },
  ]
}

variable "vm_1_name" {
  type        = string
  default     = "vm-kittygram"
}

variable "aws_region" {
  description = "AWS Region name"
  type        = string
}

variable "ssh_key" {
  description = "SSH Public Key"
  type        = string
}

variable "cloud_id" {
  description = "Cloud ID"
  type        = string
}

variable "folder_id" {
  description = "Folder ID"
  type        = string
}

variable "zone" {
  description = "Зона доступности по умолчанию"
  type        = string
  default     = "ru-central1-a"
}

variable "platform_id" {
  description = "Платформа ВМ"
  type        = string
  default     = "standard-v2"
}

variable "image_family" {
  description = "Семейство образа ОС"
  type        = string
  default     = "ubuntu-2404-lts"
}

variable "cores" {
  description = "Количество ядер CPU"
  type        = number
  default     = 2
}

variable "core_fraction" {
  description = "Гарантированная доля CPU"
  type        = number
  default     = 20
}

variable "memory" {
  description = "Объем RAM (ГБ)"
  type        = number
  default     = 2
}

variable "disk_type" {
  description = "Тип диска (network-hdd, network-ssd)"
  type        = string
  default     = "network-ssd"
}

variable "disk_size" {
  description = "Размер диска (ГБ)"
  type        = number
  default     = 20
}

variable "nat" {
  description = "Назначать публичный IP"
  type        = bool
  default     = true
}