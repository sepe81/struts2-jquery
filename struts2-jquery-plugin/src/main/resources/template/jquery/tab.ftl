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
<@s.script type='text/javascript'>
jQuery(document).ready(function () {
	var options_tab_${escapedOptionId} = {};
  <#if attributes.id! != "">
	options_tab_${escapedOptionId}.id = "${attributes.id}";
  </#if>
  <#if attributes.cssStyle! != "">
	options_tab_${escapedOptionId}.cssstyle = "${attributes.cssStyle}";
  </#if>
  <#if attributes.cssClass! != "">
	options_tab_${escapedOptionId}.cssclass = "${attributes.cssClass}";
  </#if>
  <#if attributes.formIds! != "">
	options_tab_${escapedOptionId}.formIds = "${attributes.formIds}";
  </#if>
  <#if attributes.href! != "">
	options_tab_${escapedOptionId}.href = "<#outputformat "JavaScript">${attributes.href}</#outputformat>";
  <#elseif attributes.target! != "" >
	options_tab_${escapedOptionId}.href = "#${attributes.target}";
  <#else>
	options_tab_${escapedOptionId}.href = "#";
  </#if>
  <#if attributes.label! != "">
	options_tab_${escapedOptionId}.label = "${attributes.label}";
  </#if>
  <#if attributes.closable??>
	options_tab_${escapedOptionId}.closable = ${attributes.closable?string};
  </#if>
  <#if attributes.parentTabbedPanel! != "">
  	<#assign escapedParentOptionId="${attributes.parentTabbedPanel?string?replace('.', '_')}">
  	var tabs = jQuery('#${attributes.parentTabbedPanel?string?replace('.', '\\\\\\\\.')}').data('taboptions');
  	if(!tabs) {
  		tabs = [];
  	}
  	tabs.push(options_tab_${escapedOptionId});
  	jQuery('#${attributes.parentTabbedPanel?string?replace('.', '\\\\\\\\.')}').data('taboptions', tabs);
  </#if>
 });
</@s.script>
