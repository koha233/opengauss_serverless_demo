({PLANNEDSTMT :commandType 1 :queryId 0 :hasReturning false :hasModifyingCTE
false :hasIgnore false :canSetTag true :transientPlan false :dependsOnRole
false :is_flt_frame false :planTree {VECTOROW :plan_node_id 1 :parent_node_id
0 :exec_type 0 :startup_cost 367582.33 :total_cost 367582.33 :plan_rows 6
:multiple 1 :plan_width 280 :targetlist ({TARGETENTRY :expr {VAR :varno 65001
:varattno 1 :vartype 1042 :vartypmod 5 :varcollid 100 :varlevelsup 0 :varnoold
1 :varoattno 9 :location -1} :resno 1 :resname l_returnflag :ressortgroupref 1
:resorigtbl 16559 :resorigcol 9 :resjunk false :rtindex 0 :isStartWithPseudo
false} {TARGETENTRY :expr {VAR :varno 65001 :varattno 2 :vartype 1042
:vartypmod 5 :varcollid 100 :varlevelsup 0 :varnoold 1 :varoattno 10 :location
-1} :resno 2 :resname l_linestatus :ressortgroupref 2 :resorigtbl 16559
:resorigcol 10 :resjunk false :rtindex 0 :isStartWithPseudo false}
{TARGETENTRY :expr {VAR :varno 65001 :varattno 3 :vartype 1700 :vartypmod -1
:varcollid 0 :varlevelsup 0 :varnoold 0 :varoattno 0 :location -1} :resno 3
:resname sum_qty :ressortgroupref 0 :resorigtbl 0 :resorigcol 0 :resjunk false
:rtindex 0 :isStartWithPseudo false} {TARGETENTRY :expr {VAR :varno 65001
:varattno 4 :vartype 1700 :vartypmod -1 :varcollid 0 :varlevelsup 0 :varnoold
0 :varoattno 0 :location -1} :resno 4 :resname sum_base_price :ressortgroupref
0 :resorigtbl 0 :resorigcol 0 :resjunk false :rtindex 0 :isStartWithPseudo
false} {TARGETENTRY :expr {VAR :varno 65001 :varattno 5 :vartype 1700
:vartypmod -1 :varcollid 0 :varlevelsup 0 :varnoold 0 :varoattno 0 :location
-1} :resno 5 :resname sum_disc_price :ressortgroupref 0 :resorigtbl 0
:resorigcol 0 :resjunk false :rtindex 0 :isStartWithPseudo false} {TARGETENTRY
:expr {VAR :varno 65001 :varattno 6 :vartype 1700 :vartypmod -1 :varcollid 0
:varlevelsup 0 :varnoold 0 :varoattno 0 :location -1} :resno 6 :resname
sum_charge :ressortgroupref 0 :resorigtbl 0 :resorigcol 0 :resjunk false
:rtindex 0 :isStartWithPseudo false} {TARGETENTRY :expr {VAR :varno 65001
:varattno 7 :vartype 1700 :vartypmod -1 :varcollid 0 :varlevelsup 0 :varnoold
0 :varoattno 0 :location -1} :resno 7 :resname avg_qty :ressortgroupref 0
:resorigtbl 0 :resorigcol 0 :resjunk false :rtindex 0 :isStartWithPseudo
false} {TARGETENTRY :expr {VAR :varno 65001 :varattno 8 :vartype 1700
:vartypmod -1 :varcollid 0 :varlevelsup 0 :varnoold 0 :varoattno 0 :location
-1} :resno 8 :resname avg_price :ressortgroupref 0 :resorigtbl 0 :resorigcol 0
:resjunk false :rtindex 0 :isStartWithPseudo false} {TARGETENTRY :expr {VAR
:varno 65001 :varattno 9 :vartype 1700 :vartypmod -1 :varcollid 0 :varlevelsup
0 :varnoold 0 :varoattno 0 :location -1} :resno 9 :resname avg_disc
:ressortgroupref 0 :resorigtbl 0 :resorigcol 0 :resjunk false :rtindex 0
:isStartWithPseudo false} {TARGETENTRY :expr {VAR :varno 65001 :varattno 10
:vartype 20 :vartypmod -1 :varcollid 0 :varlevelsup 0 :varnoold 0 :varoattno 0
:location -1} :resno 10 :resname count_order :ressortgroupref 0 :resorigtbl 0
:resorigcol 0 :resjunk false :rtindex 0 :isStartWithPseudo false}) :qual <>
:lefttree {VECSORT :plan_node_id 2 :parent_node_id 1 :exec_type 0
:startup_cost 367582.32 :total_cost 367582.33 :plan_rows 6 :multiple 1
:plan_width 280 :targetlist ({TARGETENTRY :expr {VAR :varno 65001 :varattno 1
:vartype 1042 :vartypmod 5 :varcollid 100 :varlevelsup 0 :varnoold 1
:varoattno 9 :location -1} :resno 1 :resname l_returnflag :ressortgroupref 1
:resorigtbl 16559 :resorigcol 9 :resjunk false :rtindex 0 :isStartWithPseudo
false} {TARGETENTRY :expr {VAR :varno 65001 :varattno 2 :vartype 1042
:vartypmod 5 :varcollid 100 :varlevelsup 0 :varnoold 1 :varoattno 10 :location
-1} :resno 2 :resname l_linestatus :ressortgroupref 2 :resorigtbl 16559
:resorigcol 10 :resjunk false :rtindex 0 :isStartWithPseudo false}
{TARGETENTRY :expr {VAR :varno 65001 :varattno 3 :vartype 1700 :vartypmod -1
:varcollid 0 :varlevelsup 0 :varnoold 0 :varoattno 0 :location -1} :resno 3
:resname sum_qty :ressortgroupref 0 :resorigtbl 0 :resorigcol 0 :resjunk false
:rtindex 0 :isStartWithPseudo false} {TARGETENTRY :expr {VAR :varno 65001
:varattno 4 :vartype 1700 :vartypmod -1 :varcollid 0 :varlevelsup 0 :varnoold
0 :varoattno 0 :location -1} :resno 4 :resname sum_base_price :ressortgroupref
0 :resorigtbl 0 :resorigcol 0 :resjunk false :rtindex 0 :isStartWithPseudo
false} {TARGETENTRY :expr {VAR :varno 65001 :varattno 5 :vartype 1700
:vartypmod -1 :varcollid 0 :varlevelsup 0 :varnoold 0 :varoattno 0 :location
-1} :resno 5 :resname sum_disc_price :ressortgroupref 0 :resorigtbl 0
:resorigcol 0 :resjunk false :rtindex 0 :isStartWithPseudo false} {TARGETENTRY
:expr {VAR :varno 65001 :varattno 6 :vartype 1700 :vartypmod -1 :varcollid 0
:varlevelsup 0 :varnoold 0 :varoattno 0 :location -1} :resno 6 :resname
sum_charge :ressortgroupref 0 :resorigtbl 0 :resorigcol 0 :resjunk false
:rtindex 0 :isStartWithPseudo false} {TARGETENTRY :expr {VAR :varno 65001
:varattno 7 :vartype 1700 :vartypmod -1 :varcollid 0 :varlevelsup 0 :varnoold
0 :varoattno 0 :location -1} :resno 7 :resname avg_qty :ressortgroupref 0
:resorigtbl 0 :resorigcol 0 :resjunk false :rtindex 0 :isStartWithPseudo
false} {TARGETENTRY :expr {VAR :varno 65001 :varattno 8 :vartype 1700
:vartypmod -1 :varcollid 0 :varlevelsup 0 :varnoold 0 :varoattno 0 :location
-1} :resno 8 :resname avg_price :ressortgroupref 0 :resorigtbl 0 :resorigcol 0
:resjunk false :rtindex 0 :isStartWithPseudo false} {TARGETENTRY :expr {VAR
:varno 65001 :varattno 9 :vartype 1700 :vartypmod -1 :varcollid 0 :varlevelsup
0 :varnoold 0 :varoattno 0 :location -1} :resno 9 :resname avg_disc
:ressortgroupref 0 :resorigtbl 0 :resorigcol 0 :resjunk false :rtindex 0
:isStartWithPseudo false} {TARGETENTRY :expr {VAR :varno 65001 :varattno 10
:vartype 20 :vartypmod -1 :varcollid 0 :varlevelsup 0 :varnoold 0 :varoattno 0
:location -1} :resno 10 :resname count_order :ressortgroupref 0 :resorigtbl 0
:resorigcol 0 :resjunk false :rtindex 0 :isStartWithPseudo false}) :qual <>
:lefttree {VECAGG :plan_node_id 3 :parent_node_id 2 :exec_type 0 :startup_cost
367582.13 :total_cost 367582.24 :plan_rows 6 :multiple 1 :plan_width 280
:targetlist ({TARGETENTRY :expr {VAR :varno 65001 :varattno 1 :vartype 1042
:vartypmod 5 :varcollid 100 :varlevelsup 0 :varnoold 1 :varoattno 9 :location
9} :resno 1 :resname l_returnflag :ressortgroupref 1 :resorigtbl 16559
:resorigcol 9 :resjunk false :rtindex 0 :isStartWithPseudo false} {TARGETENTRY
:expr {VAR :varno 65001 :varattno 2 :vartype 1042 :vartypmod 5 :varcollid 100
:varlevelsup 0 :varnoold 1 :varoattno 10 :location 25} :resno 2 :resname
l_linestatus :ressortgroupref 2 :resorigtbl 16559 :resorigcol 10 :resjunk
false :rtindex 0 :isStartWithPseudo false} {TARGETENTRY :expr {AGGREF
:aggfnoid 2114 :aggtype 1700 :aggtrantype 1700 :agghas_collectfn true
:aggstage 0 :aggsplittype 0 :aggcollid 0 :inputcollid 0 :aggdirectargs <>
:args ({TARGETENTRY :expr {VAR :varno 65001 :varattno 3 :vartype 1700
:vartypmod 983046 :varcollid 0 :varlevelsup 0 :varnoold 1 :varoattno 5
:location 45} :resno 1 :resname <> :ressortgroupref 0 :resorigtbl 0
:resorigcol 0 :resjunk false :rtindex 0 :isStartWithPseudo false}) :aggorder
<> :aggdistinct <> :aggstar false :aggkind n :aggvariadic false :agglevelsup 0
:location 41 :aggargtypes <> :aggsplit 0 :aggtranstype 0 :aggfilter <>} :resno
3 :resname sum_qty :ressortgroupref 0 :resorigtbl 0 :resorigcol 0 :resjunk
false :rtindex 0 :isStartWithPseudo false} {TARGETENTRY :expr {AGGREF
:aggfnoid 2114 :aggtype 1700 :aggtrantype 1700 :agghas_collectfn true
:aggstage 0 :aggsplittype 0 :aggcollid 0 :inputcollid 0 :aggdirectargs <>
:args ({TARGETENTRY :expr {VAR :varno 65001 :varattno 4 :vartype 1700
:vartypmod 983046 :varcollid 0 :varlevelsup 0 :varnoold 1 :varoattno 6
:location 75} :resno 1 :resname <> :ressortgroupref 0 :resorigtbl 0
:resorigcol 0 :resjunk false :rtindex 0 :isStartWithPseudo false}) :aggorder
<> :aggdistinct <> :aggstar false :aggkind n :aggvariadic false :agglevelsup 0
:location 71 :aggargtypes <> :aggsplit 0 :aggtranstype 0 :aggfilter <>} :resno
4 :resname sum_base_price :ressortgroupref 0 :resorigtbl 0 :resorigcol 0
:resjunk false :rtindex 0 :isStartWithPseudo false} {TARGETENTRY :expr {AGGREF
:aggfnoid 2114 :aggtype 1700 :aggtrantype 1700 :agghas_collectfn true
:aggstage 0 :aggsplittype 0 :aggcollid 0 :inputcollid 0 :aggdirectargs <>
:args ({TARGETENTRY :expr {OPEXPR :opno 1760 :opfuncid 1726 :opresulttype 1700
:opretset false :opcollid 0 :inputcollid 0 :args ({VAR :varno 65001 :varattno
4 :vartype 1700 :vartypmod 983046 :varcollid 0 :varlevelsup 0 :varnoold 1
:varoattno 6 :location 117} {OPEXPR :opno 1759 :opfuncid 1725 :opresulttype
1700 :opretset false :opcollid 0 :inputcollid 0 :args ({CONST :consttype 1700
:consttypmod -1 :constcollid 0 :constlen -1 :constbyval false :constisnull
false :ismaxvalue false :location -1 :constvalue 8 [ 32 0 0 0 0 -128 1 0 ]
:cursor_data  :row_count 0 :cur_dno -1 :is_open false :found false :not_found
false :null_open false :null_fetch false} {VAR :varno 65001 :varattno 5
:vartype 1700 :vartypmod 983046 :varcollid 0 :varlevelsup 0 :varnoold 1
:varoattno 7 :location 140}) :location 138}) :location 133} :resno 1 :resname
<> :ressortgroupref 0 :resorigtbl 0 :resorigcol 0 :resjunk false :rtindex 0
:isStartWithPseudo false}) :aggorder <> :aggdistinct <> :aggstar false
:aggkind n :aggvariadic false :agglevelsup 0 :location 113 :aggargtypes <>
:aggsplit 0 :aggtranstype 0 :aggfilter <>} :resno 5 :resname sum_disc_price
:ressortgroupref 0 :resorigtbl 0 :resorigcol 0 :resjunk false :rtindex 0
:isStartWithPseudo false} {TARGETENTRY :expr {AGGREF :aggfnoid 2114 :aggtype
1700 :aggtrantype 1700 :agghas_collectfn true :aggstage 0 :aggsplittype 0
:aggcollid 0 :inputcollid 0 :aggdirectargs <> :args ({TARGETENTRY :expr
{OPEXPR :opno 1760 :opfuncid 1726 :opresulttype 1700 :opretset false :opcollid
0 :inputcollid 0 :args ({OPEXPR :opno 1760 :opfuncid 1726 :opresulttype 1700
:opretset false :opcollid 0 :inputcollid 0 :args ({VAR :varno 65001 :varattno
4 :vartype 1700 :vartypmod 983046 :varcollid 0 :varlevelsup 0 :varnoold 1
:varoattno 6 :location 178} {OPEXPR :opno 1759 :opfuncid 1725 :opresulttype
1700 :opretset false :opcollid 0 :inputcollid 0 :args ({CONST :consttype 1700
:consttypmod -1 :constcollid 0 :constlen -1 :constbyval false :constisnull
false :ismaxvalue false :location -1 :constvalue 8 [ 32 0 0 0 0 -128 1 0 ]
:cursor_data  :row_count 0 :cur_dno -1 :is_open false :found false :not_found
false :null_open false :null_fetch false} {VAR :varno 65001 :varattno 5
:vartype 1700 :vartypmod 983046 :varcollid 0 :varlevelsup 0 :varnoold 1
:varoattno 7 :location 201}) :location 199}) :location 194} {OPEXPR :opno 1758
:opfuncid 1724 :opresulttype 1700 :opretset false :opcollid 0 :inputcollid 0
:args ({CONST :consttype 1700 :consttypmod -1 :constcollid 0 :constlen -1
:constbyval false :constisnull false :ismaxvalue false :location -1
:constvalue 8 [ 32 0 0 0 0 -128 1 0 ] :cursor_data  :row_count 0 :cur_dno -1
:is_open false :found false :not_found false :null_open false :null_fetch
false} {VAR :varno 65001 :varattno 6 :vartype 1700 :vartypmod 983046
:varcollid 0 :varlevelsup 0 :varnoold 1 :varoattno 8 :location 220}) :location
218}) :location 213} :resno 1 :resname <> :ressortgroupref 0 :resorigtbl 0
:resorigcol 0 :resjunk false :rtindex 0 :isStartWithPseudo false}) :aggorder
<> :aggdistinct <> :aggstar false :aggkind n :aggvariadic false :agglevelsup 0
:location 174 :aggargtypes <> :aggsplit 0 :aggtranstype 0 :aggfilter <>}
:resno 6 :resname sum_charge :ressortgroupref 0 :resorigtbl 0 :resorigcol 0
:resjunk false :rtindex 0 :isStartWithPseudo false} {TARGETENTRY :expr {AGGREF
:aggfnoid 2103 :aggtype 1700 :aggtrantype 1231 :agghas_collectfn true
:aggstage 0 :aggsplittype 0 :aggcollid 0 :inputcollid 0 :aggdirectargs <>
:args ({TARGETENTRY :expr {VAR :varno 65001 :varattno 3 :vartype 1700
:vartypmod 983046 :varcollid 0 :varlevelsup 0 :varnoold 1 :varoattno 5
:location 249} :resno 1 :resname <> :ressortgroupref 0 :resorigtbl 0
:resorigcol 0 :resjunk false :rtindex 0 :isStartWithPseudo false}) :aggorder
<> :aggdistinct <> :aggstar false :aggkind n :aggvariadic false :agglevelsup 0
:location 245 :aggargtypes <> :aggsplit 0 :aggtranstype 0 :aggfilter <>}
:resno 7 :resname avg_qty :ressortgroupref 0 :resorigtbl 0 :resorigcol 0
:resjunk false :rtindex 0 :isStartWithPseudo false} {TARGETENTRY :expr {AGGREF
:aggfnoid 2103 :aggtype 1700 :aggtrantype 1231 :agghas_collectfn true
:aggstage 0 :aggsplittype 0 :aggcollid 0 :inputcollid 0 :aggdirectargs <>
:args ({TARGETENTRY :expr {VAR :varno 65001 :varattno 4 :vartype 1700
:vartypmod 983046 :varcollid 0 :varlevelsup 0 :varnoold 1 :varoattno 6
:location 279} :resno 1 :resname <> :ressortgroupref 0 :resorigtbl 0
:resorigcol 0 :resjunk false :rtindex 0 :isStartWithPseudo false}) :aggorder
<> :aggdistinct <> :aggstar false :aggkind n :aggvariadic false :agglevelsup 0
:location 275 :aggargtypes <> :aggsplit 0 :aggtranstype 0 :aggfilter <>}
:resno 8 :resname avg_price :ressortgroupref 0 :resorigtbl 0 :resorigcol 0
:resjunk false :rtindex 0 :isStartWithPseudo false} {TARGETENTRY :expr {AGGREF
:aggfnoid 2103 :aggtype 1700 :aggtrantype 1231 :agghas_collectfn true
:aggstage 0 :aggsplittype 0 :aggcollid 0 :inputcollid 0 :aggdirectargs <>
:args ({TARGETENTRY :expr {VAR :varno 65001 :varattno 5 :vartype 1700
:vartypmod 983046 :varcollid 0 :varlevelsup 0 :varnoold 1 :varoattno 7
:location 316} :resno 1 :resname <> :ressortgroupref 0 :resorigtbl 0
:resorigcol 0 :resjunk false :rtindex 0 :isStartWithPseudo false}) :aggorder
<> :aggdistinct <> :aggstar false :aggkind n :aggvariadic false :agglevelsup 0
:location 312 :aggargtypes <> :aggsplit 0 :aggtranstype 0 :aggfilter <>}
:resno 9 :resname avg_disc :ressortgroupref 0 :resorigtbl 0 :resorigcol 0
:resjunk false :rtindex 0 :isStartWithPseudo false} {TARGETENTRY :expr {AGGREF
:aggfnoid 2803 :aggtype 20 :aggtrantype 20 :agghas_collectfn true :aggstage 0
:aggsplittype 0 :aggcollid 0 :inputcollid 0 :aggdirectargs <> :args <>
:aggorder <> :aggdistinct <> :aggstar true :aggkind n :aggvariadic false
:agglevelsup 0 :location 343 :aggargtypes <> :aggsplit 0 :aggtranstype 0
:aggfilter <>} :resno 10 :resname count_order :ressortgroupref 0 :resorigtbl 0
:resorigcol 0 :resjunk false :rtindex 0 :isStartWithPseudo false}) :qual <>
:lefttree {CSTORESCAN :plan_node_id 4 :parent_node_id 3 :exec_type 0
:startup_cost 0.00 :total_cost 133417.25 :plan_rows 5854122 :multiple 1
:plan_width 48 :targetlist ({TARGETENTRY :expr {VAR :varno 1 :varattno 9
:vartype 1042 :vartypmod 5 :varcollid 100 :varlevelsup 0 :varnoold 1
:varoattno 9 :location 9} :resno 1 :resname <> :ressortgroupref 0 :resorigtbl
0 :resorigcol 0 :resjunk false :rtindex 0 :isStartWithPseudo false}
{TARGETENTRY :expr {VAR :varno 1 :varattno 10 :vartype 1042 :vartypmod 5
:varcollid 100 :varlevelsup 0 :varnoold 1 :varoattno 10 :location 25} :resno 2
:resname <> :ressortgroupref 0 :resorigtbl 0 :resorigcol 0 :resjunk false
:rtindex 0 :isStartWithPseudo false} {TARGETENTRY :expr {VAR :varno 1
:varattno 5 :vartype 1700 :vartypmod 983046 :varcollid 0 :varlevelsup 0
:varnoold 1 :varoattno 5 :location 45} :resno 3 :resname <> :ressortgroupref 0
:resorigtbl 0 :resorigcol 0 :resjunk false :rtindex 0 :isStartWithPseudo
false} {TARGETENTRY :expr {VAR :varno 1 :varattno 6 :vartype 1700 :vartypmod
983046 :varcollid 0 :varlevelsup 0 :varnoold 1 :varoattno 6 :location 75}
:resno 4 :resname <> :ressortgroupref 0 :resorigtbl 0 :resorigcol 0 :resjunk
false :rtindex 0 :isStartWithPseudo false} {TARGETENTRY :expr {VAR :varno 1
:varattno 7 :vartype 1700 :vartypmod 983046 :varcollid 0 :varlevelsup 0
:varnoold 1 :varoattno 7 :location 140} :resno 5 :resname <> :ressortgroupref
0 :resorigtbl 0 :resorigcol 0 :resjunk false :rtindex 0 :isStartWithPseudo
false} {TARGETENTRY :expr {VAR :varno 1 :varattno 8 :vartype 1700 :vartypmod
983046 :varcollid 0 :varlevelsup 0 :varnoold 1 :varoattno 8 :location 220}
:resno 6 :resname <> :ressortgroupref 0 :resorigtbl 0 :resorigcol 0 :resjunk
false :rtindex 0 :isStartWithPseudo false}) :qual ({OPEXPR :opno 2063
:opfuncid 2055 :opresulttype 16 :opretset false :opcollid 0 :inputcollid 0
:args ({VAR :varno 1 :varattno 11 :vartype 1114 :vartypmod 0 :varcollid 0
:varlevelsup 0 :varnoold 1 :varoattno 11 :location 393} {CONST :consttype 1114
:consttypmod -1 :constcollid 0 :constlen 8 :constbyval true :constisnull false
:ismaxvalue false :location -1 :constvalue 8 [ 0 -32 -71 -9 -121 -41 -1 -1 ]
:cursor_data  :row_count 0 :cur_dno -1 :is_open false :found false :not_found
false :null_open false :null_fetch false}) :location 404}) :lefttree <>
:righttree <> :ispwj false :paramno -1 :subparamno 0 :isinherit false
:initPlan <> :distributed_keys <> :exec_nodes {EXEC_NODES :primarynodelist <>
:nodeList <> :group_oid 0 :bms_data_nodeids (b) :baselocatortype H :en_expr <>
:en_relid 0 :accesstype 0 :en_dist_vars <> :bucketmapIdx -2147467264
:nodelist_is_nil false :original_nodeList <> :dynamic_en_expr <> :bucketid 0
:bucketexpr <> :bucketrelid 0} :extParam (b) :allParam (b) :vec_output true
:hasUniqueResults false :isDeltaTable false :operatorMemKB[0] 0
:operatorMemKB[1] 0 :operatorMaxMem 0 :parallel_enabled false :hasHashFilter
false :var_list <> :filterIndexList <> :dop 1 :recursive_union_plan_nodeid 0
:recursive_union_controller false :control_plan_nodeid 0 :is_sync_plannode
false :pred_rows 0 :pred_startup_time 0 :pred_total_time 0 :pred_max_memory 0
:spq_scan_partial false :cursor_expr_level 0 :cursor_owner_node_id 0
:scanrelid 1 :isPartTbl false :itrs 0 :pruningInfo <> :bucketInfo <>
:partScanDirection 0 :scan_qual_optimized false :predicate_pushdown_optimized
false :tablesample <> :opMem 0.00 :minMem 0.00 :maxMem 0.00 :regressCost
0.000000 :scanBatchMode false :partition_iterator_elimination false
:cstorequal ({OPEXPR :opno 2063 :opfuncid 2055 :opresulttype 16 :opretset
false :opcollid 0 :inputcollid 0 :args ({VAR :varno 1 :varattno 11 :vartype
1114 :vartypmod 0 :varcollid 0 :varlevelsup 0 :varnoold 1 :varoattno 11
:location 393} {CONST :consttype 1114 :consttypmod -1 :constcollid 0 :constlen
8 :constbyval true :constisnull false :ismaxvalue false :location -1
:constvalue 8 [ 0 -32 -71 -9 -121 -41 -1 -1 ] :cursor_data  :row_count 0
:cur_dno -1 :is_open false :found false :not_found false :null_open false
:null_fetch false}) :location 404}) :minMaxInfo <> :relStoreLocation 0
:is_replica_table false} :righttree <> :ispwj false :paramno 0 :subparamno 0
:isinherit false :initPlan <> :distributed_keys <> :exec_nodes {EXEC_NODES
:primarynodelist <> :nodeList <> :group_oid 0 :bms_data_nodeids (b)
:baselocatortype H :en_expr <> :en_relid 0 :accesstype 0 :en_dist_vars <>
:bucketmapIdx -2147467264 :nodelist_is_nil false :original_nodeList <>
:dynamic_en_expr <> :bucketid 0 :bucketexpr <> :bucketrelid 0} :extParam (b)
:allParam (b) :vec_output true :hasUniqueResults false :isDeltaTable false
:operatorMemKB[0] 0 :operatorMemKB[1] 0 :operatorMaxMem 0 :parallel_enabled
false :hasHashFilter false :var_list <> :filterIndexList <> :dop 1
:recursive_union_plan_nodeid 0 :recursive_union_controller false
:control_plan_nodeid 0 :is_sync_plannode false :pred_rows 0 :pred_startup_time
0 :pred_total_time 0 :pred_max_memory 0 :spq_scan_partial false
:cursor_expr_level 0 :cursor_owner_node_id 0 :aggstrategy 2 :aggsplittype 0
:numCols 2 :grpColIdx 1 2 :grpOperators 1054 1054 :numGroups 6 :groupingSets
<> :chain <> :is_final false :single_node true :aggParams (b) :opMem 65536.00
:minMem 0.03 :maxMem 0.94 :regressCost 292250.610000 :is_sonichash true
:skew_optimize 0 :unique_check false} :righttree <> :ispwj false :paramno 0
:subparamno 0 :isinherit false :initPlan <> :distributed_keys <> :exec_nodes
{EXEC_NODES :primarynodelist <> :nodeList <> :group_oid 0 :bms_data_nodeids
(b) :baselocatortype H :en_expr <> :en_relid 0 :accesstype 0 :en_dist_vars <>
:bucketmapIdx -2147467264 :nodelist_is_nil false :original_nodeList <>
:dynamic_en_expr <> :bucketid 0 :bucketexpr <> :bucketrelid 0} :extParam (b)
:allParam (b) :vec_output true :hasUniqueResults false :isDeltaTable false
:operatorMemKB[0] 0 :operatorMemKB[1] 0 :operatorMaxMem 0 :parallel_enabled
false :hasHashFilter false :var_list <> :filterIndexList <> :dop 1
:recursive_union_plan_nodeid 0 :recursive_union_controller false
:control_plan_nodeid 0 :is_sync_plannode false :pred_rows 0 :pred_startup_time
0 :pred_total_time 0 :pred_max_memory 0 :spq_scan_partial false
:cursor_expr_level 0 :cursor_owner_node_id 0 :numCols 2 :sortColIdx 1 2
:sortOperators 1058 1058 :collations 100 100 :nullsFirst false false :opMem
65536.00 :minMem 0.01 :maxMem 3.33 :regressCost 24.500000} :righttree <>
:ispwj false :paramno 0 :subparamno 0 :isinherit false :initPlan <>
:distributed_keys <> :exec_nodes {EXEC_NODES :primarynodelist <> :nodeList <>
:group_oid 0 :bms_data_nodeids (b) :baselocatortype H :en_expr <> :en_relid 0
:accesstype 0 :en_dist_vars <> :bucketmapIdx -2147467264 :nodelist_is_nil
false :original_nodeList <> :dynamic_en_expr <> :bucketid 0 :bucketexpr <>
:bucketrelid 0} :extParam (b) :allParam (b) :vec_output false
:hasUniqueResults false :isDeltaTable false :operatorMemKB[0] 0
:operatorMemKB[1] 0 :operatorMaxMem 0 :parallel_enabled false :hasHashFilter
false :var_list <> :filterIndexList <> :dop 1 :recursive_union_plan_nodeid 0
:recursive_union_controller false :control_plan_nodeid 0 :is_sync_plannode
false :pred_rows 0 :pred_startup_time 0 :pred_total_time 0 :pred_max_memory 0
:spq_scan_partial false :cursor_expr_level 0 :cursor_owner_node_id 0} :rtable
({RTE :alias <> :eref {ALIAS :aliasname lineitem :colnames ("l_orderkey"
"l_partkey" "l_suppkey" "l_linenumber" "l_quantity" "l_extendedprice"
"l_discount" "l_tax" "l_returnflag" "l_linestatus" "l_shipdate" "l_commitdate"
"l_receiptdate" "l_shipinstruct" "l_shipmode" "l_comment")} :rtekind 0
:relname lineitem :partAttrNum <> :relid 16559 :relkind r :isResultRel false
:tablesample <> :timecapsule <> :partitionOid 0 :isContainPartition false
:subpartitionOid 0 :isContainSubPartition false :refSynOid 0 :ispartrel false
:ignoreResetRelid false :pname <> :partid_list <> :plist <> :relname lineitem
:relnamespace public :lateral false :inh false :inFromCl true :requiredPerms 2
:checkAsUser 0 :selectedCols (b 17 18 19 20 21 22 23) :modifiedCols (b)
:insertedCols (b) :updatedCols (b) :orientation 1 :securityQuals <>
:subquery_pull_up false :correlated_with_recursive_cte false :relhasbucket
false :isbucket false :bucketmapsize 0 :buckets <> :isexcluded false
:sublink_pull_up false :is_ustore false :extraUpdatedCols (b)
:partitionOidList <> :subpartitionOidList <>}) :resultRelations <>
:utilityStmt <> :subplans <> :rewindPlanIDs (b) :rowMarks <> :relationOids (o
16559) :invalItems <> :nParamExec 0 :num_streams 0 :max_push_sql_num 0
:gather_count 0 :num_nodes 1 :instrument_option 0 :num_plannodes 4
:query_mem[0] 0 :query_mem[1] 0 :assigned_query_mem[0] 0
:assigned_query_mem[1] 0 :num_bucketmaps 0 :query_string <> :subplan_ids <>
:initPlan <> :dataDestRelIndex 0 :MaxBloomFilterNum 0 :query_dop 1
:in_compute_pool false :has_obsrel false :ng_num 0 :isRowTriggerShippable
false :is_stream_plan false :cause_type 0 :spq_session_id 0 :current_id 0
:enable_adaptive_scan false :is_spq_optmized false :write_node_index 0})