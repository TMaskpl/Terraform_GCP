resource "localfile" "" {
    filename = var.f_name
    content = var.f_cont
    file_permission = var.f_perms
}

resource "random_shuffle" "r_shuff" {
    input =  var.input_zones
    result_count = 1
}

output "result_input_zones" {
    value = random_shuffle.r_shuff.result
}