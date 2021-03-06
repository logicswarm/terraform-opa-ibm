package ibmcloud.resources.computed.ibm_storage_block
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_storage_block"
}
resources_map[attr]{
    attr := plan.changes_computed_values("ibm_storage_block").resources[_]
}
hostname = ret {
    ret := {res.address: object.get(res.attributes, "hostname", null) |
        res := resources_map[_]
        true
     }
}
allowed_virtual_guest_ids = ret {
    ret := {res.address: object.get(res.attributes, "allowed_virtual_guest_ids", null) |
        res := resources_map[_]
        true
     }
}
allowed_virtual_guest_info = ret {
    ret := {res.address: object.get(res.attributes, "allowed_virtual_guest_info", null) |
        res := resources_map[_]
        true
     }
}
allowed_host_info = ret {
    ret := {res.address: object.get(res.attributes, "allowed_host_info", null) |
        res := resources_map[_]
        true
     }
}
allowed_hardware_info = ret {
    ret := {res.address: object.get(res.attributes, "allowed_hardware_info", null) |
        res := resources_map[_]
        true
     }
}
volumename = ret {
    ret := {res.address: object.get(res.attributes, "volumename", null) |
        res := resources_map[_]
        true
     }
}
allowed_hardware_ids = ret {
    ret := {res.address: object.get(res.attributes, "allowed_hardware_ids", null) |
        res := resources_map[_]
        true
     }
}
target_address = ret {
    ret := {res.address: object.get(res.attributes, "target_address", null) |
        res := resources_map[_]
        true
     }
}
resource_controller_url = ret {
    ret := {res.address: object.get(res.attributes, "resource_controller_url", null) |
        res := resources_map[_]
        true
     }
}
resource_name = ret {
    ret := {res.address: object.get(res.attributes, "resource_name", null) |
        res := resources_map[_]
        true
     }
}

