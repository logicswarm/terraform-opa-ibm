package ibmcloud.resources.state.ibm_tg_connection
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name = ret {
    ret := "ibm_tg_connection"
}

resources_map[attr]{
    attr := state.get_resources("ibm_tg_connection", "managed").resources[_]
}
related_crn = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "related_crn", null) |
        res := resources_map[_]
        true
     }
}
name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "name", null) |
        res := resources_map[_]
        true
     }
}
network_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "network_id", null) |
        res := resources_map[_]
        true
     }
}
updated_at = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "updated_at", null) |
        res := resources_map[_]
        true
     }
}
network_account_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "network_account_id", null) |
        res := resources_map[_]
        true
     }
}
created_at = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "created_at", null) |
        res := resources_map[_]
        true
     }
}
status = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "status", null) |
        res := resources_map[_]
        true
     }
}
gateway = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "gateway", null) |
        res := resources_map[_]
        true
     }
}
connection_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "connection_id", null) |
        res := resources_map[_]
        true
     }
}
network_type = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "network_type", null) |
        res := resources_map[_]
        true
     }
}