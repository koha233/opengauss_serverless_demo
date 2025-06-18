({PLANNEDSTMT :commandType 1 :queryId 0 :hasReturning false :hasModifyingCTE
false :hasIgnore false :canSetTag true :transientPlan false :dependsOnRole
false :is_flt_frame false :planTree {VECTOROW :plan_node_id 1 :parent_node_id
0 :exec_type 0 :startup_cost 22350.00 :total_cost 22350.00 :plan_rows 1500000
:multiple 1 :plan_width 114 :targetlist ({TARGETENTRY :expr {VAR :varno 65001
:varattno 1 :vartype 23 :vartypmod -1 :varcollid 0 :varlevelsup 0 :varnoold 1
:varoattno 1 :location -1} :resno 1 :resname o_orderkey :ressortgroupref 0
:resorigtbl 16546 :resorigcol 1 :resjunk false :rtindex 0 :isStartWithPseudo
false} {TARGETENTRY :expr {VAR :varno 65001 :varattno 2 :vartype 23 :vartypmod
-1 :varcollid 0 :varlevelsup 0 :varnoold 1 :varoattno 2 :location -1} :resno 2
:resname o_custkey :ressortgroupref 0 :resorigtbl 16546 :resorigcol 2 :resjunk
false :rtindex 0 :isStartWithPseudo false} {TARGETENTRY :expr {VAR :varno
65001 :varattno 3 :vartype 1042 :vartypmod 5 :varcollid 100 :varlevelsup 0
:varnoold 1 :varoattno 3 :location -1} :resno 3 :resname o_orderstatus
:ressortgroupref 0 :resorigtbl 16546 :resorigcol 3 :resjunk false :rtindex 0
:isStartWithPseudo false} {TARGETENTRY :expr {VAR :varno 65001 :varattno 4
:vartype 1700 :vartypmod 983046 :varcollid 0 :varlevelsup 0 :varnoold 1
:varoattno 4 :location -1} :resno 4 :resname o_totalprice :ressortgroupref 0
:resorigtbl 16546 :resorigcol 4 :resjunk false :rtindex 0 :isStartWithPseudo
false} {TARGETENTRY :expr {VAR :varno 65001 :varattno 5 :vartype 1114
:vartypmod 0 :varcollid 0 :varlevelsup 0 :varnoold 1 :varoattno 5 :location
-1} :resno 5 :resname o_orderdate :ressortgroupref 0 :resorigtbl 16546
:resorigcol 5 :resjunk false :rtindex 0 :isStartWithPseudo false} {TARGETENTRY
:expr {VAR :varno 65001 :varattno 6 :vartype 1042 :vartypmod 19 :varcollid 100
:varlevelsup 0 :varnoold 1 :varoattno 6 :location -1} :resno 6 :resname
o_orderpriority :ressortgroupref 0 :resorigtbl 16546 :resorigcol 6 :resjunk
false :rtindex 0 :isStartWithPseudo false} {TARGETENTRY :expr {VAR :varno
65001 :varattno 7 :vartype 1042 :vartypmod 19 :varcollid 100 :varlevelsup 0
:varnoold 1 :varoattno 7 :location -1} :resno 7 :resname o_clerk
:ressortgroupref 0 :resorigtbl 16546 :resorigcol 7 :resjunk false :rtindex 0
:isStartWithPseudo false} {TARGETENTRY :expr {VAR :varno 65001 :varattno 8
:vartype 23 :vartypmod -1 :varcollid 0 :varlevelsup 0 :varnoold 1 :varoattno 8
:location -1} :resno 8 :resname o_shippriority :ressortgroupref 0 :resorigtbl
16546 :resorigcol 8 :resjunk false :rtindex 0 :isStartWithPseudo false}
{TARGETENTRY :expr {VAR :varno 65001 :varattno 9 :vartype 1043 :vartypmod 83
:varcollid 100 :varlevelsup 0 :varnoold 1 :varoattno 9 :location -1} :resno 9
:resname o_comment :ressortgroupref 0 :resorigtbl 16546 :resorigcol 9 :resjunk
false :rtindex 0 :isStartWithPseudo false}) :qual <> :lefttree {CSTORESCAN
:plan_node_id 2 :parent_node_id 1 :exec_type 0 :startup_cost 0.00 :total_cost
22350.00 :plan_rows 1500000 :multiple 1 :plan_width 114 :targetlist
({TARGETENTRY :expr {VAR :varno 1 :varattno 1 :vartype 23 :vartypmod -1
:varcollid 0 :varlevelsup 0 :varnoold 1 :varoattno 1 :location 7} :resno 1
:resname o_orderkey :ressortgroupref 0 :resorigtbl 16546 :resorigcol 1
:resjunk false :rtindex 0 :isStartWithPseudo false} {TARGETENTRY :expr {VAR
:varno 1 :varattno 2 :vartype 23 :vartypmod -1 :varcollid 0 :varlevelsup 0
:varnoold 1 :varoattno 2 :location 7} :resno 2 :resname o_custkey
:ressortgroupref 0 :resorigtbl 16546 :resorigcol 2 :resjunk false :rtindex 0
:isStartWithPseudo false} {TARGETENTRY :expr {VAR :varno 1 :varattno 3
:vartype 1042 :vartypmod 5 :varcollid 100 :varlevelsup 0 :varnoold 1
:varoattno 3 :location 7} :resno 3 :resname o_orderstatus :ressortgroupref 0
:resorigtbl 16546 :resorigcol 3 :resjunk false :rtindex 0 :isStartWithPseudo
false} {TARGETENTRY :expr {VAR :varno 1 :varattno 4 :vartype 1700 :vartypmod
983046 :varcollid 0 :varlevelsup 0 :varnoold 1 :varoattno 4 :location 7}
:resno 4 :resname o_totalprice :ressortgroupref 0 :resorigtbl 16546
:resorigcol 4 :resjunk false :rtindex 0 :isStartWithPseudo false} {TARGETENTRY
:expr {VAR :varno 1 :varattno 5 :vartype 1114 :vartypmod 0 :varcollid 0
:varlevelsup 0 :varnoold 1 :varoattno 5 :location 7} :resno 5 :resname
o_orderdate :ressortgroupref 0 :resorigtbl 16546 :resorigcol 5 :resjunk false
:rtindex 0 :isStartWithPseudo false} {TARGETENTRY :expr {VAR :varno 1
:varattno 6 :vartype 1042 :vartypmod 19 :varcollid 100 :varlevelsup 0
:varnoold 1 :varoattno 6 :location 7} :resno 6 :resname o_orderpriority
:ressortgroupref 0 :resorigtbl 16546 :resorigcol 6 :resjunk false :rtindex 0
:isStartWithPseudo false} {TARGETENTRY :expr {VAR :varno 1 :varattno 7
:vartype 1042 :vartypmod 19 :varcollid 100 :varlevelsup 0 :varnoold 1
:varoattno 7 :location 7} :resno 7 :resname o_clerk :ressortgroupref 0
:resorigtbl 16546 :resorigcol 7 :resjunk false :rtindex 0 :isStartWithPseudo
false} {TARGETENTRY :expr {VAR :varno 1 :varattno 8 :vartype 23 :vartypmod -1
:varcollid 0 :varlevelsup 0 :varnoold 1 :varoattno 8 :location 7} :resno 8
:resname o_shippriority :ressortgroupref 0 :resorigtbl 16546 :resorigcol 8
:resjunk false :rtindex 0 :isStartWithPseudo false} {TARGETENTRY :expr {VAR
:varno 1 :varattno 9 :vartype 1043 :vartypmod 83 :varcollid 100 :varlevelsup 0
:varnoold 1 :varoattno 9 :location 7} :resno 9 :resname o_comment
:ressortgroupref 0 :resorigtbl 16546 :resorigcol 9 :resjunk false :rtindex 0
:isStartWithPseudo false}) :qual <> :lefttree <> :righttree <> :ispwj false
:paramno -1 :subparamno 0 :isinherit false :initPlan <> :distributed_keys <>
:exec_nodes {EXEC_NODES :primarynodelist <> :nodeList <> :group_oid 0
:bms_data_nodeids (b) :baselocatortype H :en_expr <> :en_relid 0 :accesstype 0
:en_dist_vars <> :bucketmapIdx -2147467264 :nodelist_is_nil false
:original_nodeList <> :dynamic_en_expr <> :bucketid 0 :bucketexpr <>
:bucketrelid 0} :extParam (b) :allParam (b) :vec_output true :hasUniqueResults
false :isDeltaTable false :operatorMemKB[0] 0 :operatorMemKB[1] 0
:operatorMaxMem 0 :parallel_enabled false :hasHashFilter false :var_list <>
:filterIndexList <> :dop 1 :recursive_union_plan_nodeid 0
:recursive_union_controller false :control_plan_nodeid 0 :is_sync_plannode
false :pred_rows 0 :pred_startup_time 0 :pred_total_time 0 :pred_max_memory 0
:spq_scan_partial false :cursor_expr_level 0 :cursor_owner_node_id 0
:scanrelid 1 :isPartTbl false :itrs 0 :pruningInfo <> :bucketInfo <>
:partScanDirection 0 :scan_qual_optimized false :predicate_pushdown_optimized
false :tablesample <> :opMem 0.00 :minMem 0.00 :maxMem 0.00 :regressCost
0.000000 :scanBatchMode false :partition_iterator_elimination false
:cstorequal <> :minMaxInfo <> :relStoreLocation 0 :is_replica_table false}
:righttree <> :ispwj false :paramno 0 :subparamno 0 :isinherit false :initPlan
<> :distributed_keys <> :exec_nodes {EXEC_NODES :primarynodelist <> :nodeList
<> :group_oid 0 :bms_data_nodeids (b) :baselocatortype H :en_expr <> :en_relid
0 :accesstype 0 :en_dist_vars <> :bucketmapIdx -2147467264 :nodelist_is_nil
false :original_nodeList <> :dynamic_en_expr <> :bucketid 0 :bucketexpr <>
:bucketrelid 0} :extParam (b) :allParam (b) :vec_output false
:hasUniqueResults false :isDeltaTable false :operatorMemKB[0] 0
:operatorMemKB[1] 0 :operatorMaxMem 0 :parallel_enabled false :hasHashFilter
false :var_list <> :filterIndexList <> :dop 1 :recursive_union_plan_nodeid 0
:recursive_union_controller false :control_plan_nodeid 0 :is_sync_plannode
false :pred_rows 0 :pred_startup_time 0 :pred_total_time 0 :pred_max_memory 0
:spq_scan_partial false :cursor_expr_level 0 :cursor_owner_node_id 0} :rtable
({RTE :alias <> :eref {ALIAS :aliasname orders :colnames ("o_orderkey"
"o_custkey" "o_orderstatus" "o_totalprice" "o_orderdate" "o_orderpriority"
"o_clerk" "o_shippriority" "o_comment")} :rtekind 0 :relname orders
:partAttrNum <> :relid 16546 :relkind r :isResultRel false :tablesample <>
:timecapsule <> :partitionOid 0 :isContainPartition false :subpartitionOid 0
:isContainSubPartition false :refSynOid 0 :ispartrel false :ignoreResetRelid
false :pname <> :partid_list <> :plist <> :relname orders :relnamespace public
:lateral false :inh false :inFromCl true :requiredPerms 2 :checkAsUser 0
:selectedCols (b 13 14 15 16 17 18 19 20 21) :modifiedCols (b) :insertedCols
(b) :updatedCols (b) :orientation 1 :securityQuals <> :subquery_pull_up false
:correlated_with_recursive_cte false :relhasbucket false :isbucket false
:bucketmapsize 0 :buckets <> :isexcluded false :sublink_pull_up false
:is_ustore false :extraUpdatedCols (b) :partitionOidList <>
:subpartitionOidList <>}) :resultRelations <> :utilityStmt <> :subplans <>
:rewindPlanIDs (b) :rowMarks <> :relationOids (o 16546) :invalItems <>
:nParamExec 0 :num_streams 0 :max_push_sql_num 0 :gather_count 0 :num_nodes 1
:instrument_option 0 :num_plannodes 2 :query_mem[0] 0 :query_mem[1] 0
:assigned_query_mem[0] 0 :assigned_query_mem[1] 0 :num_bucketmaps 0
:query_string <> :subplan_ids <> :initPlan <> :dataDestRelIndex 0
:MaxBloomFilterNum 0 :query_dop 1 :in_compute_pool false :has_obsrel false
:ng_num 0 :isRowTriggerShippable false :is_stream_plan false :cause_type 0
:spq_session_id 0 :current_id 0 :enable_adaptive_scan false :is_spq_optmized
false :write_node_index 0})