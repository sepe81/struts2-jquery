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
  <#if attributes.droppable!false>
	options_${escapedOptionId}.droppable = true;<#rt/>
   </#if>
  <#if attributes.droppableOptions! != "">
	options_${escapedOptionId}.droppableoptions = "<#outputformat "JavaScript">${attributes.droppableOptions}</#outputformat>";<#rt/>
   </#if>
  <#if attributes.droppableOnActivateTopics! != "">
	options_${escapedOptionId}.droppableonactivatetopics = "${attributes.droppableOnActivateTopics}";<#rt/>
   </#if>
  <#if attributes.droppableOnDeactivateTopics! != "">
	options_${escapedOptionId}.droppableondeactivatetopics = "${attributes.droppableOnDeactivateTopics}";<#rt/>
   </#if>
  <#if attributes.droppableOnDropTopics! != "">
	options_${escapedOptionId}.droppableondroptopics = "${attributes.droppableOnDropTopics}";<#rt/>
   </#if>
  <#if attributes.droppableOnOutTopics! != "">
	options_${escapedOptionId}.droppableonouttopics = "${attributes.droppableOnOutTopics}";<#rt/>
   </#if>
  <#if attributes.droppableOnOverTopics! != "">
	options_${escapedOptionId}.droppableonovertopics = "${attributes.droppableOnOverTopics}";<#rt/>
   </#if>
