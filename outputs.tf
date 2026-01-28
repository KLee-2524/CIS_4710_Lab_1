output "lab_instances" {
    value = {
        for attendee, mod in module.lab-1 :
        attendee => {
            kali_name   = module.lab-1["${attendee}"].kali_details.name
            kali_pub_ip = module.lab-1["${attendee}"].kali_details.pub_ip
        }
    }
}