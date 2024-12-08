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
	var options_${escapedOptionId} = {};
	options_${escapedOptionId}.type = 'text';
  <#if attributes.max??>
	options_${escapedOptionId}.max = ${attributes.max?c};
  </#if>
  <#if attributes.min??>
	options_${escapedOptionId}.min = ${attributes.min?c};
  </#if>
  <#if attributes.step??>
	options_${escapedOptionId}.step = ${attributes.step?c};
  </#if>
  <#if attributes.culture! != "">
	options_${escapedOptionId}.culture = "${attributes.culture}";
  </#if>
  <#if attributes.numberFormat! != "">
	options_${escapedOptionId}.numberFormat = "${attributes.numberFormat}";
  </#if>
  <#if attributes.page??>
	options_${escapedOptionId}.page = ${attributes.page?c};
  </#if>
  <#if attributes.mouseWheel??>
	options_${escapedOptionId}.mouseWheel = ${attributes.mouseWheel?string};
  </#if>
  <#if attributes.incremental??>
	options_${escapedOptionId}.incremental = ${attributes.incremental?string};
  </#if>
  <#include "/${attributes.templateDir}/jquery/base.ftl" />
  <#include "/${attributes.templateDir}/jquery/interactive.ftl" />
  <#include "/${attributes.templateDir}/jquery/topics.ftl" />
  <#include "/${attributes.templateDir}/jquery/action.ftl" />
  <#include "/${attributes.templateDir}/jquery/container.ftl" />
  <#include "/${attributes.templateDir}/jquery/draggable.ftl" />
  <#include "/${attributes.templateDir}/jquery/droppable.ftl" />
  <#include "/${attributes.templateDir}/jquery/resizable.ftl" />
  <#include "/${attributes.templateDir}/jquery/selectable.ftl" />
  <#include "/${attributes.templateDir}/jquery/sortable.ftl" />

  <#include "/${attributes.templateDir}/jquery/jquery-ui-bind.ftl" />
 });
</@s.script>
