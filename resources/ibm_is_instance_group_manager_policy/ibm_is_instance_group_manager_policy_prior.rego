package ibmcloud.resources.prior.ibm_is_instance_group_manager_policy
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_is_instance_group_manager_policy"
}
resources_map[attr]{
    attr := plan.prior_state_values("ibm_is_instance_group_manager_policy").resources[_]
}
instance_group = ret {
    ret := {res.address: object.get(res.attributes, "instance_group", null) |
        res := resources_map[_]
        true
     }
}
instance_group_manager = ret {
    ret := {res.address: object.get(res.attributes, "instance_group_manager", null) |
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

