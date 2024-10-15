#This is the main CMAKE for build all components.
AUX_SOURCE_DIRECTORY(${CMAKE_CURRENT_SOURCE_DIR} TGT_planproto_SRC)

set(TGT_planproto_INC 
    ${PROTOBUF_INCLUDE_PATH}
    ${PROTOBUF_LIB_PATH}
)

set(planproto_DEF_OPTIONS ${MACRO_OPTIONS})
set(planproto_COMPILE_OPTIONS ${OPTIMIZE_OPTIONS} ${OS_OPTIONS} ${PROTECT_OPTIONS} ${WARNING_OPTIONS} ${BIN_SECURE_OPTIONS} ${CHECK_OPTIONS})
set(planproto_LINK_OPTIONS ${BIN_LINK_OPTIONS})
add_static_objtarget(gausskernel_optimizer_planproto TGT_planproto_SRC TGT_planproto_INC "${planproto_DEF_OPTIONS}" "${planproto_COMPILE_OPTIONS}" "${planproto_LINK_OPTIONS}")
