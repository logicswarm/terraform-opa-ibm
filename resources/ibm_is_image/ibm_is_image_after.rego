package ibmcloud.resources.after.ibm_is_image
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_is_image"
}
resources_map[attr]{
    attr := plan.changes_after_values("ibm_is_image").resources[_]
}
operating_system = ret {
    ret := {res.address: object.get(res.attributes, "operating_system", null) |
        res := resources_map[_]
        true
     }
}
href = ret {
    ret := {res.address: object.get(res.attributes, "href", null) |
        res := resources_map[_]
        true
     }
}
encrypted_data_key = ret {
    ret := {res.address: object.get(res.attributes, "encrypted_data_key", null) |
        res := resources_map[_]
        true
     }
}
encryption_key = ret {
    ret := {res.address: object.get(res.attributes, "encryption_key", null) |
        res := resources_map[_]
        true
     }
}
tags = ret {
    ret := {res.address: object.get(res.attributes, "tags", null) |
        res := resources_map[_]
        true
     }
}
resource_group = ret {
    ret := {res.address: object.get(res.attributes, "resource_group", null) |
        res := resources_map[_]
        true
     }
}
name = ret {
    ret := {res.address: object.get(res.attributes, "name", null) |
        res := resources_map[_]
        true
     }
}

