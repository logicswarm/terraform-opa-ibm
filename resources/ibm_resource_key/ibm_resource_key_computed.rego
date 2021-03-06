package ibmcloud.resources.computed.ibm_resource_key
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_resource_key"
}
resources_map[attr]{
    attr := plan.changes_computed_values("ibm_resource_key").resources[_]
}
parameters = ret {
    ret := {res.address: object.get(res.attributes, "parameters", null) |
        res := resources_map[_]
        true
     }
}
crn = ret {
    ret := {res.address: object.get(res.attributes, "crn", null) |
        res := resources_map[_]
        true
     }
}
credentials = ret {
    ret := {res.address: object.get(res.attributes, "credentials", null) |
        res := resources_map[_]
        true
     }
}
status = ret {
    ret := {res.address: object.get(res.attributes, "status", null) |
        res := resources_map[_]
        true
     }
}

