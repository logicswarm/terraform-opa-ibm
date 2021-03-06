package ibmcloud.resources.state.data.ibm_iam_service_id
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_iam_service_id"
}

resources_map[attr]{
    attr := state.get_resources("ibm_iam_service_id", "data").resources[_]
}
name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "name", null) |
        res := resources_map[_]
        true
     }
}
service_ids = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "service_ids", null) |
        res := resources_map[_]
        true
     }
}
