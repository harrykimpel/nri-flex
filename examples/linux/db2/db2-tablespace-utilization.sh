#!/bin/sh

cd /home/$1/sqllib

. ./db2profile

db2 connect to $2

db2 -x "SELECT integer(TBSP_UTILIZATION_PERCENT), TBSP_TYPE, TBSP_CONTENT_TYPE, TBSP_USING_AUTO_STORAGE, TBSP_AUTO_RESIZE_ENABLED, TBSP_STATE, TBSP_TOTAL_SIZE_KB / 1024, TBSP_USED_SIZE_KB / 1024, TBSP_PAGE_TOP * TBSP_PAGE_SIZE / 1024 / 1024 from sysibmadm.TBSP_UTILIZATION"

exit 0