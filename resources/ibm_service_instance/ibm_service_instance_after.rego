package ibmcloud.resources.after.ibm_service_instance
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_service_instance"
}
resources_map[attr]{
    attr := plan.changes_after_values("ibm_service_instance").resources[_]
}
name = ret {
    ret := {res.address: object.get(res.attributes, "name", null) |
        res := resources_map[_]
        true
     }
}
service = ret {
    ret := {res.address: object.get(res.attributes, "service", null) |
        res := resources_map[_]
        true
     }
}
space_guid = ret {
    ret := {res.address: object.get(res.attributes, "space_guid", null) |
        res := resources_map[_]
        true
     }
}
parameters = ret {
    ret := {res.address: object.get(res.attributes, "parameters", null) |
        res := resources_map[_]
        true
     }
}
plan = ret {
    ret := {res.address: object.get(res.attributes, "plan", null) |
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
wait_time_minutes = ret {
    ret := {res.address: object.get(res.attributes, "wait_time_minutes", null) |
        res := resources_map[_]
        true
     }
}

