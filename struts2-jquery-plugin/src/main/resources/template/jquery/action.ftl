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
  <#if attributes.targets! != "">
	options_${escapedOptionId}.targets = "${attributes.targets}";
  </#if>
  <#if attributes.hrefUrl! != "">
	options_${escapedOptionId}.href = "${attributes.hrefUrl}";
  <#else>
	options_${escapedOptionId}.href = "#";
  </#if>
  <#if attributes.hrefParameter! != "">
	options_${escapedOptionId}.hrefparameter = "<#outputformat "JavaScript">${attributes.hrefParameter}</#outputformat>";
  </#if>
  <#if attributes.formIds??>
	options_${escapedOptionId}.formids = "${attributes.formIds}";
  </#if>
  <#if attributes.onClickTopics??>
	options_${escapedOptionId}.onclick = "${attributes.onClickTopics}";
  </#if>
  <#if attributes.indicator??>
	options_${escapedOptionId}.indicatorid = "${attributes.indicator}";
  </#if>
  <#if attributes.loadingText??>
	options_${escapedOptionId}.loadingtext = "${attributes.loadingText}";
  </#if>
  <#if attributes.errorText??>
	options_${escapedOptionId}.errortext = "${attributes.errorText}";
  </#if>
  <#if attributes.errorElementId??>
	options_${escapedOptionId}.errorelementid = "${attributes.errorElementId}";
  </#if>
  <#if attributes.dataType??>
	options_${escapedOptionId}.datatype = "${attributes.dataType}";
  </#if>
  <#if attributes.requestType??>
	options_${escapedOptionId}.requesttype = "${attributes.requestType}";
  </#if>
  <#if attributes.effect??>
	options_${escapedOptionId}.effect = "${attributes.effect}";
	<#if attributes.effectDuration??>
	options_${escapedOptionId}.effectduration = ${attributes.effectDuration};
	</#if>
	<#if attributes.effectMode??>
	options_${escapedOptionId}.effectmode = "${attributes.effectMode}";
	</#if>
	<#if attributes.effectOptions??>
	options_${escapedOptionId}.effectoptions = <#outputformat "JavaScript">${attributes.effectOptions}</#outputformat>;
	<#else>
	options_${escapedOptionId}.effectoptions = {};
	</#if>
  </#if>
  <#if attributes.timeout??>
	options_${escapedOptionId}.timeout = ${attributes.timeout};
  </#if>
  <#if attributes.listenTopics??>
	options_${escapedOptionId}.listentopics = "${attributes.listenTopics}";
  </#if>
  <#if attributes.onEffectCompleteTopics??>
	options_${escapedOptionId}.oneffect = "${attributes.onEffectCompleteTopics}";
  </#if>
   <#if attributes.clearForm!false>
	options_${escapedOptionId}.clearform = true;
    </#if>
   <#if attributes.resetForm!false>
	options_${escapedOptionId}.resetform = true;
    </#if>
   <#if attributes.iframe!false>
	options_${escapedOptionId}.iframe = true;
    </#if>
   <#if attributes.replaceTarget!false>
	options_${escapedOptionId}.replaceTarget = true;
    </#if>
