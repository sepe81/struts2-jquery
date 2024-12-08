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
<#assign colName="${attributes.name?string?replace('.', '_')}">
<#assign escapedOptionId="${attributes.grid?string?replace('.', '_')}">

options_${escapedOptionId}_colmodels_${colName} = {};
options_${escapedOptionId}_colmodels_${colName}.name = "${attributes.name?string}";
<#if attributes.jsonmap?if_exists != "">
options_${escapedOptionId}_colmodels_${colName}.jsonmap = "${attributes.jsonmap}";
<#else>
options_${escapedOptionId}_colmodels_${colName}.jsonmap = "${attributes.name}";
</#if>
<#if attributes.index?if_exists != "">
options_${escapedOptionId}_colmodels_${colName}.index = "${attributes.index}";
</#if>
<#if attributes.width?if_exists != "">
options_${escapedOptionId}_colmodels_${colName}.width = <#outputformat "JavaScript">${attributes.width}</#outputformat>;
</#if>
<#if attributes.editoptions?if_exists != "">
options_${escapedOptionId}_colmodels_${colName}.editoptions = <#outputformat "JavaScript">${attributes.editoptions}</#outputformat>;
</#if>
<#if attributes.edittype?if_exists != "">
options_${escapedOptionId}_colmodels_${colName}.edittype = "${attributes.edittype}";
</#if>
<#if attributes.editrules?if_exists != "">
options_${escapedOptionId}_colmodels_${colName}.editrules = <#outputformat "JavaScript">${attributes.editrules}</#outputformat>;
</#if>
<#if attributes.formoptions?if_exists != "">
options_${escapedOptionId}_colmodels_${colName}.formoptions = <#outputformat "JavaScript">${attributes.formoptions}</#outputformat>;
</#if>
<#if attributes.formatter?if_exists != "">
	<#if attributes.formatter == "integer"
		|| attributes.formatter == "number"
		|| attributes.formatter == "currency"
		|| attributes.formatter == "date"
		|| attributes.formatter == "email"
		|| attributes.formatter == "link"
		|| attributes.formatter == "showlink"
		|| attributes.formatter == "checkbox"
		|| attributes.formatter == "select"
		>
		options_${escapedOptionId}_colmodels_${colName}.formatter = "${attributes.formatter}";
	<#else>
		options_${escapedOptionId}_colmodels_${colName}.formatter = <#outputformat "JavaScript">${attributes.formatter}</#outputformat>;
	</#if>
</#if>
<#if attributes.formatoptions?if_exists != "">
options_${escapedOptionId}_colmodels_${colName}.formatoptions = <#outputformat "JavaScript">${attributes.formatoptions}</#outputformat>;
</#if>
<#if attributes.align?if_exists != "">
options_${escapedOptionId}_colmodels_${colName}.align = "${attributes.align}";
</#if>
<#if attributes.cssClass?if_exists != "">
options_${escapedOptionId}_colmodels_${colName}.classes = "${attributes.cssClass}";
</#if>
<#if attributes.fixed?default(false)>
options_${escapedOptionId}_colmodels_${colName}.fixed = true;
options_${escapedOptionId}.true = false;
</#if>
<#if attributes.frozen?default(false)>
options_${escapedOptionId}_colmodels_${colName}.frozen = true;
options_${escapedOptionId}.frozen = true;
</#if>
<#if attributes.editable?default(false)>
options_${escapedOptionId}_colmodels_${colName}.editable = true;
<#else>
options_${escapedOptionId}_colmodels_${colName}.editable = false;
</#if>
<#if attributes.sortable?default(true)>
options_${escapedOptionId}_colmodels_${colName}.sortable = true;
<#else>
options_${escapedOptionId}_colmodels_${colName}.sortable = false;
</#if>
<#if attributes.sorttype?if_exists != "">
options_${escapedOptionId}_colmodels_${colName}.sorttype = "${attributes.sorttype}";
</#if>
<#if attributes.resizable?default(true)>
options_${escapedOptionId}_colmodels_${colName}.resizable = true;
<#else>
options_${escapedOptionId}_colmodels_${colName}.resizable = false;
</#if>
<#if attributes.search?default(true)>
options_${escapedOptionId}_colmodels_${colName}.search = true;
	<#if attributes.searchtype?if_exists != "">
options_${escapedOptionId}_colmodels_${colName}.stype = "${attributes.searchtype}";
	</#if>
<#else>
options_${escapedOptionId}_colmodels_${colName}.search = false;
</#if>
<#if attributes.key?default(false)>
options_${escapedOptionId}_colmodels_${colName}.key = true;
</#if>
<#if attributes.hidedlg?default(false)>
options_${escapedOptionId}_colmodels_${colName}.hidedlg = true;
</#if>
<#if attributes.hidden?default(false)>
options_${escapedOptionId}_colmodels_${colName}.hidden = true;
</#if>
<#if attributes.defval?if_exists != "">
options_${escapedOptionId}_colmodels_${colName}.defval = "${attributes.defval}";
</#if>
<#if attributes.surl?if_exists != "">
options_${escapedOptionId}_colmodels_${colName}.surl = "${attributes.surl?string}";
</#if>
<#if attributes.searchoptions?if_exists != "">
options_${escapedOptionId}_colmodels_${colName}.searchoptions = <#outputformat "JavaScript">${attributes.searchoptions}</#outputformat>;
</#if>
<#if !attributes.displayTitle?default(true)>
options_${escapedOptionId}_colmodels_${colName}.title = false;
</#if>

options_${escapedOptionId}_colnames.push("${attributes.title}");
options_${escapedOptionId}_colmodels.push(options_${escapedOptionId}_colmodels_${colName});
