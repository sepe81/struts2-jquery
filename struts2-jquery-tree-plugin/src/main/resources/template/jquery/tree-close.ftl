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
	</ul>
</div>
<#assign escapedOptionId="${attributes.escapedId}">
<@s.script type='text/javascript'>
jQuery(document).ready(function () {
	var options_${escapedOptionId} = {};
	<#if attributes.jstreetheme! != "">
	options_${escapedOptionId}.treetheme = "${attributes.jstreetheme}";
	</#if>
	<#if attributes.jstreethemeVariant! != "">
	options_${escapedOptionId}.treethemeVariant = "${attributes.jstreethemeVariant}";
	</#if>
	<#if attributes.jstreethemeResponsive??>
	options_${escapedOptionId}.treethemeResponsive = ${attributes.jstreethemeResponsive?string};
  	</#if>
  	<#if attributes.animation??>
	options_${escapedOptionId}.animation = ${attributes.animation?c};
  	</#if>
  	<#if attributes.initiallyOpen??>
	options_${escapedOptionId}.initially_open = ${attributes.initiallyOpen?string};
  	</#if>
	<#if attributes.htmlTitles??>
	options_${escapedOptionId}.html_titles = ${attributes.htmlTitles?string};
	</#if>
	<#if attributes.rtl??>
	options_${escapedOptionId}.rtl = ${attributes.rtl?string};
	</#if>
	<#if attributes.href! != "">
	options_${escapedOptionId}.url = "<#outputformat "JavaScript">${attributes.href}</#outputformat>";
	</#if>
  	<#if attributes.nodeTargets??>
	options_${escapedOptionId}.nodeTargets = "${attributes.nodeTargets}";
  	</#if>
  	<#if attributes.nodeHref??>
	options_${escapedOptionId}.nodeHref = "${attributes.nodeHref}";
  	</#if>
  	<#if attributes.nodeHref??>
	options_${escapedOptionId}.nodeHrefParamName = "${attributes.nodeHrefParamName!'id'}";
  	</#if>
  	<#if attributes.onClickTopics??>
	options_${escapedOptionId}.onclick = "${attributes.onClickTopics}";
  	</#if>
	<#if attributes.openAllOnLoad??>
	options_${escapedOptionId}.openload = ${attributes.openAllOnLoad?string};
	</#if>
	<#if attributes.openAllOnRefresh??>
	options_${escapedOptionId}.openrefresh = ${attributes.openAllOnRefresh?string};
	</#if>
    <#if attributes.showThemeDots??>
        options_${escapedOptionId}.dots = ${attributes.showThemeDots?string};
    </#if>
    <#if attributes.showThemeIcons??>
        options_${escapedOptionId}.icons = ${attributes.showThemeIcons?string};
    </#if>
	<#if attributes.contextmenu! != "">
	options_${escapedOptionId}.contextmenu = <#outputformat "JavaScript">${attributes.contextmenu?string}</#outputformat>;
	</#if>
	<#if attributes.plugins! != "">
	options_${escapedOptionId}.pluginsconf = <#outputformat "JavaScript">${attributes.plugins?string}</#outputformat>;
	</#if>
	<#if attributes.types! != "">
	options_${escapedOptionId}.types = <#outputformat "JavaScript">${attributes.types?string}</#outputformat>;
	</#if>
	<#if attributes.checkbox??>
	options_${escapedOptionId}.checkbox = <#outputformat "JavaScript">${attributes.checkbox?string}</#outputformat>;
	</#if>
	<#if attributes.checkboxTwoState??>
	options_${escapedOptionId}.two_state = ${attributes.checkboxTwoState?string};
	</#if>
	<#if attributes.checkboxToogleAllTopics! != "">
	options_${escapedOptionId}.toogleAllTopics = "${attributes.checkboxToogleAllTopics?string}";
	</#if>
	<#if attributes.checkboxHideTopics! != "">
	options_${escapedOptionId}.checkHideTopics = "${attributes.checkboxHideTopics?string}";
	</#if>
	<#if attributes.checkboxShowTopics! != "">
	options_${escapedOptionId}.checkShowTopics = "${attributes.checkboxShowTopics?string}";
	</#if>
    <#if attributes.checkboxCheckAllTopics! != "">
    options_${escapedOptionId}.checkAllTopics = "${attributes.checkboxCheckAllTopics?string}";
    </#if>
    <#if attributes.checkboxUncheckAllTopics! != "">
    options_${escapedOptionId}.uncheckAllTopics = "${attributes.checkboxUncheckAllTopics?string}";
    </#if>
    <#if attributes.searchTopic! != "">
    options_${escapedOptionId}.searchTopic = "${attributes.searchTopic?string}";
    </#if>
    <#if attributes.searchClearTopic! != "">
    options_${escapedOptionId}.searchClearTopic = "${attributes.searchClearTopic?string}";
    </#if>
    <#if attributes.searchElementId! != "">
    options_${escapedOptionId}.searchElementId = "${attributes.searchElementId?string}";
    </#if>
    <#if attributes.onSearchCompleteTopics! != "">
    options_${escapedOptionId}.onSearchCompleteTopics = "${attributes.onSearchCompleteTopics?string}";
    </#if>
    <#if attributes.onSearchClearTopics! != "">
    options_${escapedOptionId}.onSearchClearTopics = "${attributes.onSearchClearTopics?string}";
    </#if>

  <#include "/${attributes.templateDir}/jquery/topics.ftl" />
  <#include "/${attributes.templateDir}/jquery/base.ftl" />

	<#assign escapedId="${attributes.id?string?replace('.', '\\\\\\\\.')}">
	jQuery.struts2_jquery_tree.bind(jQuery('#${escapedId}'),options_${escapedOptionId});
 });
</@s.script>
