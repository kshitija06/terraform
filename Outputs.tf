# Outputs are used to display information after a configuration is applied, making it easier to extract values for use in other contexts.

output "instance_id"{
    value= aws_instance.example.id
}