<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>Alert_the_owner_about_a_big_opportunity_deal</fullName>
        <description>Alert the owner about a big opportunity deal</description>
        <protected>false</protected>
        <recipients>
            <type>owner</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/Big_Opportunity</template>
    </alerts>
    <alerts>
        <fullName>Approve3</fullName>
        <description>Approve3</description>
        <protected>false</protected>
        <recipients>
            <recipient>bhakti.gujrathi@eternussolutions.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/AssignedTo</template>
    </alerts>
    <alerts>
        <fullName>testing_for_custom_hierarchical_manager</fullName>
        <description>testing for custom hierarchical manager</description>
        <protected>false</protected>
        <recipients>
            <type>owner</type>
        </recipients>
        <recipients>
            <recipient>Manager</recipient>
            <type>role</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/Big_Opportunity</template>
    </alerts>
    <rules>
        <fullName>New opportunity</fullName>
        <actions>
            <name>Alert_the_owner_about_a_big_opportunity_deal</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Opportunity.StageName</field>
            <operation>equals</operation>
            <value>Negotiation/Review</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Amount</field>
            <operation>greaterThan</operation>
            <value>50000</value>
        </criteriaItems>
        <description>Alerts about new big deal.</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <tasks>
        <fullName>Approve2</fullName>
        <assignedTo>bhakti.gujrathi@eternussolutions.com</assignedTo>
        <assignedToType>user</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <offsetFromField>Opportunity.CreatedDate</offsetFromField>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Not Started</status>
        <subject>Approve2</subject>
    </tasks>
</Workflow>
