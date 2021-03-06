package ibmcloud.resources.prior.ibm_container_cluster
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_container_cluster"
}
resources_map[attr]{
    attr := plan.prior_state_values("ibm_container_cluster").resources[_]
}
space_guid = ret {
    ret := {res.address: object.get(res.attributes, "space_guid", null) |
        res := resources_map[_]
        true
     }
}
resource_group_id = ret {
    ret := {res.address: object.get(res.attributes, "resource_group_id", null) |
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
region = ret {
    ret := {res.address: object.get(res.attributes, "region", null) |
        res := resources_map[_]
        true
     }
}
alb_type = ret {
    ret := {res.address: object.get(res.attributes, "alb_type", null) |
        res := resources_map[_]
        true
     }
}
cluster_name_id = ret {
    ret := {res.address: object.get(res.attributes, "cluster_name_id", null) |
        res := resources_map[_]
        true
     }
}
account_guid = ret {
    ret := {res.address: object.get(res.attributes, "account_guid", null) |
        res := resources_map[_]
        true
     }
}
org_guid = ret {
    ret := {res.address: object.get(res.attributes, "org_guid", null) |
        res := resources_map[_]
        true
     }
}
list_bounded_services = ret {
    ret := {res.address: object.get(res.attributes, "list_bounded_services", null) |
        res := resources_map[_]
        true
     }
}

