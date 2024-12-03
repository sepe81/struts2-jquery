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
	options_${escapedOptionId}.datatype = "${attributes.dataType!'json'}";
  <#if attributes.href??>
	options_${escapedOptionId}.url = "<#outputformat "JavaScript">${attributes.href}</#outputformat>";
  </#if>
  <#if attributes.requestType! != "">
	options_${escapedOptionId}.mtype = "${attributes.requestType}";
  </#if>
  <#if attributes.formIds??>
	options_${escapedOptionId}.formids = "${attributes.formIds}";
  </#if>
  <#if attributes.editurl! != "">
	options_${escapedOptionId}.editurl = "${attributes.editurl?string}";
  </#if>
  <#if attributes.cellurl! != "">
	options_${escapedOptionId}.cellurl = "${attributes.cellurl?string}";
  </#if>
  <#if attributes.multiselectWidth??>
	options_${escapedOptionId}.multiselectWidth = ${attributes.multiselectWidth};
  </#if>
  <#if attributes.page??>
	options_${escapedOptionId}.page = ${attributes.page};
  </#if>
  <#if attributes.width??>
	options_${escapedOptionId}.width = ${attributes.width};
  </#if>
  <#if attributes.height??>
	options_${escapedOptionId}.height = ${attributes.height};
  <#else>
	options_${escapedOptionId}.height = 'auto';
  </#if>
  <#if attributes.pager!false>
	options_${escapedOptionId}.pager = "${escapedOptionId}_pager";
  </#if>
  <#if attributes.pagerButtons!true>
	options_${escapedOptionId}.pgbuttons = true;
  <#else>
	options_${escapedOptionId}.pgbuttons = false;
  </#if>
  <#if attributes.pagerInput!true>
	options_${escapedOptionId}.pginput = true;
  <#else>
	options_${escapedOptionId}.pginput = false;
  </#if>
  <#if attributes.pagerPosition! != "">
	options_${escapedOptionId}.pagerpos = "${attributes.pagerPosition?string}";
  </#if>
  <#if attributes.rowNum! != "">
	options_${escapedOptionId}.rowNum = ${attributes.rowNum};
  </#if>
  <#if attributes.rowList! != "">
	options_${escapedOptionId}.rowList = [${attributes.rowList}];
  </#if>
  <#if attributes.rowTotal??>
	options_${escapedOptionId}.rowTotal = ${attributes.rowTotal};
  </#if>
  <#if attributes.sortname! != "">
	options_${escapedOptionId}.sortname = "${attributes.sortname}";
  </#if>
  <#if attributes.viewrecords!false>
	options_${escapedOptionId}.viewrecords = true;
  </#if>
  <#if attributes.gridview!false>
	options_${escapedOptionId}.gridview = true;
  </#if>
  <#if attributes.autowidth!false>
	options_${escapedOptionId}.autowidth = true;
  </#if>
  <#if attributes.scroll! != "">
	options_${escapedOptionId}.scroll = ${attributes.scroll};
  </#if>
  <#if attributes.sortorder! != "">
	options_${escapedOptionId}.sortorder = "${attributes.sortorder}";
  </#if>
  <#if attributes.altRows!false>
	options_${escapedOptionId}.altRows = true;
  </#if>
  <#if attributes.altClass! != "">
	options_${escapedOptionId}.altclass = "${attributes.altClass}";
  </#if>
  <#if attributes.prmNames! != "">
	options_${escapedOptionId}.prmNames = ${attributes.prmNames};
  </#if>
  <#if attributes.direction! != "">
	options_${escapedOptionId}.direction = "${attributes.direction}";
  </#if>
  <#if attributes.recordpos! != "">
	options_${escapedOptionId}.recordpos = "${attributes.recordpos}";
  </#if>
  <#if attributes.guiStyle! != "">
	options_${escapedOptionId}.guiStyle = "${attributes.guiStyle}";
  </#if>
  <#if attributes.iconSet! != "">
	options_${escapedOptionId}.iconSet = "${attributes.iconSet}";
  </#if>
  <#if attributes.viewsortcols! != "">
	options_${escapedOptionId}.viewsortcols = <#outputformat "JavaScript">${attributes.viewsortcols}</#outputformat>;
  </#if>
  <#if attributes.toppager!false>
	options_${escapedOptionId}.toppager = true;
    options_${escapedOptionId}.toppagerElem = "${escapedOptionId}_toppager";
  </#if>
  <#if attributes.groupField! != "">
	options_${escapedOptionId}.grouping = true;
	options_${escapedOptionId}.groupingView = { groupField : <#outputformat "JavaScript">${attributes.groupField ?string}</#outputformat> };
	  <#if attributes.groupColumnShow! != "">
		options_${escapedOptionId}.groupingView.groupColumnShow = <#outputformat "JavaScript">${attributes.groupColumnShow}</#outputformat>;
	  </#if>
	  <#if attributes.groupText! != "">
		options_${escapedOptionId}.groupingView.groupText = <#outputformat "JavaScript">${attributes.groupText?string}</#outputformat>;
	  </#if>
  	  <#if attributes.groupCollapse!false>
		options_${escapedOptionId}.groupingView.groupCollapse = true;
	  </#if>
	  <#if attributes.groupOrder! != "">
		options_${escapedOptionId}.groupingView.groupOrder = <#outputformat "JavaScript">${attributes.groupOrder}</#outputformat>;
	  </#if>
	  <#if attributes.groupSummary! != "">
		options_${escapedOptionId}.groupingView.groupSummary = <#outputformat "JavaScript">${attributes.groupSummary}</#outputformat>;
	  </#if>
  	  <#if attributes.groupDataSorted!false>
		options_${escapedOptionId}.groupingView.groupDataSorted = true;
	  </#if>
  	  <#if attributes.groupShowSummaryOnHide!false>
		options_${escapedOptionId}.groupingView.showSummaryOnHide = true;
	  </#if>
	  <#if attributes.groupPlusIcon! != "">
		options_${escapedOptionId}.groupingView.plusicon = "${attributes.groupPlusIcon}";
	  </#if>
	  <#if attributes.groupMinusIcon! != "">
		options_${escapedOptionId}.groupingView.minusicon = "${attributes.groupMinusIcon}";
	  </#if>
  </#if>
  <#if attributes.navigator!false>
	options_${escapedOptionId}.navigator = true;
	  <#if attributes.navigatorEditOptions! != "">
		options_${escapedOptionId}.navigatoreditoptions = <#outputformat "JavaScript">${attributes.navigatorEditOptions}</#outputformat>;
	  </#if>
	  <#if attributes.navigatorAddOptions! != "">
		options_${escapedOptionId}.navigatoraddoptions = <#outputformat "JavaScript">${attributes.navigatorAddOptions}</#outputformat>;
	  </#if>
	  <#if attributes.navigatorDeleteOptions! != "">
		options_${escapedOptionId}.navigatordeleteoptions = <#outputformat "JavaScript">${attributes.navigatorDeleteOptions}</#outputformat>;
	  </#if>
	  <#if attributes.navigatorViewOptions! != "">
		options_${escapedOptionId}.navigatorviewoptions = <#outputformat "JavaScript">${attributes.navigatorViewOptions}</#outputformat>;
	  </#if>
	  <#if attributes.navigatorSearchOptions! != "">
		options_${escapedOptionId}.navigatorsearchoptions = <#outputformat "JavaScript">${attributes.navigatorSearchOptions}</#outputformat>;
	  </#if>
	  <#if attributes.navigatorAdd!true>
		options_${escapedOptionId}.navigatoradd = true;
	  <#else>
		options_${escapedOptionId}.navigatoradd = false;
	  </#if>
	  <#if attributes.navigatorDelete!true>
		options_${escapedOptionId}.navigatordel = true;
	  <#else>
		options_${escapedOptionId}.navigatordel = false;
	  </#if>
	  <#if attributes.navigatorEdit!true>
		options_${escapedOptionId}.navigatoredit = true;
	  <#else>
		options_${escapedOptionId}.navigatoredit = false;
	  </#if>
	  <#if attributes.navigatorRefresh!true>
		options_${escapedOptionId}.navigatorrefresh = true;
	  <#else>
		options_${escapedOptionId}.navigatorrefresh = false;
	  </#if>
	  <#if attributes.navigatorSearch!true>
		options_${escapedOptionId}.navigatorsearch = true;
	  <#else>
		options_${escapedOptionId}.navigatorsearch = false;
	  </#if>
	  <#if attributes.navigatorView!false>
		options_${escapedOptionId}.navigatorview = true;
	  <#else>
		options_${escapedOptionId}.navigatorview = false;
	  </#if>
	  <#if attributes.navigatorExtraButtons! != "">
		options_${escapedOptionId}.navigatorextrabuttons = <#outputformat "JavaScript">${attributes.navigatorExtraButtons}</#outputformat>;
	  </#if>
	  <#if attributes.navigatorInlineEditButtons!true>
		options_${escapedOptionId}.navinline = true;
	  <#else>
		options_${escapedOptionId}.navinline = false;
	  </#if>
	  <#if attributes.navigatorCloneToTop!false>
		options_${escapedOptionId}.cloneToTop = true;
	  </#if>
  </#if>
  <#if attributes.editinline!false>
	options_${escapedOptionId}.editinline = true;
  </#if>
  <#if attributes.loadonce!false>
	options_${escapedOptionId}.loadonce = true;
  </#if>
  <#if attributes.loadingText! != "">
	options_${escapedOptionId}.loadtext = "${attributes.loadingText}";
  </#if>
  <#if attributes.filter!false>
	options_${escapedOptionId}.filter = true;
  </#if>
  <#if attributes.filter!false && attributes.filterOptions! != "">
	options_${escapedOptionId}.filteroptions = ${attributes.filterOptions};
  </#if>
  <#if attributes.multiselect!false>
	options_${escapedOptionId}.multiselect = true;
  </#if>
  <#if attributes.multiboxonly!false>
	options_${escapedOptionId}.multiboxonly = true;
  </#if>
  <#if attributes.caption! != "">
	options_${escapedOptionId}.caption = "${attributes.caption}";
  </#if>
  <#if attributes.sortableRows!false>
	options_${escapedOptionId}.sortableRows = true;
  </#if>
  <#if attributes.shrinkToFit??>
	options_${escapedOptionId}.shrinkToFit = ${attributes.shrinkToFit?string};
  </#if>
  <#if attributes.autoencode!true>
	options_${escapedOptionId}.autoencode = true;
  </#if>
  <#if attributes.cellEdit!false>
	options_${escapedOptionId}.cellEdit = true;
  </#if>
  <#if attributes.footerrow!false>
	options_${escapedOptionId}.footerrow = true;
  </#if>
  <#if attributes.hiddengrid!false>
	options_${escapedOptionId}.hiddengrid = true;
  </#if>
  <#if attributes.hidegrid??>
	options_${escapedOptionId}.hidegrid = ${attributes.hidegrid?string};
  </#if>
  <#if attributes.hoverrows??>
	options_${escapedOptionId}.hoverrows = ${attributes.hoverrows?string};
  </#if>
  <#if attributes.rownumbers!false>
	options_${escapedOptionId}.rownumbers = true;
  </#if>
  <#if attributes.scrollrows!false>
	options_${escapedOptionId}.scrollrows = true;
  </#if>
  <#if attributes.userDataOnFooter!false>
	options_${escapedOptionId}.userDataOnFooter = true;
  </#if>
  <#if attributes.onSelectRowTopics! != "">
	options_${escapedOptionId}.onselectrowtopics = "${attributes.onSelectRowTopics}";
  </#if>
  <#if attributes.onSelectAllTopics! != "">
	options_${escapedOptionId}.onselectalltopics = "${attributes.onSelectAllTopics}";
  </#if>
  <#if attributes.onPagingTopics! != "">
	options_${escapedOptionId}.onpagingtopics = "${attributes.onPagingTopics}";
  </#if>
  <#if attributes.onSortColTopics! != "">
	options_${escapedOptionId}.onsortcoltopics = "${attributes.onSortColTopics}";
  </#if>
  <#if attributes.onCellSelectTopics! != "">
	options_${escapedOptionId}.oncellselecttopics = "${attributes.onCellSelectTopics}";
  </#if>
  <#if attributes.onGridCompleteTopics! != "">
	options_${escapedOptionId}.ongridcompletetopics = "${attributes.onGridCompleteTopics}";
  </#if>
  <#if attributes.onEditInlineAfterSaveTopics! != "">
	options_${escapedOptionId}.oneisave = "${attributes.onEditInlineAfterSaveTopics}";
  </#if>
  <#if attributes.onEditInlineBeforeTopics! != "">
	options_${escapedOptionId}.oneibefore = "${attributes.onEditInlineBeforeTopics}";
  </#if>
  <#if attributes.onEditInlineSuccessTopics! != "">
	options_${escapedOptionId}.oneisuccess = "${attributes.onEditInlineSuccessTopics}";
  </#if>
  <#if attributes.onEditInlineErrorTopics! != "">
	options_${escapedOptionId}.oneierror = "${attributes.onEditInlineErrorTopics}";
  </#if>
  <#if attributes.onCellEditSuccessTopics! != "">
	options_${escapedOptionId}.oncesuccess = "${attributes.onCellEditSuccessTopics}";
  </#if>
  <#if attributes.onCellEditErrorTopics! != "">
	options_${escapedOptionId}.onceerror = "${attributes.onCellEditErrorTopics}";
  </#if>
  <#if attributes.onSubGridRowExpanded! != "">
	options_${escapedOptionId}.onsgrowexpanded = "${attributes.onSubGridRowExpanded}";
  </#if>
  <#if attributes.onClickGroupTopics! != "">
	options_${escapedOptionId}.onclickgroup = "${attributes.onClickGroupTopics}";
  </#if>
  <#if attributes.onDblClickRowTopics! != "">
	options_${escapedOptionId}.ondblclickrow = "${attributes.onDblClickRowTopics}";
  </#if>
  <#if attributes.onRightClickRowTopics! != "">
	options_${escapedOptionId}.onrightclickrow = "${attributes.onRightClickRowTopics}";
  </#if>
  <#if attributes.reloadTopics! != "">
	options_${escapedOptionId}.reloadtopics = "${attributes.reloadTopics}";
  </#if>
  <#if attributes.connectWith! != "">
	options_${escapedOptionId}.connectWith = "${attributes.connectWith}";
  </#if>


	options_${escapedOptionId}.colNames = options_${escapedOptionId}_colnames;
	options_${escapedOptionId}.colModel = options_${escapedOptionId}_colmodels;
	options_${escapedOptionId}.jsonReader = {};
  <#if attributes.gridModel! != "">
	options_${escapedOptionId}.jsonReader.root = "${attributes.gridModel}";
  <#else>
	options_${escapedOptionId}.jsonReader.root = "gridModel";
  </#if>
  <#if attributes.loadonce!false>
  <#else>
	options_${escapedOptionId}.jsonReader.page = "page";
	options_${escapedOptionId}.jsonReader.total = "total";
	options_${escapedOptionId}.jsonReader.records = "records";
  </#if>
	options_${escapedOptionId}.jsonReader.repeatitems = false;

  <#include "/${attributes.templateDir}/jquery/draggable.ftl" />
  <#include "/${attributes.templateDir}/jquery/droppable.ftl" />
  <#include "/${attributes.templateDir}/jquery/resizable.ftl" />
  <#include "/${attributes.templateDir}/jquery/selectable.ftl" />
  <#include "/${attributes.templateDir}/jquery/sortable.ftl" />
<#include "/${attributes.templateDir}/jquery/base.ftl" />
<#include "/${attributes.templateDir}/jquery/interactive.ftl" />
<#include "/${attributes.templateDir}/jquery/topics.ftl" />

<#if !attributes.subGrid!false>
	<#assign escapedId="${attributes.id?string?replace('.', '\\\\\\\\.')}">
	jQuery.struts2_jquery_grid.bind(jQuery('#${escapedId}'),options_${escapedOptionId});
 });
</script>
<#else>
	<#if attributes.subGridUrl! != "">
	options_${escapedOptionId}.url = "${attributes.subGridUrl?string}";
	</#if>
	<#assign escapedParentOptionId="${attributes.parentGrid?string?replace('.', '_')}">
	options_${escapedParentOptionId}.subgridoptions = options_${escapedOptionId};
</#if>
