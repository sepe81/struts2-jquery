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
		</li>
<#if attributes.targets! != "">
  <#assign escapedOptionId="${attributes.escapedId}">
<@s.script type='text/javascript'>
jQuery(document).ready(function () {
	var options_${escapedOptionId} = {};
	<#if attributes.openDialog! != "">
	options_${escapedOptionId}.opendialog = "${attributes.openDialog}";
	</#if>
    <#if attributes.jqueryaction??>
        options_${escapedOptionId}.jqueryaction = "anchor";
    </#if>
    <#if attributes.id??>
        options_${escapedOptionId}.id = "${attributes.id}_link";
    </#if>
    <#if attributes.name??>
        options_${escapedOptionId}.name = "${attributes.name}";
    </#if>
  <#include "/${attributes.templateDir}/jquery/interactive.ftl" />
  <#include "/${attributes.templateDir}/jquery/topics.ftl" />
  <#include "/${attributes.templateDir}/jquery/action.ftl" />
  <#include "/${attributes.templateDir}/jquery/validation.ftl" />

<#assign escapedId="${attributes.id?string?replace('.', '\\\\\\\\.')}">
<#assign escapedOptionId="${attributes.escapedId}">
	jQuery.struts2_jquery_tree.bind(jQuery('#${escapedId}_link'),options_${escapedOptionId});
 });
</@s.script>
</#if>
