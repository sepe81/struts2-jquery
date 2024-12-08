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
  <#if attributes.sortable!false>
	options_${escapedOptionId}.sortable = true;<#rt/>
   </#if>
  <#if attributes.sortableOptions! != "">
 	options_${escapedOptionId}.sortableoptions = "<#outputformat "JavaScript">${attributes.sortableOptions}</#outputformat>";<#rt/>
   </#if>
  <#if attributes.sortableOnBeforeStopTopics! != "">
 	options_${escapedOptionId}.sortableonbeforestoptopics = "${attributes.sortableOnBeforeStopTopics}";<#rt/>
   </#if>
  <#if attributes.sortableOnStopTopics! != "">
 	options_${escapedOptionId}.sortableonstoptopics = "${attributes.sortableOnStopTopics}";<#rt/>
   </#if>
  <#if attributes.sortableOnStartTopics! != "">
 	options_${escapedOptionId}.sortableonstarttopics = "${attributes.sortableOnStartTopics}";<#rt/>
   </#if>
  <#if attributes.sortableOnSortTopics! != "">
 	options_${escapedOptionId}.sortableonsorttopics = "${attributes.sortableOnSortTopics}";<#rt/>
   </#if>
  <#if attributes.sortableOnActivateTopics! != "">
 	options_${escapedOptionId}.sortableonactivatetopics = "${attributes.sortableOnActivateTopics}";<#rt/>
   </#if>
  <#if attributes.sortableOnDeactivateTopics! != "">
 	options_${escapedOptionId}.sortableondeactivatetopics = "${attributes.sortableOnDeactivateTopics}";<#rt/>
   </#if>
  <#if attributes.sortableOnOverTopics! != "">
 	options_${escapedOptionId}.sortableonovertopics = "${attributes.sortableOnOverTopics}";<#rt/>
   </#if>
  <#if attributes.sortableOnOutTopics! != "">
 	options_${escapedOptionId}.sortableonouttopics = "${attributes.sortableOnOutTopics}";<#rt/>
   </#if>
  <#if attributes.sortableOnRemoveTopics! != "">
 	options_${escapedOptionId}.sortableonremovetopics = "${attributes.sortableOnRemoveTopics}";<#rt/>
   </#if>
  <#if attributes.sortableOnReceiveTopics! != "">
 	options_${escapedOptionId}.sortableonreceivetopics = "${attributes.sortableOnReceiveTopics}";<#rt/>
   </#if>
  <#if attributes.sortableOnChangeTopics! != "">
 	options_${escapedOptionId}.sortableonchangetopics = "${attributes.sortableOnChangeTopics}";<#rt/>
   </#if>
  <#if attributes.sortableOnUpdateTopics! != "">
 	options_${escapedOptionId}.sortableonupdatetopics = "${attributes.sortableOnUpdateTopics}";<#rt/>
   </#if>
