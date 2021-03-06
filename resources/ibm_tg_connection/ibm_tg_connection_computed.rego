package ibmcloud.resources.computed.ibm_tg_connection
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_tg_connection"
}
resources_map[attr]{
    attr := plan.changes_computed_values("ibm_tg_connection").resources[_]
}
related_crn = ret {
    ret := {res.address: object.get(res.attributes, "related_crn", null) |
        res := resources_map[_]
        true
     }
}
updated_at = ret {
    ret := {res.address: object.get(res.attributes, "updated_at", null) |
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
network_id = ret {
    ret := {res.address: object.get(res.attributes, "network_id", null) |
        res := resources_map[_]
        true
     }
}
created_at = ret {
    ret := {res.address: object.get(res.attributes, "created_at", null) |
        res := resources_map[_]
        true
     }
}
connection_id = ret {
    ret := {res.address: object.get(res.attributes, "connection_id", null) |
        res := resources_map[_]
        true
     }
}

