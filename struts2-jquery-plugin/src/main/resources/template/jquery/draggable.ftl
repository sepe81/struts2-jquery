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
  <#if attributes.draggable!false>
	options_${escapedOptionId}.draggable = true;<#rt/>
  </#if>
  <#if attributes.draggableOptions! != "">
	options_${escapedOptionId}.draggableoptions = "<#outputformat "JavaScript">${attributes.draggableOptions}</#outputformat>";<#rt/>
  </#if>
  <#if attributes.draggableOnStartTopics! != "">
 	options_${escapedOptionId}.draggableonstarttopics = "${attributes.draggableOnStartTopics}";<#rt/>
   </#if>
  <#if attributes.draggableOnStopTopics! != "">
	options_${escapedOptionId}.draggableonstoptopics = "${attributes.draggableOnStopTopics}";<#rt/>
   </#if>
  <#if attributes.draggableOnDragTopics! != "">
	options_${escapedOptionId}.draggableondragtopics = "${attributes.draggableOnDragTopics}";<#rt/>
   </#if>
