package ibmcloud.resources.prior.ibm_resource_group
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_resource_group"
}
resources_map[attr]{
    attr := plan.prior_state_values("ibm_resource_group").resources[_]
}
name = ret {
    ret := {res.address: object.get(res.attributes, "name", null) |
        res := resources_map[_]
        true
     }
}
is_default = ret {
    ret := {res.address: object.get(res.attributes, "is_default", null) |
        res := resources_map[_]
        true
     }
}

