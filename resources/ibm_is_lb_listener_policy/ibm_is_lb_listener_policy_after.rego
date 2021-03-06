package ibmcloud.resources.after.ibm_is_lb_listener_policy
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_is_lb_listener_policy"
}
resources_map[attr]{
    attr := plan.changes_after_values("ibm_is_lb_listener_policy").resources[_]
}
action = ret {
    ret := {res.address: object.get(res.attributes, "action", null) |
        res := resources_map[_]
        true
     }
}
target_url = ret {
    ret := {res.address: object.get(res.attributes, "target_url", null) |
        res := resources_map[_]
        true
     }
}
rules = ret {
    ret := {res.address: object.get(res.attributes, "rules", null) |
        res := resources_map[_]
        true
     }
}
target_id = ret {
    ret := {res.address: object.get(res.attributes, "target_id", null) |
        res := resources_map[_]
        true
     }
}
target_http_status_code = ret {
    ret := {res.address: object.get(res.attributes, "target_http_status_code", null) |
        res := resources_map[_]
        true
     }
}
lb = ret {
    ret := {res.address: object.get(res.attributes, "lb", null) |
        res := resources_map[_]
        true
     }
}
listener = ret {
    ret := {res.address: object.get(res.attributes, "listener", null) |
        res := resources_map[_]
        true
     }
}
priority = ret {
    ret := {res.address: object.get(res.attributes, "priority", null) |
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

