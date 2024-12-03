<#--
/*
 * Licensed to the Apache Software Foundation (ASF) under one
 * or more contributor license agreements.  See the NOTICE file
 * distributed with this work for additional information
 * regarding copyright ownership.  The ASF licenses this file
 * to you under the Apache License, Version 2.0 (the
 * "License"); you may not use this file except in compliance
 * with the License.  You may obtain a copy of the License at
 *
 *  http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing,
 * software distributed under the License is distributed on an
 * "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
 * KIND, either express or implied.  See the License for the
 * specific language governing permissions and limitations
 * under the License.
 */
-->
<#assign escapedOptionId="${attributes.escapedId}">
</table>
<@s.script type='text/javascript'>
jQuery(document).ready(function () {
    var options_${escapedOptionId} = {};
    options_${escapedOptionId}.theme="${attributes.datatablesTheme!'default'}";
    <#include "/${attributes.templateDir}/jquery/topics.ftl" />
    <#include "/${attributes.templateDir}/jquery/base.ftl" />
    <#if (attributes.autoWidth!true) == false>
    options_${escapedOptionId}.autoWidth = false
    </#if>
    <#if (attributes.deferRender!false) == true>
    options_${escapedOptionId}.deferRender = true;
    </#if>
    <#if (attributes.info!true) == false>
    options_${escapedOptionId}.info = false;
    </#if>
    <#if (attributes.lengthChange!true) == false>
    options_${escapedOptionId}.lengthChange = false;
    </#if>
    <#if (attributes.ordering!true) == false>
    options_${escapedOptionId}.ordering = false;
    </#if>
    <#if (attributes.paging!true) == false>
    options_${escapedOptionId}.paging = false;
    </#if>
    <#if (attributes.processing!false) == true>
    options_${escapedOptionId}.processing = true;
    </#if>
    <#if (attributes.scrollX!false) == true>
    options_${escapedOptionId}.scrollX = true;
    </#if>
    <#if (attributes.scrollY!false) == true>
    options_${escapedOptionId}.scrollY = true;
    </#if>
    <#if (attributes.searching!true) == false>
    options_${escapedOptionId}.searching = false;
    </#if>
    <#if (attributes.serverSide!false) == true>
    options_${escapedOptionId}.serverSide = true;
    </#if>
    <#if (attributes.stateSave!false) == true>
    options_${escapedOptionId}.stateSave = true;
    </#if>
    <#if attributes.data! != "">
    options_${escapedOptionId}.data = <#outputformat "JavaScript">${attributes.data!'[]'}</#outputformat>;
    </#if>
    <#if attributes.ajax! != "">
    options_${escapedOptionId}.ajax = <#outputformat "JavaScript">${attributes.ajax!'{}'}</#outputformat>;
    </#if>
    <#if attributes.columns! != "">
    options_${escapedOptionId}.columns = <#outputformat "JavaScript">${attributes.columns!'[]'}</#outputformat>;
    </#if>
    <#if attributes.columnDefs! != "">
    options_${escapedOptionId}.columnDefs = <#outputformat "JavaScript">${attributes.columnDefs!'[]'}</#outputformat>;
    </#if>
    <#if attributes.deferLoading?? >
    options_${escapedOptionId}.deferLoading = ${attributes.deferLoading!0};
    </#if>
    <#if attributes.displayStart??>
    options_${escapedOptionId}.displayStart = ${attributes.displayStart!0};
    </#if>
    <#if attributes.dom! != "">
    options_${escapedOptionId}.dom = "<#outputformat "JavaScript">${attributes.dom!''}</#outputformat>";
    </#if>
    <#if attributes.lengthMenu! != "">
    options_${escapedOptionId}.lengthMenu = <#outputformat "JavaScript">${attributes.lengthMenu!'[10,25,50,100]'}</#outputformat>;
    </#if>
    <#if attributes.pageLength?? >
    options_${escapedOptionId}.pageLength = <#outputformat "JavaScript">${attributes.pageLength!10}</#outputformat>;
    </#if>
    <#if attributes.pagingType! != "">
    options_${escapedOptionId}.pagingType = "<#outputformat "JavaScript">${attributes.pagingType!'full_numbers'}</#outputformat>";
    </#if>
    <#if attributes.order! != "">
    options_${escapedOptionId}.order = <#outputformat "JavaScript">${attributes.order!"[[0,'asc']]"}</#outputformat>;
    </#if>
    <#if attributes.orderCellsTop?? >
    options_${escapedOptionId}.orderCellsTop = <#outputformat "JavaScript">${attributes.orderCellsTop!'false'}</#outputformat>;
    </#if>
    <#if attributes.orderClasses?? >
    options_${escapedOptionId}.orderClasses = <#outputformat "JavaScript">${attributes.orderClasses!'true'}</#outputformat>;
    </#if>
    <#if attributes.orderFixed! != "">
    options_${escapedOptionId}.orderFixed = <#outputformat "JavaScript">${attributes.orderFixed!'null'}</#outputformat>;
    </#if>
    <#if attributes.orderCellsTop?? >
    options_${escapedOptionId}.orderCellsTop = <#outputformat "JavaScript">${attributes.orderCellsTop!'false'}</#outputformat>;
    </#if>
    <#if attributes.orderMulti! != "">
    options_${escapedOptionId}.orderMulti = <#outputformat "JavaScript">${attributes.orderMulti!'true'}</#outputformat>;
    </#if>
    <#if attributes.renderer! != "">
    options_${escapedOptionId}.renderer = "<#outputformat "JavaScript">${attributes.renderer!''}</#outputformat>";
    </#if>
    <#if attributes.rowId! != "">
    options_${escapedOptionId}.rowId = "<#outputformat "JavaScript">${attributes.rowId!''}</#outputformat>";
    </#if>
    <#if attributes.scrollCollapse?? >
    options_${escapedOptionId}.scrollCollapse = <#outputformat "JavaScript">${attributes.scrollCollapse?string('true','false')}</#outputformat>;
    </#if>
    <#if attributes.search! != "">
    options_${escapedOptionId}.search = <#outputformat "JavaScript">${attributes.search!''}</#outputformat>;
    </#if>
    <#if attributes.searchCols! != "">
    options_${escapedOptionId}.searchCols = <#outputformat "JavaScript">${attributes.searchCols!'null'}</#outputformat>;
    </#if>
    <#if attributes.searchDelay?? >
    options_${escapedOptionId}.searchDelay = <#outputformat "JavaScript">${attributes.searchDelay!'null'}</#outputformat>;
    </#if>
    <#if attributes.stateDuration?? >
    options_${escapedOptionId}.stateDuration = ${attributes.stateDuration!7200};
    </#if>
    <#if attributes.stripeClasses! != "">
    options_${escapedOptionId}.stripeClasses = <#outputformat "JavaScript">${attributes.stripeClasses!"['odd','even']"}</#outputformat>;
    </#if>
    <#if attributes.responsive! != "">
    options_${escapedOptionId}.responsive = <#outputformat "JavaScript">${attributes.responsive!'false'}</#outputformat>;
    </#if>
    <#if attributes.autoFill! != "">
    options_${escapedOptionId}.autoFill = <#outputformat "JavaScript">${attributes.autoFill!'false'}</#outputformat>;
    </#if>
    <#if attributes.buttons! != "">
    options_${escapedOptionId}.buttons = <#outputformat "JavaScript">${attributes.buttons!'false'}</#outputformat>;
    </#if>
    <#if attributes.colReorder! != "">
    options_${escapedOptionId}.colReorder = <#outputformat "JavaScript">${attributes.colReorder!'false'}</#outputformat>;
    </#if>
    <#if attributes.fixedColumns! != "">
    options_${escapedOptionId}.fixedColumns = <#outputformat "JavaScript">${attributes.fixedColumns!'false'}</#outputformat>;
    </#if>
    <#if attributes.fixedHeader! != "">
    options_${escapedOptionId}.fixedHeader = <#outputformat "JavaScript">${attributes.fixedHeader!'false'}</#outputformat>;
    </#if>
    <#if attributes.keys! != "">
    options_${escapedOptionId}.keys = ${attributes.keys!'false'};
    </#if>
    <#if attributes.rowGroup! != "">
    options_${escapedOptionId}.rowGroup = <#outputformat "JavaScript">${attributes.rowGroup!'false'}</#outputformat>;
    </#if>
    <#if attributes.rowReorder! != "">
    options_${escapedOptionId}.rowReorder = <#outputformat "JavaScript">${attributes.rowReorder!'false'}</#outputformat>;
    </#if>
    <#if attributes.scroller! != "">
    options_${escapedOptionId}.scroller = <#outputformat "JavaScript">${attributes.scroller!'false'}</#outputformat>;
    </#if>
    <#if attributes.select! != "">
    options_${escapedOptionId}.select = <#outputformat "JavaScript">${attributes.select!'false'}</#outputformat>;
    </#if>
    <#if attributes.createdRow??>
    options_${escapedOptionId}.createdRow = <#outputformat "JavaScript">${attributes.createdRow?string}</#outputformat>;
  </#if>
    <#if attributes.drawCallback??>
    options_${escapedOptionId}.drawCallback = <#outputformat "JavaScript">${attributes.drawCallback?string}</#outputformat>;
  </#if>
    <#if attributes.footerCallback??>
    options_${escapedOptionId}.footerCallback = "<#outputformat "JavaScript">${attributes.footerCallback?string}</#outputformat>";
  </#if>
    <#if attributes.formatNumber??>
    options_${escapedOptionId}.formatNumber = <#outputformat "JavaScript">${attributes.formatNumber?string}</#outputformat>;
  </#if>
    <#if attributes.headerCallback??>
    options_${escapedOptionId}.headerCallback = <#outputformat "JavaScript">${attributes.headerCallback?string}</#outputformat>;
  </#if>
    <#if attributes.infoCallback??>
    options_${escapedOptionId}.infoCallback = <#outputformat "JavaScript">${attributes.infoCallback?string}</#outputformat>;
  </#if>
    <#if attributes.initComplete??>
    options_${escapedOptionId}.initComplete = <#outputformat "JavaScript">${attributes.initComplete?string}</#outputformat>;
  </#if>
    <#if attributes.preDrawCallback??>
    options_${escapedOptionId}.preDrawCallback = <#outputformat "JavaScript">${attributes.preDrawCallback?string}</#outputformat>;
  </#if>
    <#if attributes.rowCallback??>
    options_${escapedOptionId}.rowCallback = <#outputformat "JavaScript">${attributes.rowCallback?string}</#outputformat>;
  </#if>
    <#if attributes.stateLoadCallback??>
    options_${escapedOptionId}.stateLoadCallback = <#outputformat "JavaScript">${attributes.stateLoadCallback?string}</#outputformat>;
  </#if>
    <#if attributes.stateLoaded??>
    options_${escapedOptionId}.stateLoaded = <#outputformat "JavaScript">${attributes.stateLoaded?string}</#outputformat>;
  </#if>
    <#if attributes.stateLoadParams??>
    options_${escapedOptionId}.stateLoadParams = <#outputformat "JavaScript">${attributes.stateLoadParams?string}</#outputformat>;
  </#if>
    <#if attributes.stateSaveCallback??>
    options_${escapedOptionId}.stateSaveCallback = <#outputformat "JavaScript">${attributes.stateSaveCallback?string}</#outputformat>;
  </#if>
    <#if attributes.stateSaveParams??>
    options_${escapedOptionId}.stateSaveParams = <#outputformat "JavaScript">${attributes.stateSaveParams?string}</#outputformat>;
  </#if>
<#if attributes.clearTableTopics??>
    options_${escapedOptionId}.clearTableTopics = "<#outputformat "JavaScript">${attributes.clearTableTopics?string}</#outputformat>";
  </#if>
<#if attributes.ajaxReloadTopics??>
    options_${escapedOptionId}.ajaxReloadTopics = "<#outputformat "JavaScript">${attributes.ajaxReloadTopics?string}</#outputformat>";
  </#if>
<#if attributes.redrawTopics??>
    options_${escapedOptionId}.redrawTopics = "<#outputformat "JavaScript">${attributes.redrawTopics?string}</#outputformat>";
  </#if>
<#if attributes.orderTopics??>
    options_${escapedOptionId}.orderTopics = "<#outputformat "JavaScript">${attributes.orderTopics?string}</#outputformat>";
  </#if>
<#if attributes.pageTopics??>
    options_${escapedOptionId}.pageTopics = "<#outputformat "JavaScript">${attributes.pageTopics?string}</#outputformat>";
  </#if>
<#if attributes.pageLengthTopics??>
    options_${escapedOptionId}.pageLengthTopics = "<#outputformat "JavaScript">${attributes.pageLengthTopics?string}</#outputformat>";
  </#if>
<#if attributes.searchTopics??>
    options_${escapedOptionId}.searchTopics = "<#outputformat "JavaScript">${attributes.searchTopics?string}</#outputformat>";
  </#if>
<#if attributes.stateClearTopics??>
    options_${escapedOptionId}.stateClearTopics = "<#outputformat "JavaScript">${attributes.stateClearTopics?string}</#outputformat>";
  </#if>
<#if attributes.stateSaveTopics??>
    options_${escapedOptionId}.stateSaveTopics = "<#outputformat "JavaScript">${attributes.stateSaveTopics?string}</#outputformat>";
  </#if>
<#if attributes.onColumnSizingTopics??>
    options_${escapedOptionId}.onColumnSizingTopics = "<#outputformat "JavaScript">${attributes.onColumnSizingTopics?string}</#outputformat>";
  </#if>
<#if attributes.onColumnVisibilityTopics??>
    options_${escapedOptionId}.onColumnVisibilityTopics = "<#outputformat "JavaScript">${attributes.onColumnVisibilityTopics?string}</#outputformat>";
  </#if>
<#if attributes.onDestroyTopics??>
    options_${escapedOptionId}.onDestroyTopics = "<#outputformat "JavaScript">${attributes.onDestroyTopics?string}</#outputformat>";
  </#if>
<#if attributes.onDrawTopics??>
    options_${escapedOptionId}.onDrawTopics = "<#outputformat "JavaScript">${attributes.onDrawTopics?string}</#outputformat>";
  </#if>
<#if attributes.onProcessingErrorTopics??>
    options_${escapedOptionId}.onProcessingErrorTopics = "<#outputformat "JavaScript">${attributes.onProcessingErrorTopics?string}</#outputformat>";
  </#if>
<#if attributes.onInitCompleteTopics??>
    options_${escapedOptionId}.onInitCompleteTopics = "<#outputformat "JavaScript">${attributes.onInitCompleteTopics?string}</#outputformat>";
  </#if>
<#if attributes.onPageLengthChangeTopics??>
    options_${escapedOptionId}.onPageLengthChangeTopics = "<#outputformat "JavaScript">${attributes.onPageLengthChangeTopics?string}</#outputformat>";
  </#if>
<#if attributes.onOrderTopics??>
    options_${escapedOptionId}.onOrderTopics = "<#outputformat "JavaScript">${attributes.onOrderTopics?string}</#outputformat>";
  </#if>
<#if attributes.onPageChangeTopics??>
    options_${escapedOptionId}.onPageChangeTopics = "<#outputformat "JavaScript">${attributes.onPageChangeTopics?string}</#outputformat>";
  </#if>
<#if attributes.onInitStartTopics??>
    options_${escapedOptionId}.onInitStartTopics = "<#outputformat "JavaScript">${attributes.onInitStartTopics?string}</#outputformat>";
  </#if>
<#if attributes.onProcessingTopics??>
    options_${escapedOptionId}.onProcessingTopics = "<#outputformat "JavaScript">${attributes.onProcessingTopics?string}</#outputformat>";
  </#if>
<#if attributes.onSearchTopics??>
    options_${escapedOptionId}.onSearchTopics = "<#outputformat "JavaScript">${attributes.onSearchTopics?string}</#outputformat>";
  </#if>
<#if attributes.onStateLoadedTopics??>
    options_${escapedOptionId}.onStateLoadedTopics = "<#outputformat "JavaScript">${attributes.onStateLoadedTopics?string}</#outputformat>";
  </#if>
<#if attributes.onStateLoadingTopics??>
    options_${escapedOptionId}.onStateLoadingTopics = "<#outputformat "JavaScript">${attributes.onStateLoadingTopics?string}</#outputformat>";
  </#if>
<#if attributes.onStateSavingTopics??>
    options_${escapedOptionId}.onStateSavingTopics = "<#outputformat "JavaScript">${attributes.onStateSavingTopics?string}</#outputformat>";
  </#if>

<#if attributes.onAutoFillTopics??>
    options_${escapedOptionId}.onAutoFillTopics = "<#outputformat "JavaScript">${attributes.onAutoFillTopics?string}</#outputformat>";
  </#if>
<#if attributes.onBeforeAutoFillTopics??>
    options_${escapedOptionId}.onBeforeAutoFillTopics = "<#outputformat "JavaScript">${attributes.onBeforeAutoFillTopics?string}</#outputformat>";
  </#if>
<#if attributes.onButtonActionTopics??>
    options_${escapedOptionId}.onButtonActionTopics = "<#outputformat "JavaScript">${attributes.onButtonActionTopics?string}</#outputformat>";
  </#if>
<#if attributes.onColumnReorderTopics??>
    options_${escapedOptionId}.onColumnReorderTopics = "<#outputformat "JavaScript">${attributes.onColumnReorderTopics?string}</#outputformat>";
  </#if>
<#if attributes.onKeyBlurTopics??>
    options_${escapedOptionId}.onKeyBlurTopics = "<#outputformat "JavaScript">${attributes.onKeyBlurTopics?string}</#outputformat>";
  </#if>
<#if attributes.onKeyFocusTopics??>
    options_${escapedOptionId}.onKeyFocusTopics = "<#outputformat "JavaScript">${attributes.onKeyFocusTopics?string}</#outputformat>";
  </#if>
<#if attributes.onOtherKeyTopics??>
    options_${escapedOptionId}.onOtherKeyTopics = "<#outputformat "JavaScript">${attributes.onOtherKeyTopics?string}</#outputformat>";
  </#if>
<#if attributes.onResponsiveDisplayTopics??>
    options_${escapedOptionId}.onResponsiveDisplayTopics = "<#outputformat "JavaScript">${attributes.onResponsiveDisplayTopics?string}</#outputformat>";
  </#if>
<#if attributes.onResponsiveResizeTopics??>
    options_${escapedOptionId}.onResponsiveResizeTopics = "<#outputformat "JavaScript">${attributes.onResponsiveResizeTopics?string}</#outputformat>";
  </#if>
<#if attributes.onRowGroupPointChangedTopics??>
    options_${escapedOptionId}.onRowGroupPointChangedTopics = "<#outputformat "JavaScript">${attributes.onRowGroupPointChangedTopics?string}</#outputformat>";
  </#if>
<#if attributes.onRowReorderTopics??>
    options_${escapedOptionId}.onRowReorderTopics = "<#outputformat "JavaScript">${attributes.onRowReorderTopics?string}</#outputformat>";
  </#if>
<#if attributes.onRowReorderedTopics??>
    options_${escapedOptionId}.onRowReorderedTopics = "<#outputformat "JavaScript">${attributes.onRowReorderedTopics?string}</#outputformat>";
  </#if>
<#if attributes.onDeselectTopics??>
    options_${escapedOptionId}.onDeselectTopics = "<#outputformat "JavaScript">${attributes.onDeselectTopics?string}</#outputformat>";
  </#if>
<#if attributes.onSelectTopics??>
    options_${escapedOptionId}.onSelectTopics = "<#outputformat "JavaScript">${attributes.onSelectTopics?string}</#outputformat>";
  </#if>
<#if attributes.onSelectItemsTopics??>
    options_${escapedOptionId}.onSelectItemsTopics = "<#outputformat "JavaScript">${attributes.onSelectItemsTopics?string}</#outputformat>";
  </#if>
<#if attributes.onSelectStyleTopics??>
    options_${escapedOptionId}.onSelectStyleTopics = "<#outputformat "JavaScript">${attributes.onSelectStyleTopics?string}</#outputformat>";
  </#if>
<#if attributes.onUserSelectTopics??>
    options_${escapedOptionId}.onUserSelectTopics = "<#outputformat "JavaScript">${attributes.onUserSelectTopics?string}</#outputformat>";
  </#if>

    <#assign escapedId="${attributes.id?string?replace('.', '\\\\\\\\.')}">
    jQuery.struts2_jquery_datatables.bind(jQuery('#${escapedId}'),options_${escapedOptionId});
});
</@s.script>
