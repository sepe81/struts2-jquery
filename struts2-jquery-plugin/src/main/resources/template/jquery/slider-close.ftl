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
</div>
<@s.script type='text/javascript'>
jQuery(document).ready(function () {
	var options_${escapedOptionId} = {};
  <#if attributes.value! != "">
	options_${escapedOptionId}.value = ${attributes.value!'0'};
  </#if>
  <#if attributes.arrayValue! != "">
	options_${escapedOptionId}.values = ${attributes.arrayValue?string};
  </#if>
  <#if attributes.widgetid! != "">
	options_${escapedOptionId}.hiddenid = "${attributes.widgetid}";
  </#if>
  <#if attributes.animate!false>
	options_${escapedOptionId}.animate = true;
  </#if>
  <#if attributes.range! != "">
	options_${escapedOptionId}.range = "${attributes.range}";
  </#if>
  <#if attributes.max??>
	options_${escapedOptionId}.max = ${attributes.max?c};
  </#if>
  <#if attributes.min??>
	options_${escapedOptionId}.min = ${attributes.min?c};
  </#if>
  <#if attributes.orientation! != "">
	options_${escapedOptionId}.orientation = "${attributes.orientation}";
  </#if>
  <#if attributes.step??>
	options_${escapedOptionId}.step = ${attributes.step?c};
  </#if>
  <#if attributes.displayValueElement! != "">
	options_${escapedOptionId}.displayvalueelement = "${attributes.displayValueElement}";
  </#if>
  <#if attributes.onSlideTopics??>
	options_${escapedOptionId}.onslidetopics = "${attributes.onSlideTopics}";
  </#if>
<#include "/${attributes.templateDir}/jquery/base.ftl" />
<#include "/${attributes.templateDir}/jquery/interactive.ftl" />
<#include "/${attributes.templateDir}/jquery/topics.ftl" />

<#include "/${attributes.templateDir}/jquery/jquery-ui-bind.ftl" />
 });
</@s.script>
