#forloop with list
output "for_output_list"{
    description = "For loop with List"
    value = [for instance in aws_instance.myec2vm: instance.public_dns]
}

#forloop with map
output "for_output_map" {
    description = "For loop with map"
    value = {for i,instance in aws_instance.myec2vm: instance.tags["Name"] => instance.public_dns}
  
}

#forloop with map advanced
output "for_output_map2"{
    description = "For loop with map - Advanced"
    value = {for c,instance in aws_instance.myec2vm: c => instance.public_dns}
}

#forloop with splat operator
output "latest_splat_instance_publicdns"{
    description = "Generalized latest splat operator"
    value = aws_instance.myec2vm[*].public_dns
}