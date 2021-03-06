package ibmcloud.resources.after.ibm_security_group
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_security_group"
}
resources_map[attr]{
    attr := plan.changes_after_values("ibm_security_group").resources[_]
}
name = ret {
    ret := {res.address: object.get(res.attributes, "name", null) |
        res := resources_map[_]
        true
     }
}
description = ret {
    ret := {res.address: object.get(res.attributes, "description", null) |
        res := resources_map[_]
        true
     }
}

