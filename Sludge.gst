<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<gameSystem id="2a98-0be2-053b-f7e1" name="Sludge" revision="2" battleScribeVersion="2.03" xmlns="http://www.battlescribe.net/schema/gameSystemSchema">
  <publications>
    <publication id="690f-6ec1-3a45-0ffc" name="Blaster V3"/>
    <publication id="f50d-3cea-751a-1d06" name="Blaster V4"/>
  </publications>
  <costTypes>
    <costType id="8a76-0f71-96e3-b97c" name="Points" defaultCostLimit="-1.0" hidden="false"/>
  </costTypes>
  <profileTypes>
    <profileType id="8705-14e1-be6a-1f7e" name="- Unit -">
      <characteristicTypes>
        <characteristicType id="76fe-9a2a-b52c-7a61" name="Speed"/>
        <characteristicType id="2947-0bce-f1e8-bf71" name="Brutality"/>
        <characteristicType id="b268-ae8a-4002-9bb8" name="Cunning"/>
        <characteristicType id="bcf6-2d70-7020-f5b0" name="Faith"/>
        <characteristicType id="a272-ef29-2448-76e4" name="Arcana"/>
        <characteristicType id="4784-a2b1-4078-5e01" name="Defence"/>
        <characteristicType id="a33c-c953-b917-d630" name="Wounds"/>
      </characteristicTypes>
    </profileType>
    <profileType id="3f3f-4bef-0bab-2cff" name="--- Ability ---">
      <characteristicTypes>
        <characteristicType id="3659-df21-f698-59ad" name="Action"/>
        <characteristicType id="b356-e832-95cc-4467" name="Type"/>
        <characteristicType id="d24a-25b3-c0bd-f75f" name="Range"/>
        <characteristicType id="3b97-3988-8ead-1039" name="TN"/>
        <characteristicType id="ee2e-080f-055b-061a" name="Burst"/>
        <characteristicType id="e0f5-c1c4-0314-c9a6" name="Effect"/>
      </characteristicTypes>
    </profileType>
    <profileType id="1231-8a7d-8660-4b58" name="-- Weapon --">
      <characteristicTypes>
        <characteristicType id="bec2-08c9-9760-38f2" name="Type"/>
        <characteristicType id="ed90-5160-6b9a-06fe" name="Range"/>
        <characteristicType id="872b-0f66-5fc4-14fd" name="TN"/>
        <characteristicType id="7474-4b21-4cd8-d9f9" name="Burst"/>
        <characteristicType id="e7f2-1487-6c95-3a26" name="Dmg"/>
        <characteristicType id="e339-e6bf-a6ef-ad36" name="Effect"/>
      </characteristicTypes>
    </profileType>
  </profileTypes>
  <categoryEntries>
    <categoryEntry id="1e83-9df6-39c1-f39c" name="Hero" hidden="false"/>
    <categoryEntry id="e456-9a72-74a3-c672" name="Regiment" hidden="false">
      <infoLinks>
        <infoLink id="de62-52f4-6169-8c1c" name="Formations" hidden="false" targetId="d5d4-1197-39a1-85f0" type="rule"/>
      </infoLinks>
    </categoryEntry>
    <categoryEntry id="8015-519c-a80c-a4d2" name="Skirmisher" hidden="false">
      <infoLinks>
        <infoLink id="a33c-76d2-0a37-cc8a" name="Skirmishers" hidden="false" targetId="e3b9-02f1-80f1-05a9" type="rule"/>
      </infoLinks>
    </categoryEntry>
    <categoryEntry id="b21a-1990-468a-c730" name="Elite" hidden="false"/>
    <categoryEntry id="41bb-57e3-d78c-6592" name="Cavalry" hidden="false">
      <infoLinks>
        <infoLink id="cb0c-725f-1df1-e816" name="Cavalry" hidden="false" targetId="e927-89c5-54dd-5634" type="rule"/>
      </infoLinks>
    </categoryEntry>
    <categoryEntry id="b579-d163-2dd9-428a" name="Artillery" hidden="false"/>
    <categoryEntry id="43d5-c037-98f1-6f47" name="Commander" hidden="false"/>
  </categoryEntries>
  <forceEntries>
    <forceEntry id="70f1-f3bf-f038-ba7a" name="Battalion" hidden="false">
      <categoryLinks>
        <categoryLink id="b376-24ec-d7e4-bf91" name="Hero" hidden="false" targetId="1e83-9df6-39c1-f39c" primary="false"/>
        <categoryLink id="1d0f-74c6-b78b-0bec" name="Regiment" hidden="false" targetId="e456-9a72-74a3-c672" primary="false"/>
        <categoryLink id="d551-4568-c858-1ca6" name="Artillery" hidden="false" targetId="b579-d163-2dd9-428a" primary="false"/>
        <categoryLink id="e330-3474-a63f-13b3" name="Cavalry" hidden="false" targetId="41bb-57e3-d78c-6592" primary="false"/>
        <categoryLink id="f239-f707-cd64-1a4c" name="Elite" hidden="false" targetId="b21a-1990-468a-c730" primary="false">
          <modifiers>
            <modifier type="increment" field="f3d5-8ccc-1ea1-ba7d" value="1.0">
              <repeats>
                <repeat field="selections" scope="roster" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" childId="e456-9a72-74a3-c672" repeats="1" roundUp="false"/>
              </repeats>
            </modifier>
            <modifier type="decrement" field="f3d5-8ccc-1ea1-ba7d" value="1.0">
              <repeats>
                <repeat field="selections" scope="primary-catalogue" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" childId="d5af-a66d-cbaa-ab81" repeats="1" roundUp="false"/>
              </repeats>
            </modifier>
          </modifiers>
          <constraints>
            <constraint field="selections" scope="parent" value="0.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="f3d5-8ccc-1ea1-ba7d" type="max"/>
          </constraints>
        </categoryLink>
        <categoryLink id="707f-604d-6903-2a4e" name="Skirmishers" hidden="false" targetId="8015-519c-a80c-a4d2" primary="false"/>
        <categoryLink id="10a1-2f11-cd54-152e" name="Commander" hidden="false" targetId="43d5-c037-98f1-6f47" primary="false">
          <constraints>
            <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="77ae-9e09-e0cb-0d10" type="max"/>
            <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="d76f-6753-6490-915d" type="min"/>
          </constraints>
        </categoryLink>
      </categoryLinks>
    </forceEntry>
  </forceEntries>
  <sharedSelectionEntries>
    <selectionEntry id="00a3-350b-5484-8004" name="Commander" publicationId="690f-6ec1-3a45-0ffc" page="35" hidden="false" collective="false" import="true" type="model">
      <profiles>
        <profile id="7ab3-bb16-74bc-a8ca" name="Commander" hidden="false" typeId="8705-14e1-be6a-1f7e" typeName="- Unit -">
          <modifiers>
            <modifier type="set" field="76fe-9a2a-b52c-7a61" value="6">
              <conditions>
                <condition field="selections" scope="00a3-350b-5484-8004" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" childId="71ba-cc3b-99ef-d43f" type="equalTo"/>
              </conditions>
            </modifier>
            <modifier type="increment" field="a33c-c953-b917-d630" value="1">
              <repeats>
                <repeat field="selections" scope="00a3-350b-5484-8004" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" childId="3a8d-320c-7181-4ceb" repeats="1" roundUp="false"/>
              </repeats>
            </modifier>
          </modifiers>
          <characteristics>
            <characteristic name="Speed" typeId="76fe-9a2a-b52c-7a61">4</characteristic>
            <characteristic name="Brutality" typeId="2947-0bce-f1e8-bf71">2</characteristic>
            <characteristic name="Cunning" typeId="b268-ae8a-4002-9bb8">2</characteristic>
            <characteristic name="Faith" typeId="bcf6-2d70-7020-f5b0">2</characteristic>
            <characteristic name="Arcana" typeId="a272-ef29-2448-76e4">0</characteristic>
            <characteristic name="Defence" typeId="4784-a2b1-4078-5e01">6</characteristic>
            <characteristic name="Wounds" typeId="a33c-c953-b917-d630">4</characteristic>
          </characteristics>
        </profile>
      </profiles>
      <infoLinks>
        <infoLink id="7115-3e3b-fdb3-b4e7" name="Knightly Arms" hidden="false" targetId="6638-665c-032b-cdfb" type="profile">
          <modifiers>
            <modifier type="increment" field="7474-4b21-4cd8-d9f9" value="2">
              <repeats>
                <repeat field="selections" scope="00a3-350b-5484-8004" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" childId="3a8d-320c-7181-4ceb" repeats="1" roundUp="false"/>
              </repeats>
            </modifier>
          </modifiers>
        </infoLink>
        <infoLink id="ec49-9230-97f4-79b3" name="Inspire" hidden="false" targetId="6fbd-6877-b3f4-82a0" type="profile"/>
        <infoLink id="2389-0a3f-c144-91f3" name="Warcry" hidden="false" targetId="00de-6c9d-433d-29b4" type="profile"/>
        <infoLink id="7819-f3b8-b181-9c9b" name="Close Order" hidden="false" targetId="645c-7a41-ffb1-3785" type="profile"/>
        <infoLink id="2e02-f1b5-8fa6-2aa5" name="Go At Them" hidden="false" targetId="0a69-11f6-d0c7-2497" type="profile"/>
        <infoLink id="4e2c-8fd2-466f-cb6d" name="Supervised Drill" hidden="false" targetId="7e74-6cba-1f5e-a5e5" type="profile"/>
        <infoLink id="7fa1-7661-797c-0134" name="Heroic Speech" hidden="false" targetId="3509-4cba-ee7c-069b" type="profile"/>
        <infoLink id="3e64-2b23-988a-f46b" name="Tough" hidden="false" targetId="4cda-dae9-f168-2fb5" type="rule"/>
      </infoLinks>
      <categoryLinks>
        <categoryLink id="6d13-9c3c-bb88-90f2" name="New CategoryLink" hidden="false" targetId="1e83-9df6-39c1-f39c" primary="true"/>
        <categoryLink id="6a9c-a933-d1f7-6917" name="Commander" hidden="false" targetId="43d5-c037-98f1-6f47" primary="false"/>
      </categoryLinks>
      <selectionEntries>
        <selectionEntry id="3a8d-320c-7181-4ceb" name="Bodyguard" hidden="false" collective="false" import="true" type="upgrade">
          <modifiers>
            <modifier type="decrement" field="4325-9e5c-f994-2eba" value="1.0">
              <conditions>
                <condition field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" childId="71ba-cc3b-99ef-d43f" type="equalTo"/>
              </conditions>
            </modifier>
          </modifiers>
          <constraints>
            <constraint field="selections" scope="parent" value="2.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="4325-9e5c-f994-2eba" type="max"/>
          </constraints>
          <costs>
            <cost name="Points" typeId="8a76-0f71-96e3-b97c" value="10.0"/>
          </costs>
        </selectionEntry>
        <selectionEntry id="71ba-cc3b-99ef-d43f" name="Mounted" hidden="false" collective="false" import="true" type="upgrade">
          <constraints>
            <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="f8ab-096f-89db-3ba1" type="max"/>
          </constraints>
          <costs>
            <cost name="Points" typeId="8a76-0f71-96e3-b97c" value="0.0"/>
          </costs>
        </selectionEntry>
        <selectionEntry id="babe-f800-9393-38ef" name="Battle Standard" hidden="false" collective="false" import="true" type="upgrade">
          <constraints>
            <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="b6a4-0aeb-5319-5992" type="max"/>
          </constraints>
          <rules>
            <rule id="c1c6-a3d2-094c-fb5c" name="Battle Standard" hidden="false">
              <description>Grants +1 on nerve tests to all friendly units within 10”. The
commander himself also benefits from the glorious battle standard.</description>
            </rule>
          </rules>
          <costs>
            <cost name="Points" typeId="8a76-0f71-96e3-b97c" value="10.0"/>
          </costs>
        </selectionEntry>
      </selectionEntries>
      <costs>
        <cost name="Points" typeId="8a76-0f71-96e3-b97c" value="0.0"/>
      </costs>
    </selectionEntry>
    <selectionEntry id="97c9-96c8-fd65-5935" name="Arcanists" publicationId="690f-6ec1-3a45-0ffc" page="36" hidden="false" collective="false" import="true" type="model">
      <constraints>
        <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="fb92-2986-09ff-aac1" type="max"/>
      </constraints>
      <profiles>
        <profile id="dff4-6529-b319-2d9c" name="Arcanists" hidden="false" typeId="8705-14e1-be6a-1f7e" typeName="- Unit -">
          <characteristics>
            <characteristic name="Speed" typeId="76fe-9a2a-b52c-7a61">4</characteristic>
            <characteristic name="Brutality" typeId="2947-0bce-f1e8-bf71">0</characteristic>
            <characteristic name="Cunning" typeId="b268-ae8a-4002-9bb8">1</characteristic>
            <characteristic name="Faith" typeId="bcf6-2d70-7020-f5b0">1</characteristic>
            <characteristic name="Arcana" typeId="a272-ef29-2448-76e4">1</characteristic>
            <characteristic name="Defence" typeId="4784-a2b1-4078-5e01">6</characteristic>
            <characteristic name="Wounds" typeId="a33c-c953-b917-d630">1</characteristic>
          </characteristics>
        </profile>
      </profiles>
      <infoLinks>
        <infoLink id="41fc-a6dc-cac1-1158" name="Hand Weapons" hidden="false" targetId="1f37-d09c-dc0f-92d5" type="profile"/>
        <infoLink id="eaab-2811-bd37-4c21" name="Muskets" hidden="false" targetId="9123-e357-3df2-313f" type="profile"/>
        <infoLink id="93ea-5600-772c-e4e8" name="Tough" hidden="false" targetId="4cda-dae9-f168-2fb5" type="rule"/>
        <infoLink id="5ea7-4f36-1b67-74c7" name="Arcane Protection" hidden="false" targetId="9524-6a6e-488b-c577" type="profile"/>
        <infoLink id="567b-c8c8-4472-0256" name="Enchanted Arms" hidden="false" targetId="4c4c-a498-784c-6fac" type="profile"/>
        <infoLink id="e1ef-ff3e-bcc2-36cb" name="Thundering Report" hidden="false" targetId="292e-0681-babc-d29a" type="profile"/>
        <infoLink id="6a77-98a0-133d-f55e" name="Triangulation" hidden="false" targetId="4d9d-b2f2-aa8a-cf85" type="rule">
          <modifiers>
            <modifier type="set" field="hidden" value="true">
              <conditions>
                <condition field="selections" scope="97c9-96c8-fd65-5935" value="3.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" childId="18fd-7ca1-974f-509d" type="lessThan"/>
              </conditions>
            </modifier>
          </modifiers>
        </infoLink>
      </infoLinks>
      <categoryLinks>
        <categoryLink id="cd37-4f9d-23d5-c4f3" name="New CategoryLink" hidden="false" targetId="1e83-9df6-39c1-f39c" primary="true"/>
      </categoryLinks>
      <selectionEntries>
        <selectionEntry id="18fd-7ca1-974f-509d" name="Size" hidden="false" collective="false" import="true" type="upgrade">
          <constraints>
            <constraint field="selections" scope="parent" value="3.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="fe67-f38b-06fc-678d" type="max"/>
            <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="de95-0846-4ab0-9675" type="min"/>
          </constraints>
          <costs>
            <cost name="Points" typeId="8a76-0f71-96e3-b97c" value="10.0"/>
          </costs>
        </selectionEntry>
      </selectionEntries>
      <costs>
        <cost name="Points" typeId="8a76-0f71-96e3-b97c" value="0.0"/>
      </costs>
    </selectionEntry>
    <selectionEntry id="109d-5ef6-5b77-2bf2" name="Officer" publicationId="690f-6ec1-3a45-0ffc" page="37" hidden="false" collective="false" import="true" type="model">
      <profiles>
        <profile id="6d5a-b31c-4914-515f" name="Officer" hidden="false" typeId="8705-14e1-be6a-1f7e" typeName="- Unit -">
          <modifiers>
            <modifier type="increment" field="a33c-c953-b917-d630" value="1">
              <repeats>
                <repeat field="selections" scope="109d-5ef6-5b77-2bf2" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" childId="972d-898c-ff97-62c0" repeats="1" roundUp="false"/>
              </repeats>
            </modifier>
            <modifier type="set" field="76fe-9a2a-b52c-7a61" value="6">
              <conditions>
                <condition field="selections" scope="109d-5ef6-5b77-2bf2" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" childId="a05d-e251-c43e-2914" type="equalTo"/>
              </conditions>
            </modifier>
          </modifiers>
          <characteristics>
            <characteristic name="Speed" typeId="76fe-9a2a-b52c-7a61">4</characteristic>
            <characteristic name="Brutality" typeId="2947-0bce-f1e8-bf71">2</characteristic>
            <characteristic name="Cunning" typeId="b268-ae8a-4002-9bb8">1</characteristic>
            <characteristic name="Faith" typeId="bcf6-2d70-7020-f5b0">2</characteristic>
            <characteristic name="Arcana" typeId="a272-ef29-2448-76e4">0</characteristic>
            <characteristic name="Defence" typeId="4784-a2b1-4078-5e01">6</characteristic>
            <characteristic name="Wounds" typeId="a33c-c953-b917-d630">2</characteristic>
          </characteristics>
        </profile>
      </profiles>
      <infoLinks>
        <infoLink id="8450-3315-9d37-493c" name="Inspire" hidden="false" targetId="6fbd-6877-b3f4-82a0" type="profile"/>
        <infoLink id="d62a-d011-a63a-ecf3" name="Close Order" hidden="false" targetId="645c-7a41-ffb1-3785" type="profile"/>
        <infoLink id="4564-cd66-4f24-e1d9" name="Heroic Speech" hidden="false" targetId="3509-4cba-ee7c-069b" type="profile"/>
        <infoLink id="801d-6e29-4592-d214" name="Tough" hidden="false" targetId="4cda-dae9-f168-2fb5" type="rule"/>
        <infoLink id="4119-3f7b-1d30-d9a6" name="Knightly Arms" hidden="false" targetId="6638-665c-032b-cdfb" type="profile">
          <modifiers>
            <modifier type="increment" field="7474-4b21-4cd8-d9f9" value="2">
              <repeats>
                <repeat field="selections" scope="109d-5ef6-5b77-2bf2" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" childId="972d-898c-ff97-62c0" repeats="1" roundUp="false"/>
              </repeats>
            </modifier>
          </modifiers>
        </infoLink>
      </infoLinks>
      <categoryLinks>
        <categoryLink id="68b0-5678-5246-9da6" name="New CategoryLink" hidden="false" targetId="1e83-9df6-39c1-f39c" primary="true"/>
      </categoryLinks>
      <selectionEntries>
        <selectionEntry id="972d-898c-ff97-62c0" name="Bodyguard" hidden="false" collective="false" import="true" type="upgrade">
          <modifiers>
            <modifier type="decrement" field="0d4c-514c-899b-63df" value="1.0">
              <conditions>
                <condition field="selections" scope="109d-5ef6-5b77-2bf2" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" childId="a05d-e251-c43e-2914" type="equalTo"/>
              </conditions>
            </modifier>
          </modifiers>
          <constraints>
            <constraint field="selections" scope="parent" value="2.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="0d4c-514c-899b-63df" type="max"/>
          </constraints>
          <costs>
            <cost name="Points" typeId="8a76-0f71-96e3-b97c" value="10.0"/>
          </costs>
        </selectionEntry>
        <selectionEntry id="a05d-e251-c43e-2914" name="Mounted" hidden="false" collective="false" import="true" type="upgrade">
          <constraints>
            <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="bd04-3ba3-65a2-45d3" type="max"/>
          </constraints>
          <costs>
            <cost name="Points" typeId="8a76-0f71-96e3-b97c" value="0.0"/>
          </costs>
        </selectionEntry>
      </selectionEntries>
      <costs>
        <cost name="Points" typeId="8a76-0f71-96e3-b97c" value="20.0"/>
      </costs>
    </selectionEntry>
    <selectionEntry id="6fc9-b308-a4da-9367" name="Chaplain" publicationId="690f-6ec1-3a45-0ffc" page="38" hidden="false" collective="false" import="true" type="model">
      <profiles>
        <profile id="10e5-1553-e15d-eff0" name="Chaplain" hidden="false" typeId="8705-14e1-be6a-1f7e" typeName="- Unit -">
          <modifiers>
            <modifier type="increment" field="a33c-c953-b917-d630" value="1">
              <repeats>
                <repeat field="selections" scope="6fc9-b308-a4da-9367" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" childId="9066-c8cd-c47e-570e" repeats="1" roundUp="false"/>
              </repeats>
            </modifier>
          </modifiers>
          <characteristics>
            <characteristic name="Speed" typeId="76fe-9a2a-b52c-7a61">4</characteristic>
            <characteristic name="Brutality" typeId="2947-0bce-f1e8-bf71">0</characteristic>
            <characteristic name="Cunning" typeId="b268-ae8a-4002-9bb8">1</characteristic>
            <characteristic name="Faith" typeId="bcf6-2d70-7020-f5b0">2</characteristic>
            <characteristic name="Arcana" typeId="a272-ef29-2448-76e4">0</characteristic>
            <characteristic name="Defence" typeId="4784-a2b1-4078-5e01">6</characteristic>
            <characteristic name="Wounds" typeId="a33c-c953-b917-d630">2</characteristic>
          </characteristics>
        </profile>
      </profiles>
      <infoLinks>
        <infoLink id="c2f4-83fd-6405-6286" name="Knightly Arms" hidden="false" targetId="6638-665c-032b-cdfb" type="profile">
          <modifiers>
            <modifier type="increment" field="7474-4b21-4cd8-d9f9" value="2">
              <repeats>
                <repeat field="selections" scope="6fc9-b308-a4da-9367" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" childId="9066-c8cd-c47e-570e" repeats="1" roundUp="false"/>
              </repeats>
            </modifier>
            <modifier type="set" field="hidden" value="true">
              <conditions>
                <condition field="selections" scope="6fc9-b308-a4da-9367" value="0.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" childId="9066-c8cd-c47e-570e" type="equalTo"/>
              </conditions>
            </modifier>
            <modifier type="decrement" field="7474-4b21-4cd8-d9f9" value="2"/>
          </modifiers>
        </infoLink>
        <infoLink id="3767-3f88-4755-8eaa" name="Tough" hidden="false" targetId="4cda-dae9-f168-2fb5" type="rule"/>
        <infoLink id="05ed-e4ba-86ff-d9da" name="Blessing" hidden="false" targetId="ac6f-fdb3-1f48-7544" type="profile"/>
        <infoLink id="a9e8-4643-20ac-96b8" name="Sacred Incense" hidden="false" targetId="0284-5618-54e6-2287" type="profile"/>
        <infoLink id="1f33-2f75-099d-5c08" name="Faithful Intercessor" hidden="false" targetId="94ad-d6a7-8b3f-406c" type="profile"/>
      </infoLinks>
      <categoryLinks>
        <categoryLink id="1fd0-2ce4-4a59-307b" name="New CategoryLink" hidden="false" targetId="1e83-9df6-39c1-f39c" primary="true"/>
      </categoryLinks>
      <selectionEntries>
        <selectionEntry id="9066-c8cd-c47e-570e" name="Bodyguard" hidden="false" collective="false" import="true" type="upgrade">
          <constraints>
            <constraint field="selections" scope="parent" value="2.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="76f2-fe2b-ff66-e434" type="max"/>
          </constraints>
          <costs>
            <cost name="Points" typeId="8a76-0f71-96e3-b97c" value="10.0"/>
          </costs>
        </selectionEntry>
      </selectionEntries>
      <costs>
        <cost name="Points" typeId="8a76-0f71-96e3-b97c" value="20.0"/>
      </costs>
    </selectionEntry>
    <selectionEntry id="867f-7741-a286-1d17" name="Sorcerer" publicationId="690f-6ec1-3a45-0ffc" page="39" hidden="false" collective="false" import="true" type="model">
      <profiles>
        <profile id="f434-b8e1-8d03-9866" name="Sorcerer" hidden="false" typeId="8705-14e1-be6a-1f7e" typeName="- Unit -">
          <modifiers>
            <modifier type="increment" field="a33c-c953-b917-d630" value="1">
              <repeats>
                <repeat field="selections" scope="867f-7741-a286-1d17" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" childId="1ce6-3aa6-47be-de32" repeats="1" roundUp="false"/>
              </repeats>
            </modifier>
          </modifiers>
          <characteristics>
            <characteristic name="Speed" typeId="76fe-9a2a-b52c-7a61">4</characteristic>
            <characteristic name="Brutality" typeId="2947-0bce-f1e8-bf71">1</characteristic>
            <characteristic name="Cunning" typeId="b268-ae8a-4002-9bb8">1</characteristic>
            <characteristic name="Faith" typeId="bcf6-2d70-7020-f5b0">0</characteristic>
            <characteristic name="Arcana" typeId="a272-ef29-2448-76e4">2</characteristic>
            <characteristic name="Defence" typeId="4784-a2b1-4078-5e01">6</characteristic>
            <characteristic name="Wounds" typeId="a33c-c953-b917-d630">2</characteristic>
          </characteristics>
        </profile>
      </profiles>
      <infoLinks>
        <infoLink id="1c75-88a2-08c9-1276" name="Knightly Arms" hidden="false" targetId="6638-665c-032b-cdfb" type="profile">
          <modifiers>
            <modifier type="increment" field="7474-4b21-4cd8-d9f9" value="2">
              <repeats>
                <repeat field="selections" scope="867f-7741-a286-1d17" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" childId="1ce6-3aa6-47be-de32" repeats="1" roundUp="false"/>
              </repeats>
            </modifier>
          </modifiers>
        </infoLink>
        <infoLink id="93bf-ffcd-d54a-d1dc" name="Tough" hidden="false" targetId="4cda-dae9-f168-2fb5" type="rule"/>
        <infoLink id="eeb1-9628-3224-a3c7" name="Black Fog" hidden="false" targetId="00be-0721-3b18-2b63" type="profile"/>
        <infoLink id="e5a3-5633-47da-1d36" name="Visions of Death" hidden="false" targetId="8db3-ae29-4ed2-cc7a" type="profile"/>
        <infoLink id="4311-6ecc-0513-24ea" name="Horrors of War" hidden="false" targetId="c348-1de8-f28a-f2b9" type="profile"/>
      </infoLinks>
      <categoryLinks>
        <categoryLink id="5a6e-d764-476e-263e" name="New CategoryLink" hidden="false" targetId="1e83-9df6-39c1-f39c" primary="true"/>
      </categoryLinks>
      <selectionEntries>
        <selectionEntry id="1ce6-3aa6-47be-de32" name="Bodyguard" hidden="false" collective="false" import="true" type="upgrade">
          <constraints>
            <constraint field="selections" scope="parent" value="2.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="c93d-189b-298f-6042" type="max"/>
          </constraints>
          <costs>
            <cost name="Points" typeId="8a76-0f71-96e3-b97c" value="10.0"/>
          </costs>
        </selectionEntry>
      </selectionEntries>
      <costs>
        <cost name="Points" typeId="8a76-0f71-96e3-b97c" value="30.0"/>
      </costs>
    </selectionEntry>
    <selectionEntry id="4f8f-386c-0e88-d258" name="Line Infantry" publicationId="690f-6ec1-3a45-0ffc" page="41" hidden="false" collective="false" import="true" type="unit">
      <profiles>
        <profile id="7397-da80-8df5-9047" name="Line Infantry" hidden="false" typeId="8705-14e1-be6a-1f7e" typeName="- Unit -">
          <characteristics>
            <characteristic name="Speed" typeId="76fe-9a2a-b52c-7a61">3</characteristic>
            <characteristic name="Brutality" typeId="2947-0bce-f1e8-bf71">1</characteristic>
            <characteristic name="Cunning" typeId="b268-ae8a-4002-9bb8">1</characteristic>
            <characteristic name="Faith" typeId="bcf6-2d70-7020-f5b0">1</characteristic>
            <characteristic name="Arcana" typeId="a272-ef29-2448-76e4">0</characteristic>
            <characteristic name="Defence" typeId="4784-a2b1-4078-5e01">5</characteristic>
            <characteristic name="Wounds" typeId="a33c-c953-b917-d630">3</characteristic>
          </characteristics>
        </profile>
      </profiles>
      <categoryLinks>
        <categoryLink id="c964-8410-563a-37ae" name="New CategoryLink" hidden="false" targetId="e456-9a72-74a3-c672" primary="true"/>
      </categoryLinks>
      <selectionEntries>
        <selectionEntry id="7921-ecb4-9a61-f020" name="Regimental Standard" hidden="false" collective="false" import="true" type="upgrade">
          <constraints>
            <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="492f-4a2b-218d-8c33" type="max"/>
          </constraints>
          <infoLinks>
            <infoLink id="10c8-8391-bb9e-3e72" name="Regimental Standard" hidden="false" targetId="1298-2f75-cc32-72a3" type="rule"/>
          </infoLinks>
          <costs>
            <cost name="Points" typeId="8a76-0f71-96e3-b97c" value="5.0"/>
          </costs>
        </selectionEntry>
        <selectionEntry id="bdc9-1948-7b28-35a1" name="Musician" hidden="false" collective="false" import="true" type="upgrade">
          <constraints>
            <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="d7f4-659f-eca2-89d7" type="max"/>
          </constraints>
          <infoLinks>
            <infoLink id="34b2-9d96-b0f9-0c85" name="Regimental Song" hidden="false" targetId="2897-8c59-3591-8170" type="profile"/>
          </infoLinks>
          <costs>
            <cost name="Points" typeId="8a76-0f71-96e3-b97c" value="5.0"/>
          </costs>
        </selectionEntry>
        <selectionEntry id="5695-8a22-fa06-bd1c" name="Size" hidden="false" collective="false" import="true" type="upgrade">
          <constraints>
            <constraint field="selections" scope="parent" value="6.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="529a-ecd8-3fb1-525a" type="max"/>
            <constraint field="selections" scope="parent" value="3.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="d508-89e8-ca10-b3d1" type="min"/>
          </constraints>
          <costs>
            <cost name="Points" typeId="8a76-0f71-96e3-b97c" value="10.0"/>
          </costs>
        </selectionEntry>
      </selectionEntries>
      <selectionEntryGroups>
        <selectionEntryGroup id="4794-fb21-1315-085f" name="Equipment" hidden="false" collective="false" import="true">
          <constraints>
            <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="57a9-d68a-766e-5749" type="max"/>
            <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="793a-f734-8d4d-3826" type="min"/>
          </constraints>
          <selectionEntries>
            <selectionEntry id="3d8e-d528-be9a-4e8c" name="Crossbow volley and bayonets" hidden="false" collective="false" import="true" type="upgrade">
              <infoLinks>
                <infoLink id="0827-101f-3219-ae07" name="Crossbow Volley" hidden="false" targetId="f497-a533-5599-e4c6" type="profile"/>
                <infoLink id="ab61-4edc-81d3-7a23" name="Bayonets" hidden="false" targetId="3d5c-a8f3-a472-40f5" type="profile"/>
              </infoLinks>
              <costs>
                <cost name="Points" typeId="8a76-0f71-96e3-b97c" value="0.0"/>
              </costs>
            </selectionEntry>
            <selectionEntry id="e414-eaf3-fb84-aa69" name="Musket volley and bayonets" hidden="false" collective="false" import="true" type="upgrade">
              <infoLinks>
                <infoLink id="58c5-9b9b-f2ca-1358" name="Musket Volley" hidden="false" targetId="4ac7-18da-c30d-c6d1" type="profile"/>
                <infoLink id="763a-e31f-3015-63b5" name="Bayonets" hidden="false" targetId="3d5c-a8f3-a472-40f5" type="profile"/>
              </infoLinks>
              <costs>
                <cost name="Points" typeId="8a76-0f71-96e3-b97c" value="0.0"/>
              </costs>
            </selectionEntry>
            <selectionEntry id="61c6-516e-99fe-f6d9" name="Pole weapons" hidden="false" collective="false" import="true" type="upgrade">
              <infoLinks>
                <infoLink id="ed3c-445d-ae0f-1344" name="Pole Weapons" hidden="false" targetId="0da8-dbb8-09e3-e303" type="profile"/>
              </infoLinks>
              <costs>
                <cost name="Points" typeId="8a76-0f71-96e3-b97c" value="0.0"/>
              </costs>
            </selectionEntry>
          </selectionEntries>
        </selectionEntryGroup>
      </selectionEntryGroups>
      <costs>
        <cost name="Points" typeId="8a76-0f71-96e3-b97c" value="0.0"/>
      </costs>
    </selectionEntry>
    <selectionEntry id="cdba-42a4-03a0-fc90" name="Jagers" publicationId="690f-6ec1-3a45-0ffc" page="42" hidden="false" collective="false" import="true" type="unit">
      <profiles>
        <profile id="218b-8fec-0270-ce7d" name="Jagers" hidden="false" typeId="8705-14e1-be6a-1f7e" typeName="- Unit -">
          <characteristics>
            <characteristic name="Speed" typeId="76fe-9a2a-b52c-7a61">4</characteristic>
            <characteristic name="Brutality" typeId="2947-0bce-f1e8-bf71">1</characteristic>
            <characteristic name="Cunning" typeId="b268-ae8a-4002-9bb8">1</characteristic>
            <characteristic name="Faith" typeId="bcf6-2d70-7020-f5b0">1</characteristic>
            <characteristic name="Arcana" typeId="a272-ef29-2448-76e4">0</characteristic>
            <characteristic name="Defence" typeId="4784-a2b1-4078-5e01">5</characteristic>
            <characteristic name="Wounds" typeId="a33c-c953-b917-d630">1</characteristic>
          </characteristics>
        </profile>
      </profiles>
      <infoLinks>
        <infoLink id="5a5a-82e4-ad8f-8efc" name="Go To Ground" hidden="false" targetId="3464-76a0-9264-1d41" type="profile"/>
      </infoLinks>
      <categoryLinks>
        <categoryLink id="eddb-aa15-3e4d-f715" name="New CategoryLink" hidden="false" targetId="8015-519c-a80c-a4d2" primary="true"/>
      </categoryLinks>
      <selectionEntries>
        <selectionEntry id="361e-841e-f4cf-986c" name="Size" hidden="false" collective="false" import="true" type="upgrade">
          <constraints>
            <constraint field="selections" scope="parent" value="6.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="8ab9-ec66-6d86-11f3" type="max"/>
            <constraint field="selections" scope="parent" value="3.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="713d-0c81-fc87-42db" type="min"/>
          </constraints>
          <costs>
            <cost name="Points" typeId="8a76-0f71-96e3-b97c" value="5.0"/>
          </costs>
        </selectionEntry>
      </selectionEntries>
      <selectionEntryGroups>
        <selectionEntryGroup id="1902-b8f6-1aaa-48dd" name="Equipment" hidden="false" collective="false" import="true">
          <constraints>
            <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="bc12-6ac7-7356-3327" type="min"/>
            <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="b5df-b342-e1a6-8d9c" type="max"/>
          </constraints>
          <selectionEntries>
            <selectionEntry id="937f-611d-14bb-f737" name="Muskets and Hand Weapons" hidden="false" collective="false" import="true" type="upgrade">
              <infoLinks>
                <infoLink id="89e4-f958-78bd-1292" name="Muskets" hidden="false" targetId="9123-e357-3df2-313f" type="profile"/>
                <infoLink id="7945-2499-e5d4-1711" name="Hand Weapons" hidden="false" targetId="1f37-d09c-dc0f-92d5" type="profile"/>
              </infoLinks>
              <costs>
                <cost name="Points" typeId="8a76-0f71-96e3-b97c" value="0.0"/>
              </costs>
            </selectionEntry>
            <selectionEntry id="2d46-4b64-9b70-3531" name="Crossbows and Hand Weapons" hidden="false" collective="false" import="true" type="upgrade">
              <infoLinks>
                <infoLink id="319b-3dc5-85c2-d972" name="Crossbows" hidden="false" targetId="59e1-9040-bf31-6f1c" type="profile"/>
                <infoLink id="e877-1921-7343-a67c" name="Hand Weapons" hidden="false" targetId="1f37-d09c-dc0f-92d5" type="profile"/>
              </infoLinks>
              <costs>
                <cost name="Points" typeId="8a76-0f71-96e3-b97c" value="0.0"/>
              </costs>
            </selectionEntry>
          </selectionEntries>
        </selectionEntryGroup>
      </selectionEntryGroups>
      <costs>
        <cost name="Points" typeId="8a76-0f71-96e3-b97c" value="0.0"/>
      </costs>
    </selectionEntry>
    <selectionEntry id="cb93-0a38-93a6-6e8d" name="Foot Knight" publicationId="690f-6ec1-3a45-0ffc" page="43" hidden="false" collective="false" import="true" type="unit">
      <profiles>
        <profile id="289e-49bd-79f0-63bd" name="Foot Knight" hidden="false" typeId="8705-14e1-be6a-1f7e" typeName="- Unit -">
          <characteristics>
            <characteristic name="Speed" typeId="76fe-9a2a-b52c-7a61">3</characteristic>
            <characteristic name="Brutality" typeId="2947-0bce-f1e8-bf71">2</characteristic>
            <characteristic name="Cunning" typeId="b268-ae8a-4002-9bb8">1</characteristic>
            <characteristic name="Faith" typeId="bcf6-2d70-7020-f5b0">2</characteristic>
            <characteristic name="Arcana" typeId="a272-ef29-2448-76e4">0</characteristic>
            <characteristic name="Defence" typeId="4784-a2b1-4078-5e01">7</characteristic>
            <characteristic name="Wounds" typeId="a33c-c953-b917-d630">1</characteristic>
          </characteristics>
        </profile>
      </profiles>
      <infoLinks>
        <infoLink id="7ef3-5ad5-91ae-5f33" name="Knightly Arms" hidden="false" targetId="6638-665c-032b-cdfb" type="profile"/>
        <infoLink id="be4b-0eea-13f8-5bdb" name="Tough" hidden="false" targetId="4cda-dae9-f168-2fb5" type="rule"/>
        <infoLink id="be58-2b13-e2d8-237c" name="Noble" hidden="false" targetId="98e6-d284-b2b6-a6b1" type="rule"/>
      </infoLinks>
      <categoryLinks>
        <categoryLink id="920f-ad3f-3263-bc4a" name="New CategoryLink" hidden="false" targetId="8015-519c-a80c-a4d2" primary="true"/>
        <categoryLink id="eb8e-4426-3de6-a820" name="Elite" hidden="false" targetId="b21a-1990-468a-c730" primary="false"/>
      </categoryLinks>
      <selectionEntries>
        <selectionEntry id="dc20-b923-eca6-be63" name="Size" hidden="false" collective="false" import="true" type="upgrade">
          <constraints>
            <constraint field="selections" scope="parent" value="6.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="ef07-3327-28fb-61d6" type="max"/>
            <constraint field="selections" scope="parent" value="3.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="f1db-a59c-8b6c-a961" type="min"/>
          </constraints>
          <costs>
            <cost name="Points" typeId="8a76-0f71-96e3-b97c" value="10.0"/>
          </costs>
        </selectionEntry>
        <selectionEntry id="3c3c-8600-3556-03f2" name="Muskets" hidden="false" collective="false" import="true" type="upgrade">
          <constraints>
            <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="054f-62d7-08f9-2951" type="max"/>
          </constraints>
          <infoLinks>
            <infoLink id="6ed6-44a6-f743-5357" name="Muskets" hidden="false" targetId="9123-e357-3df2-313f" type="profile"/>
          </infoLinks>
          <costs>
            <cost name="Points" typeId="8a76-0f71-96e3-b97c" value="5.0"/>
          </costs>
        </selectionEntry>
      </selectionEntries>
      <costs>
        <cost name="Points" typeId="8a76-0f71-96e3-b97c" value="0.0"/>
      </costs>
    </selectionEntry>
    <selectionEntry id="e8e6-bdc7-941e-b99f" name="Shock Troopers" publicationId="690f-6ec1-3a45-0ffc" page="44" hidden="false" collective="false" import="true" type="unit">
      <profiles>
        <profile id="925f-2c6d-6b8d-0f1c" name="Shock Troopers" hidden="false" typeId="8705-14e1-be6a-1f7e" typeName="- Unit -">
          <characteristics>
            <characteristic name="Speed" typeId="76fe-9a2a-b52c-7a61">4</characteristic>
            <characteristic name="Brutality" typeId="2947-0bce-f1e8-bf71">2</characteristic>
            <characteristic name="Cunning" typeId="b268-ae8a-4002-9bb8">1</characteristic>
            <characteristic name="Faith" typeId="bcf6-2d70-7020-f5b0">1</characteristic>
            <characteristic name="Arcana" typeId="a272-ef29-2448-76e4">0</characteristic>
            <characteristic name="Defence" typeId="4784-a2b1-4078-5e01">6</characteristic>
            <characteristic name="Wounds" typeId="a33c-c953-b917-d630">1</characteristic>
          </characteristics>
        </profile>
      </profiles>
      <infoLinks>
        <infoLink id="14a1-077d-d95c-1704" name="Hand Weapons" hidden="false" targetId="1f37-d09c-dc0f-92d5" type="profile"/>
        <infoLink id="90f8-4d7c-2604-dfd2" name="Muskets" hidden="false" targetId="9123-e357-3df2-313f" type="profile"/>
        <infoLink id="fa05-6c44-914c-9f32" name="Battle Hardened" hidden="false" targetId="a303-a349-4723-d3f1" type="rule"/>
        <infoLink id="187a-f873-3156-b187" name="Assault Trooper" hidden="false" targetId="7e31-4ee5-d0f2-82b9" type="rule"/>
      </infoLinks>
      <categoryLinks>
        <categoryLink id="db8f-73cd-57ee-c3df" name="New CategoryLink" hidden="false" targetId="8015-519c-a80c-a4d2" primary="true"/>
        <categoryLink id="da14-7278-8bf6-4a23" name="Elite" hidden="false" targetId="b21a-1990-468a-c730" primary="false"/>
      </categoryLinks>
      <selectionEntries>
        <selectionEntry id="67bf-1b32-c909-bd82" name="Size" hidden="false" collective="false" import="true" type="upgrade">
          <constraints>
            <constraint field="selections" scope="parent" value="6.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="3117-876f-c12f-7627" type="max"/>
            <constraint field="selections" scope="parent" value="3.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="1d35-9619-4a3b-fb95" type="min"/>
          </constraints>
          <costs>
            <cost name="Points" typeId="8a76-0f71-96e3-b97c" value="5.0"/>
          </costs>
        </selectionEntry>
        <selectionEntry id="afb8-8004-5d0d-6399" name="Grenades" hidden="false" collective="false" import="true" type="upgrade">
          <constraints>
            <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="aab5-eb99-ffd4-6b87" type="max"/>
          </constraints>
          <infoLinks>
            <infoLink id="aaad-115a-3d65-1528" name="Grenades" hidden="false" targetId="45a1-599a-2f4a-0898" type="rule"/>
          </infoLinks>
          <costs>
            <cost name="Points" typeId="8a76-0f71-96e3-b97c" value="5.0"/>
          </costs>
        </selectionEntry>
      </selectionEntries>
      <costs>
        <cost name="Points" typeId="8a76-0f71-96e3-b97c" value="0.0"/>
      </costs>
    </selectionEntry>
    <selectionEntry id="d1a8-9e66-5739-5838" name="Heavy Cavalry" publicationId="690f-6ec1-3a45-0ffc" page="46" hidden="false" collective="false" import="true" type="unit">
      <profiles>
        <profile id="4cd3-a33d-5458-e5da" name="Heavy Cavalry" hidden="false" typeId="8705-14e1-be6a-1f7e" typeName="- Unit -">
          <characteristics>
            <characteristic name="Speed" typeId="76fe-9a2a-b52c-7a61">5</characteristic>
            <characteristic name="Brutality" typeId="2947-0bce-f1e8-bf71">1</characteristic>
            <characteristic name="Cunning" typeId="b268-ae8a-4002-9bb8">1</characteristic>
            <characteristic name="Faith" typeId="bcf6-2d70-7020-f5b0">1</characteristic>
            <characteristic name="Arcana" typeId="a272-ef29-2448-76e4">0</characteristic>
            <characteristic name="Defence" typeId="4784-a2b1-4078-5e01">6</characteristic>
            <characteristic name="Wounds" typeId="a33c-c953-b917-d630">2</characteristic>
          </characteristics>
        </profile>
      </profiles>
      <infoLinks>
        <infoLink id="0154-57d7-4ecc-df5c" name="Cavalry Sabers" hidden="false" targetId="2f8e-cf01-a6b4-8a99" type="profile"/>
      </infoLinks>
      <categoryLinks>
        <categoryLink id="9d56-7ee6-3530-3593" name="New CategoryLink" hidden="false" targetId="41bb-57e3-d78c-6592" primary="true"/>
      </categoryLinks>
      <selectionEntries>
        <selectionEntry id="5c4e-9a12-4376-f798" name="Size" hidden="false" collective="false" import="true" type="upgrade">
          <constraints>
            <constraint field="selections" scope="parent" value="6.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="9bcf-1813-0f77-667f" type="max"/>
            <constraint field="selections" scope="parent" value="3.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="d4d3-2e96-84f0-f51a" type="min"/>
          </constraints>
          <costs>
            <cost name="Points" typeId="8a76-0f71-96e3-b97c" value="10.0"/>
          </costs>
        </selectionEntry>
        <selectionEntry id="5e2b-247c-19c5-a822" name="Carabiniers" hidden="false" collective="false" import="true" type="upgrade">
          <constraints>
            <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="1e21-2cd4-2a0c-6995" type="max"/>
          </constraints>
          <infoLinks>
            <infoLink id="8dc1-c278-a872-e18e" name="Muskets" hidden="false" targetId="9123-e357-3df2-313f" type="profile"/>
          </infoLinks>
          <costs>
            <cost name="Points" typeId="8a76-0f71-96e3-b97c" value="5.0"/>
          </costs>
        </selectionEntry>
        <selectionEntry id="c373-14ed-87ed-fe2f" name="Heavy Pistols" hidden="false" collective="false" import="true" type="upgrade">
          <constraints>
            <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="07e6-a7b0-f913-159b" type="max"/>
          </constraints>
          <infoLinks>
            <infoLink id="7f7f-b0cd-1f60-cc67" name="Heavy Pistols" hidden="false" targetId="7a31-2efe-df3a-9fe4" type="rule"/>
          </infoLinks>
          <costs>
            <cost name="Points" typeId="8a76-0f71-96e3-b97c" value="5.0"/>
          </costs>
        </selectionEntry>
      </selectionEntries>
      <costs>
        <cost name="Points" typeId="8a76-0f71-96e3-b97c" value="0.0"/>
      </costs>
    </selectionEntry>
    <selectionEntry id="0062-85e4-0431-f4d1" name="Light Cavalry" publicationId="690f-6ec1-3a45-0ffc" page="45" hidden="false" collective="false" import="true" type="unit">
      <profiles>
        <profile id="b11d-e7a3-62c4-1342" name="Light Cavalry" hidden="false" typeId="8705-14e1-be6a-1f7e" typeName="- Unit -">
          <characteristics>
            <characteristic name="Speed" typeId="76fe-9a2a-b52c-7a61">5</characteristic>
            <characteristic name="Brutality" typeId="2947-0bce-f1e8-bf71">1</characteristic>
            <characteristic name="Cunning" typeId="b268-ae8a-4002-9bb8">1</characteristic>
            <characteristic name="Faith" typeId="bcf6-2d70-7020-f5b0">1</characteristic>
            <characteristic name="Arcana" typeId="a272-ef29-2448-76e4">0</characteristic>
            <characteristic name="Defence" typeId="4784-a2b1-4078-5e01">5</characteristic>
            <characteristic name="Wounds" typeId="a33c-c953-b917-d630">1</characteristic>
          </characteristics>
        </profile>
      </profiles>
      <infoLinks>
        <infoLink id="33dd-7644-7ae2-b3e9" name="Cavalry Sabers" hidden="false" targetId="2f8e-cf01-a6b4-8a99" type="profile"/>
      </infoLinks>
      <categoryLinks>
        <categoryLink id="3764-ebb8-07bd-d711" name="New CategoryLink" hidden="false" targetId="41bb-57e3-d78c-6592" primary="true"/>
      </categoryLinks>
      <selectionEntries>
        <selectionEntry id="f77e-96b4-fe35-b185" name="Size" hidden="false" collective="false" import="true" type="upgrade">
          <constraints>
            <constraint field="selections" scope="parent" value="6.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="644d-4376-c82e-7bb5" type="max"/>
            <constraint field="selections" scope="parent" value="3.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="d700-04fd-2e21-68fe" type="min"/>
          </constraints>
          <costs>
            <cost name="Points" typeId="8a76-0f71-96e3-b97c" value="5.0"/>
          </costs>
        </selectionEntry>
        <selectionEntry id="9859-0836-e4a2-9ea6" name="Dragoons" hidden="false" collective="false" import="true" type="upgrade">
          <constraints>
            <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="88c6-d0be-5235-3989" type="max"/>
          </constraints>
          <infoLinks>
            <infoLink id="132d-945c-f619-7094" name="Muskets" hidden="false" targetId="9123-e357-3df2-313f" type="profile"/>
          </infoLinks>
          <costs>
            <cost name="Points" typeId="8a76-0f71-96e3-b97c" value="5.0"/>
          </costs>
        </selectionEntry>
        <selectionEntry id="2ef0-f176-27c1-a5df" name="Lancers" hidden="false" collective="false" import="true" type="upgrade">
          <constraints>
            <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="79c6-ebc7-09d9-401f" type="max"/>
          </constraints>
          <infoLinks>
            <infoLink id="7a94-0bd1-303b-b729" name="Lancers" hidden="false" targetId="9a43-3eb4-da72-1706" type="rule"/>
          </infoLinks>
          <costs>
            <cost name="Points" typeId="8a76-0f71-96e3-b97c" value="5.0"/>
          </costs>
        </selectionEntry>
      </selectionEntries>
      <costs>
        <cost name="Points" typeId="8a76-0f71-96e3-b97c" value="0.0"/>
      </costs>
    </selectionEntry>
    <selectionEntry id="c3be-4c6b-d743-c714" name="Heavy Knights" publicationId="690f-6ec1-3a45-0ffc" page="47" hidden="false" collective="false" import="true" type="unit">
      <profiles>
        <profile id="40e1-353f-19d0-a316" name="Heavy Knights" hidden="false" typeId="8705-14e1-be6a-1f7e" typeName="- Unit -">
          <characteristics>
            <characteristic name="Speed" typeId="76fe-9a2a-b52c-7a61">5</characteristic>
            <characteristic name="Brutality" typeId="2947-0bce-f1e8-bf71">2</characteristic>
            <characteristic name="Cunning" typeId="b268-ae8a-4002-9bb8">1</characteristic>
            <characteristic name="Faith" typeId="bcf6-2d70-7020-f5b0">2</characteristic>
            <characteristic name="Arcana" typeId="a272-ef29-2448-76e4">0</characteristic>
            <characteristic name="Defence" typeId="4784-a2b1-4078-5e01">7</characteristic>
            <characteristic name="Wounds" typeId="a33c-c953-b917-d630">1</characteristic>
          </characteristics>
        </profile>
      </profiles>
      <infoLinks>
        <infoLink id="51b1-d5cc-5e6a-d64b" name="Knightly Arms" hidden="false" targetId="6638-665c-032b-cdfb" type="profile"/>
        <infoLink id="8060-9e2c-0154-9bf0" name="Tough" hidden="false" targetId="4cda-dae9-f168-2fb5" type="rule"/>
        <infoLink id="a581-6d2f-273f-e35d" name="Noble" hidden="false" targetId="98e6-d284-b2b6-a6b1" type="rule"/>
      </infoLinks>
      <categoryLinks>
        <categoryLink id="f3b7-79ee-2be8-e5df" name="New CategoryLink" hidden="false" targetId="41bb-57e3-d78c-6592" primary="true"/>
        <categoryLink id="4432-93df-71d2-049a" name="Elite" hidden="false" targetId="b21a-1990-468a-c730" primary="false"/>
      </categoryLinks>
      <selectionEntries>
        <selectionEntry id="14df-9a09-dcc1-6b62" name="Size" hidden="false" collective="false" import="true" type="upgrade">
          <constraints>
            <constraint field="selections" scope="parent" value="4.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="2229-1683-86d4-58ba" type="max"/>
            <constraint field="selections" scope="parent" value="2.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="b16f-5422-287a-1250" type="min"/>
          </constraints>
          <costs>
            <cost name="Points" typeId="8a76-0f71-96e3-b97c" value="10.0"/>
          </costs>
        </selectionEntry>
        <selectionEntry id="86f0-e26a-5557-a119" name="Heavy Lance" hidden="false" collective="false" import="true" type="upgrade">
          <constraints>
            <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="7cbb-8b34-58a0-80c5" type="max"/>
          </constraints>
          <infoLinks>
            <infoLink id="cef8-66ba-5707-b9b5" name="Heavy Lance" hidden="false" targetId="18fb-9343-c84b-3b06" type="rule"/>
          </infoLinks>
          <costs>
            <cost name="Points" typeId="8a76-0f71-96e3-b97c" value="5.0"/>
          </costs>
        </selectionEntry>
      </selectionEntries>
      <costs>
        <cost name="Points" typeId="8a76-0f71-96e3-b97c" value="0.0"/>
      </costs>
    </selectionEntry>
    <selectionEntry id="8fe8-9293-fa30-4685" name="Field Gun" publicationId="690f-6ec1-3a45-0ffc" page="49" hidden="false" collective="false" import="true" type="model">
      <profiles>
        <profile id="acfb-cfc4-7cf5-a4e7" name="Field Gun" hidden="false" typeId="8705-14e1-be6a-1f7e" typeName="- Unit -">
          <modifiers>
            <modifier type="increment" field="a33c-c953-b917-d630" value="1">
              <conditions>
                <condition field="selections" scope="8fe8-9293-fa30-4685" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" childId="0fcc-5138-c6d4-86d0" type="equalTo"/>
              </conditions>
            </modifier>
          </modifiers>
          <characteristics>
            <characteristic name="Speed" typeId="76fe-9a2a-b52c-7a61">2</characteristic>
            <characteristic name="Brutality" typeId="2947-0bce-f1e8-bf71">0</characteristic>
            <characteristic name="Cunning" typeId="b268-ae8a-4002-9bb8">1</characteristic>
            <characteristic name="Faith" typeId="bcf6-2d70-7020-f5b0">1</characteristic>
            <characteristic name="Arcana" typeId="a272-ef29-2448-76e4">0</characteristic>
            <characteristic name="Defence" typeId="4784-a2b1-4078-5e01">7</characteristic>
            <characteristic name="Wounds" typeId="a33c-c953-b917-d630">4</characteristic>
          </characteristics>
        </profile>
      </profiles>
      <infoLinks>
        <infoLink id="acda-0ef5-15ec-bf74" name="Field Gun" hidden="false" targetId="c33d-04d1-b77b-77b3" type="profile"/>
        <infoLink id="a371-7a3b-cfa1-a6c7" name="Hand Weapons" hidden="false" targetId="1f37-d09c-dc0f-92d5" type="profile">
          <modifiers>
            <modifier type="increment" field="7474-4b21-4cd8-d9f9" value="1">
              <conditions>
                <condition field="selections" scope="8fe8-9293-fa30-4685" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" childId="0fcc-5138-c6d4-86d0" type="equalTo"/>
              </conditions>
            </modifier>
          </modifiers>
        </infoLink>
        <infoLink id="91e0-9878-cdba-e341" name="Field Gun" hidden="false" targetId="e3b7-b7b2-3cad-e5b3" type="rule"/>
      </infoLinks>
      <categoryLinks>
        <categoryLink id="0ae4-2e84-aadd-6c38" name="New CategoryLink" hidden="false" targetId="b579-d163-2dd9-428a" primary="true"/>
      </categoryLinks>
      <selectionEntries>
        <selectionEntry id="0fcc-5138-c6d4-86d0" name="Veteran Crew" hidden="false" collective="false" import="true" type="upgrade">
          <constraints>
            <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="f917-6193-093c-b841" type="max"/>
          </constraints>
          <infoLinks>
            <infoLink id="67a8-8276-ecf1-2a07" name="Veteran Focus" hidden="false" targetId="1cbc-1d4e-2119-fda5" type="rule"/>
          </infoLinks>
          <costs>
            <cost name="Points" typeId="8a76-0f71-96e3-b97c" value="5.0"/>
          </costs>
        </selectionEntry>
      </selectionEntries>
      <costs>
        <cost name="Points" typeId="8a76-0f71-96e3-b97c" value="30.0"/>
      </costs>
    </selectionEntry>
    <selectionEntry id="354e-1993-4fbb-8e44" name="Imperial Artificer" publicationId="f50d-3cea-751a-1d06" hidden="false" collective="false" import="true" type="model">
      <profiles>
        <profile id="55e3-1bd4-8be1-3b1c" name="Imperial Artificer" hidden="false" typeId="8705-14e1-be6a-1f7e" typeName="- Unit -">
          <modifiers>
            <modifier type="increment" field="a33c-c953-b917-d630" value="1">
              <repeats>
                <repeat field="selections" scope="354e-1993-4fbb-8e44" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" childId="303a-b767-d4d5-b6be" repeats="1" roundUp="false"/>
              </repeats>
            </modifier>
          </modifiers>
          <characteristics>
            <characteristic name="Speed" typeId="76fe-9a2a-b52c-7a61">4</characteristic>
            <characteristic name="Brutality" typeId="2947-0bce-f1e8-bf71">1</characteristic>
            <characteristic name="Cunning" typeId="b268-ae8a-4002-9bb8">2</characteristic>
            <characteristic name="Faith" typeId="bcf6-2d70-7020-f5b0">2</characteristic>
            <characteristic name="Arcana" typeId="a272-ef29-2448-76e4">0</characteristic>
            <characteristic name="Defence" typeId="4784-a2b1-4078-5e01">6</characteristic>
            <characteristic name="Wounds" typeId="a33c-c953-b917-d630">2</characteristic>
          </characteristics>
        </profile>
      </profiles>
      <infoLinks>
        <infoLink id="e07b-48ea-dbb2-ace5" name="Muskets" hidden="false" targetId="9123-e357-3df2-313f" type="profile">
          <modifiers>
            <modifier type="set" field="7474-4b21-4cd8-d9f9" value="3">
              <conditions>
                <condition field="selections" scope="354e-1993-4fbb-8e44" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" childId="14d6-f6a3-5a68-e0b0" type="equalTo"/>
              </conditions>
            </modifier>
            <modifier type="set" field="ed90-5160-6b9a-06fe" value="14">
              <conditions>
                <condition field="selections" scope="354e-1993-4fbb-8e44" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" childId="14d6-f6a3-5a68-e0b0" type="equalTo"/>
              </conditions>
            </modifier>
          </modifiers>
        </infoLink>
        <infoLink id="320b-2534-a64c-54e1" name="Knightly Arms" hidden="false" targetId="6638-665c-032b-cdfb" type="profile">
          <modifiers>
            <modifier type="increment" field="7474-4b21-4cd8-d9f9" value="2">
              <repeats>
                <repeat field="selections" scope="354e-1993-4fbb-8e44" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" childId="303a-b767-d4d5-b6be" repeats="1" roundUp="false"/>
              </repeats>
            </modifier>
          </modifiers>
        </infoLink>
        <infoLink id="8ea8-6609-9be7-b3fb" name="Jump Start" hidden="false" targetId="df01-7d67-9fbe-3aa9" type="profile"/>
        <infoLink id="8280-ae83-3ee1-29b8" name="Master Gunner" hidden="false" targetId="b677-4f6e-03cb-58d8" type="profile"/>
        <infoLink id="edd7-b7ba-8340-6dec" name="Machinist" hidden="false" targetId="d542-66ce-7b25-7977" type="profile"/>
        <infoLink id="7fd3-eb99-8b51-a905" name="Tough" hidden="false" targetId="4cda-dae9-f168-2fb5" type="rule"/>
      </infoLinks>
      <categoryLinks>
        <categoryLink id="129d-4797-ffea-f14c" name="Hero" hidden="false" targetId="1e83-9df6-39c1-f39c" primary="true"/>
      </categoryLinks>
      <selectionEntries>
        <selectionEntry id="303a-b767-d4d5-b6be" name="Bodyguard" hidden="false" collective="false" import="true" type="upgrade">
          <constraints>
            <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="cd04-7901-2631-92a9" type="max"/>
          </constraints>
          <costs>
            <cost name="Points" typeId="8a76-0f71-96e3-b97c" value="10.0"/>
          </costs>
        </selectionEntry>
        <selectionEntry id="14d6-f6a3-5a68-e0b0" name="Repeating Rifle" hidden="false" collective="false" import="true" type="upgrade">
          <constraints>
            <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="fc20-ae72-550e-a21e" type="max"/>
          </constraints>
          <costs>
            <cost name="Points" typeId="8a76-0f71-96e3-b97c" value="5.0"/>
          </costs>
        </selectionEntry>
      </selectionEntries>
      <costs>
        <cost name="Points" typeId="8a76-0f71-96e3-b97c" value="30.0"/>
      </costs>
    </selectionEntry>
    <selectionEntry id="3872-cf94-73c3-68e5" name="Imperial Conscripts" publicationId="f50d-3cea-751a-1d06" hidden="false" collective="false" import="true" type="unit">
      <profiles>
        <profile id="4b5a-e06e-65fe-dc2c" name="Imperial Conscripts" hidden="false" typeId="8705-14e1-be6a-1f7e" typeName="- Unit -">
          <characteristics>
            <characteristic name="Speed" typeId="76fe-9a2a-b52c-7a61">3</characteristic>
            <characteristic name="Brutality" typeId="2947-0bce-f1e8-bf71">1</characteristic>
            <characteristic name="Cunning" typeId="b268-ae8a-4002-9bb8">0</characteristic>
            <characteristic name="Faith" typeId="bcf6-2d70-7020-f5b0">0</characteristic>
            <characteristic name="Arcana" typeId="a272-ef29-2448-76e4">0</characteristic>
            <characteristic name="Defence" typeId="4784-a2b1-4078-5e01">5</characteristic>
            <characteristic name="Wounds" typeId="a33c-c953-b917-d630">4</characteristic>
          </characteristics>
        </profile>
      </profiles>
      <infoLinks>
        <infoLink id="2e96-dabb-b7bf-e606" name="Musket Volley" hidden="false" targetId="4ac7-18da-c30d-c6d1" type="profile"/>
        <infoLink id="e326-53dd-55cb-7663" name="Bayonets" hidden="false" targetId="3d5c-a8f3-a472-40f5" type="profile"/>
        <infoLink id="a43c-207c-a1f4-769a" name="Irregular" hidden="false" targetId="b9f2-7905-7efa-903b" type="rule"/>
      </infoLinks>
      <categoryLinks>
        <categoryLink id="79b8-5a3f-eb27-ce8f" name="New CategoryLink" hidden="false" targetId="e456-9a72-74a3-c672" primary="true"/>
      </categoryLinks>
      <selectionEntries>
        <selectionEntry id="47e7-1e2c-de6b-c2e3" name="Size" hidden="false" collective="false" import="true" type="upgrade">
          <constraints>
            <constraint field="selections" scope="parent" value="6.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="3e6e-9101-e5ed-7a52" type="max"/>
            <constraint field="selections" scope="parent" value="3.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="20c3-a7b0-8578-45e1" type="min"/>
          </constraints>
          <costs>
            <cost name="Points" typeId="8a76-0f71-96e3-b97c" value="10.0"/>
          </costs>
        </selectionEntry>
      </selectionEntries>
      <costs>
        <cost name="Points" typeId="8a76-0f71-96e3-b97c" value="0.0"/>
      </costs>
    </selectionEntry>
    <selectionEntry id="3c3f-2e54-72e9-5df9" name="Imperial Crawler" hidden="false" collective="false" import="true" type="model">
      <profiles>
        <profile id="22b9-46cd-8c3c-d549" name="Imperial Crawler" hidden="false" typeId="8705-14e1-be6a-1f7e" typeName="- Unit -">
          <modifiers>
            <modifier type="increment" field="a33c-c953-b917-d630" value="2">
              <conditions>
                <condition field="selections" scope="3c3f-2e54-72e9-5df9" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" childId="5c3b-7ba1-2e22-33ce" type="equalTo"/>
              </conditions>
            </modifier>
          </modifiers>
          <characteristics>
            <characteristic name="Speed" typeId="76fe-9a2a-b52c-7a61">3</characteristic>
            <characteristic name="Brutality" typeId="2947-0bce-f1e8-bf71">1</characteristic>
            <characteristic name="Cunning" typeId="b268-ae8a-4002-9bb8">1</characteristic>
            <characteristic name="Faith" typeId="bcf6-2d70-7020-f5b0">1</characteristic>
            <characteristic name="Arcana" typeId="a272-ef29-2448-76e4">0</characteristic>
            <characteristic name="Defence" typeId="4784-a2b1-4078-5e01">7</characteristic>
            <characteristic name="Wounds" typeId="a33c-c953-b917-d630">6</characteristic>
          </characteristics>
        </profile>
      </profiles>
      <infoLinks>
        <infoLink id="e0aa-5e66-4647-f334" name="Crushing Mass" hidden="false" targetId="9639-7ea9-be6a-0d3f" type="profile"/>
        <infoLink id="81ca-056b-1580-909a" name="Dismember" hidden="false" targetId="3740-5ddb-717f-10eb" type="rule"/>
        <infoLink id="a3f6-acc3-b228-4bfe" name="Shock" hidden="false" targetId="bb75-c8c1-de4e-7a83" type="rule"/>
        <infoLink id="8b0c-01fb-293f-7f17" name="Tough" hidden="false" targetId="4cda-dae9-f168-2fb5" type="rule"/>
        <infoLink id="12a1-64fe-22f2-ad14" name="Land Ship" hidden="false" targetId="9b77-f832-1832-cc29" type="rule"/>
        <infoLink id="bb66-d851-baae-7928" name="Troop Transport" hidden="false" targetId="dd86-6ee1-cfd5-faf7" type="rule"/>
      </infoLinks>
      <categoryLinks>
        <categoryLink id="56e6-9f4d-6cdc-9f1f" name="Elite" hidden="false" targetId="b21a-1990-468a-c730" primary="true"/>
      </categoryLinks>
      <selectionEntries>
        <selectionEntry id="5c3b-7ba1-2e22-33ce" name="Heavy Crawler" hidden="false" collective="false" import="true" type="upgrade">
          <constraints>
            <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="5c67-ae57-b7c6-4853" type="max"/>
          </constraints>
          <costs>
            <cost name="Points" typeId="8a76-0f71-96e3-b97c" value="20.0"/>
          </costs>
        </selectionEntry>
      </selectionEntries>
      <selectionEntryGroups>
        <selectionEntryGroup id="1fd1-f238-251e-f004" name="Equipment" hidden="false" collective="false" import="true">
          <constraints>
            <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="d7cf-9f31-2700-30c5" type="max"/>
            <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="dce3-66f8-1ef0-ebea" type="min"/>
          </constraints>
          <selectionEntries>
            <selectionEntry id="e60c-4e7f-9111-0482" name="Heavy Guns" hidden="false" collective="false" import="true" type="upgrade">
              <infoLinks>
                <infoLink id="1a92-3a51-e5fb-b932" name="Heavy Guns" hidden="false" targetId="6307-0635-5aa5-5da3" type="profile">
                  <modifiers>
                    <modifier type="increment" field="7474-4b21-4cd8-d9f9" value="5">
                      <conditions>
                        <condition field="selections" scope="3c3f-2e54-72e9-5df9" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" childId="5c3b-7ba1-2e22-33ce" type="equalTo"/>
                      </conditions>
                    </modifier>
                  </modifiers>
                </infoLink>
                <infoLink id="74fb-6e9b-ce9c-e4f5" name="Shock" hidden="false" targetId="bb75-c8c1-de4e-7a83" type="rule"/>
              </infoLinks>
              <costs>
                <cost name="Points" typeId="8a76-0f71-96e3-b97c" value="0.0"/>
              </costs>
            </selectionEntry>
            <selectionEntry id="6949-34bf-d4fb-0449" name="Flame Cannon" hidden="false" collective="false" import="true" type="upgrade">
              <infoLinks>
                <infoLink id="218b-5450-f638-9cf6" name="Flame Cannon" hidden="false" targetId="fbbe-fdb5-19f8-4d1b" type="profile">
                  <modifiers>
                    <modifier type="increment" field="7474-4b21-4cd8-d9f9" value="7">
                      <conditions>
                        <condition field="selections" scope="3c3f-2e54-72e9-5df9" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" childId="5c3b-7ba1-2e22-33ce" type="equalTo"/>
                      </conditions>
                    </modifier>
                  </modifiers>
                </infoLink>
                <infoLink id="815f-4174-d35d-b753" name="Burn" hidden="false" targetId="0d3f-0c90-aad0-4ec2" type="rule"/>
                <infoLink id="69d2-b765-38f8-b9da" name="Shock" hidden="false" targetId="bb75-c8c1-de4e-7a83" type="rule"/>
              </infoLinks>
              <costs>
                <cost name="Points" typeId="8a76-0f71-96e3-b97c" value="10.0"/>
              </costs>
            </selectionEntry>
          </selectionEntries>
        </selectionEntryGroup>
      </selectionEntryGroups>
      <costs>
        <cost name="Points" typeId="8a76-0f71-96e3-b97c" value="60.0"/>
      </costs>
    </selectionEntry>
    <selectionEntry id="e580-f0c6-5b7f-dece" name="Rocket Battery" hidden="false" collective="false" import="true" type="unit">
      <profiles>
        <profile id="df2e-eb04-cbc4-7cf5" name="Rocket Battery" hidden="false" typeId="8705-14e1-be6a-1f7e" typeName="- Unit -">
          <modifiers>
            <modifier type="increment" field="a33c-c953-b917-d630" value="1">
              <conditions>
                <condition field="selections" scope="e580-f0c6-5b7f-dece" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" childId="640a-acad-4e88-f231" type="equalTo"/>
              </conditions>
            </modifier>
            <modifier type="increment" field="76fe-9a2a-b52c-7a61" value="1">
              <conditions>
                <condition field="selections" scope="e580-f0c6-5b7f-dece" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" childId="640a-acad-4e88-f231" type="equalTo"/>
              </conditions>
            </modifier>
          </modifiers>
          <characteristics>
            <characteristic name="Speed" typeId="76fe-9a2a-b52c-7a61">3</characteristic>
            <characteristic name="Brutality" typeId="2947-0bce-f1e8-bf71">1</characteristic>
            <characteristic name="Cunning" typeId="b268-ae8a-4002-9bb8">1</characteristic>
            <characteristic name="Faith" typeId="bcf6-2d70-7020-f5b0">1</characteristic>
            <characteristic name="Arcana" typeId="a272-ef29-2448-76e4">0</characteristic>
            <characteristic name="Defence" typeId="4784-a2b1-4078-5e01">5</characteristic>
            <characteristic name="Wounds" typeId="a33c-c953-b917-d630">2</characteristic>
          </characteristics>
        </profile>
      </profiles>
      <infoGroups>
        <infoGroup id="36fe-52ce-112a-3e02" name="Rocket Salvo" hidden="false">
          <infoLinks>
            <infoLink id="c6ef-d6e8-b43b-5970" name="Rocket Salvo" hidden="false" targetId="5ad1-bd03-2a20-1ed5" type="profile"/>
            <infoLink id="5d9c-87f9-0542-ca49" name="Daze" hidden="false" targetId="05ce-cbf6-790e-6b58" type="rule"/>
            <infoLink id="b4a1-c2ca-9cfd-6df5" name="Shock" hidden="false" targetId="bb75-c8c1-de4e-7a83" type="rule"/>
          </infoLinks>
        </infoGroup>
      </infoGroups>
      <infoLinks>
        <infoLink id="2ae1-d69f-714f-2e79" name="Hand Weapons" hidden="false" targetId="1f37-d09c-dc0f-92d5" type="profile"/>
        <infoLink id="278a-9a21-9d92-1aa8" name="Explosive Ordinance" hidden="false" targetId="858b-63d6-90e1-0669" type="rule"/>
      </infoLinks>
      <categoryLinks>
        <categoryLink id="b084-947e-f30b-b830" name="New CategoryLink" hidden="false" targetId="b579-d163-2dd9-428a" primary="true"/>
      </categoryLinks>
      <selectionEntries>
        <selectionEntry id="640a-acad-4e88-f231" name="Extra Crew" hidden="false" collective="false" import="true" type="upgrade">
          <constraints>
            <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="7d66-f7a6-a5e3-f482" type="max"/>
          </constraints>
          <costs>
            <cost name="Points" typeId="8a76-0f71-96e3-b97c" value="5.0"/>
          </costs>
        </selectionEntry>
        <selectionEntry id="6894-c8ba-252a-fae9" name="Size" hidden="false" collective="false" import="true" type="upgrade">
          <constraints>
            <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="30c9-fa99-c107-cf88" type="min"/>
            <constraint field="selections" scope="parent" value="3.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="0572-e4f9-b733-18c6" type="max"/>
          </constraints>
          <costs>
            <cost name="Points" typeId="8a76-0f71-96e3-b97c" value="20.0"/>
          </costs>
        </selectionEntry>
      </selectionEntries>
      <costs>
        <cost name="Points" typeId="8a76-0f71-96e3-b97c" value="0.0"/>
      </costs>
    </selectionEntry>
    <selectionEntry id="bcca-46ed-7064-a495" name="Royal Magician" hidden="false" collective="false" import="true" type="model">
      <profiles>
        <profile id="ff35-5ae9-ce5b-4766" name="Royal Magician" hidden="false" typeId="8705-14e1-be6a-1f7e" typeName="- Unit -">
          <modifiers>
            <modifier type="set" field="76fe-9a2a-b52c-7a61" value="6">
              <conditions>
                <condition field="selections" scope="bcca-46ed-7064-a495" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" childId="97f9-e4e2-5533-39ae" type="equalTo"/>
              </conditions>
            </modifier>
            <modifier type="increment" field="a33c-c953-b917-d630" value="1">
              <repeats>
                <repeat field="selections" scope="bcca-46ed-7064-a495" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" childId="cbb8-5485-3322-c58a" repeats="1" roundUp="false"/>
              </repeats>
            </modifier>
          </modifiers>
          <characteristics>
            <characteristic name="Speed" typeId="76fe-9a2a-b52c-7a61">4</characteristic>
            <characteristic name="Brutality" typeId="2947-0bce-f1e8-bf71">1</characteristic>
            <characteristic name="Cunning" typeId="b268-ae8a-4002-9bb8">1</characteristic>
            <characteristic name="Faith" typeId="bcf6-2d70-7020-f5b0">0</characteristic>
            <characteristic name="Arcana" typeId="a272-ef29-2448-76e4">2</characteristic>
            <characteristic name="Defence" typeId="4784-a2b1-4078-5e01">6</characteristic>
            <characteristic name="Wounds" typeId="a33c-c953-b917-d630">2</characteristic>
          </characteristics>
        </profile>
      </profiles>
      <infoLinks>
        <infoLink id="f667-c79d-cc54-555a" name="Tough" hidden="false" targetId="4cda-dae9-f168-2fb5" type="rule"/>
        <infoLink id="3249-b2d7-f641-b166" name="From the Heavens" hidden="false" targetId="b60a-a56a-54e8-4a0e" type="profile"/>
        <infoLink id="7155-9c66-1a96-90a2" name="Psychic Mutations" hidden="false" targetId="ff9f-6c66-8889-c980" type="profile"/>
        <infoLink id="ff61-fc84-41ce-17ae" name="Chimeric Fury" hidden="false" targetId="3194-c449-b604-65b9" type="profile"/>
        <infoLink id="a758-47fa-6275-731d" name="Knightly Arms" hidden="false" targetId="6638-665c-032b-cdfb" type="profile">
          <modifiers>
            <modifier type="increment" field="7474-4b21-4cd8-d9f9" value="2">
              <repeats>
                <repeat field="selections" scope="bcca-46ed-7064-a495" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" childId="cbb8-5485-3322-c58a" repeats="1" roundUp="false"/>
              </repeats>
            </modifier>
          </modifiers>
        </infoLink>
      </infoLinks>
      <categoryLinks>
        <categoryLink id="710e-8fe0-8478-da43" name="Hero" hidden="false" targetId="1e83-9df6-39c1-f39c" primary="true"/>
      </categoryLinks>
      <selectionEntries>
        <selectionEntry id="cbb8-5485-3322-c58a" name="Bodyguard" hidden="false" collective="false" import="true" type="upgrade">
          <modifiers>
            <modifier type="decrement" field="5a36-9d41-28bf-21a7" value="1.0">
              <conditions>
                <condition field="selections" scope="bcca-46ed-7064-a495" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" childId="97f9-e4e2-5533-39ae" type="equalTo"/>
              </conditions>
            </modifier>
          </modifiers>
          <constraints>
            <constraint field="selections" scope="parent" value="2.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="5a36-9d41-28bf-21a7" type="max"/>
          </constraints>
          <costs>
            <cost name="Points" typeId="8a76-0f71-96e3-b97c" value="10.0"/>
          </costs>
        </selectionEntry>
        <selectionEntry id="97f9-e4e2-5533-39ae" name="Mounted" hidden="false" collective="false" import="true" type="upgrade">
          <constraints>
            <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="c8bc-1869-40e8-5128" type="max"/>
          </constraints>
          <costs>
            <cost name="Points" typeId="8a76-0f71-96e3-b97c" value="0.0"/>
          </costs>
        </selectionEntry>
      </selectionEntries>
      <costs>
        <cost name="Points" typeId="8a76-0f71-96e3-b97c" value="30.0"/>
      </costs>
    </selectionEntry>
    <selectionEntry id="1e7f-05f7-53f4-65df" name="Royal Marines" hidden="false" collective="false" import="true" type="upgrade">
      <profiles>
        <profile id="876f-e1b9-e8f0-157d" name="Royal Marines" hidden="false" typeId="8705-14e1-be6a-1f7e" typeName="- Unit -">
          <modifiers>
            <modifier type="increment" field="2947-0bce-f1e8-bf71" value="1">
              <conditions>
                <condition field="selections" scope="1e7f-05f7-53f4-65df" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" childId="66de-6cbd-722f-5ca9" type="equalTo"/>
              </conditions>
            </modifier>
          </modifiers>
          <characteristics>
            <characteristic name="Speed" typeId="76fe-9a2a-b52c-7a61">3</characteristic>
            <characteristic name="Brutality" typeId="2947-0bce-f1e8-bf71">1</characteristic>
            <characteristic name="Cunning" typeId="b268-ae8a-4002-9bb8">2</characteristic>
            <characteristic name="Faith" typeId="bcf6-2d70-7020-f5b0">1</characteristic>
            <characteristic name="Arcana" typeId="a272-ef29-2448-76e4">0</characteristic>
            <characteristic name="Defence" typeId="4784-a2b1-4078-5e01">5</characteristic>
            <characteristic name="Wounds" typeId="a33c-c953-b917-d630">3</characteristic>
          </characteristics>
        </profile>
      </profiles>
      <infoLinks>
        <infoLink id="c503-3ee9-9cc4-78c0" name="Musket Volley" hidden="false" targetId="4ac7-18da-c30d-c6d1" type="profile">
          <modifiers>
            <modifier type="set" field="ed90-5160-6b9a-06fe" value="14">
              <conditions>
                <condition field="selections" scope="1e7f-05f7-53f4-65df" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" childId="417b-e392-6485-03ef" type="equalTo"/>
              </conditions>
            </modifier>
          </modifiers>
        </infoLink>
        <infoLink id="9dac-7b6a-2c7e-850b" name="Bayonets" hidden="false" targetId="3d5c-a8f3-a472-40f5" type="profile"/>
      </infoLinks>
      <categoryLinks>
        <categoryLink id="ffa5-27e4-4fc8-04da" name="New CategoryLink" hidden="false" targetId="e456-9a72-74a3-c672" primary="true"/>
        <categoryLink id="b2af-5a46-dc61-21ba" name="New CategoryLink" hidden="false" targetId="e456-9a72-74a3-c672" primary="false"/>
      </categoryLinks>
      <selectionEntries>
        <selectionEntry id="f3c1-f905-7cfe-eecb" name="Size" hidden="false" collective="false" import="true" type="upgrade">
          <constraints>
            <constraint field="selections" scope="parent" value="5.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="f190-7a02-bf5b-2fd1" type="max"/>
            <constraint field="selections" scope="parent" value="3.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="5df2-d2a3-55a7-6f15" type="min"/>
          </constraints>
          <costs>
            <cost name="Points" typeId="8a76-0f71-96e3-b97c" value="10.0"/>
          </costs>
        </selectionEntry>
        <selectionEntry id="f91d-a21c-039b-abfe" name="Veterans" hidden="false" collective="false" import="true" type="upgrade">
          <comment>Hold Position becomes a Short Order.</comment>
          <constraints>
            <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="45ca-82f8-5acd-b27d" type="max"/>
          </constraints>
          <infoLinks>
            <infoLink id="26bb-2a2f-9fe2-f9c7" name="Veterans" hidden="false" targetId="57e5-7e08-fea5-aac9" type="rule"/>
          </infoLinks>
          <costs>
            <cost name="Points" typeId="8a76-0f71-96e3-b97c" value="10.0"/>
          </costs>
        </selectionEntry>
        <selectionEntry id="66de-6cbd-722f-5ca9" name="Raiders" hidden="false" collective="false" import="true" type="upgrade">
          <comment>Gain +1 Brutality.</comment>
          <constraints>
            <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="79a8-56bc-e0fd-c3e2" type="max"/>
          </constraints>
          <costs>
            <cost name="Points" typeId="8a76-0f71-96e3-b97c" value="10.0"/>
          </costs>
        </selectionEntry>
        <selectionEntry id="8149-fec2-816f-1e03" name="Regimental Standard" hidden="false" collective="false" import="true" type="upgrade">
          <comment>Gain +1 on nerve tests.</comment>
          <constraints>
            <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="5c50-ce1e-a1e3-3efa" type="max"/>
          </constraints>
          <infoLinks>
            <infoLink id="1d35-793c-1ec6-aa69" name="Regimental Standard" hidden="false" targetId="1298-2f75-cc32-72a3" type="rule"/>
          </infoLinks>
          <costs>
            <cost name="Points" typeId="8a76-0f71-96e3-b97c" value="5.0"/>
          </costs>
        </selectionEntry>
        <selectionEntry id="417b-e392-6485-03ef" name="Rifles" hidden="false" collective="false" import="true" type="upgrade">
          <comment>Musket volley becomes range 14.</comment>
          <constraints>
            <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="f523-daf9-2423-d94c" type="max"/>
          </constraints>
          <costs>
            <cost name="Points" typeId="8a76-0f71-96e3-b97c" value="5.0"/>
          </costs>
        </selectionEntry>
      </selectionEntries>
      <costs>
        <cost name="Points" typeId="8a76-0f71-96e3-b97c" value="0.0"/>
      </costs>
    </selectionEntry>
    <selectionEntry id="eca3-19ad-4204-4052" name="Royal Hussars" hidden="false" collective="false" import="true" type="unit">
      <profiles>
        <profile id="2fae-a6df-109b-8488" name="Royal Hussars" hidden="false" typeId="8705-14e1-be6a-1f7e" typeName="- Unit -">
          <characteristics>
            <characteristic name="Speed" typeId="76fe-9a2a-b52c-7a61">5</characteristic>
            <characteristic name="Brutality" typeId="2947-0bce-f1e8-bf71">2</characteristic>
            <characteristic name="Cunning" typeId="b268-ae8a-4002-9bb8">0</characteristic>
            <characteristic name="Faith" typeId="bcf6-2d70-7020-f5b0">1</characteristic>
            <characteristic name="Arcana" typeId="a272-ef29-2448-76e4">0</characteristic>
            <characteristic name="Defence" typeId="4784-a2b1-4078-5e01">5</characteristic>
            <characteristic name="Wounds" typeId="a33c-c953-b917-d630">1</characteristic>
          </characteristics>
        </profile>
      </profiles>
      <infoLinks>
        <infoLink id="5542-34f3-0379-5848" name="Cavalry Sabers" hidden="false" targetId="2f8e-cf01-a6b4-8a99" type="profile">
          <modifiers>
            <modifier type="set" field="e339-e6bf-a6ef-ad36" value="SHOCK 2 on Charge, Dismember">
              <conditions>
                <condition field="selections" scope="eca3-19ad-4204-4052" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" childId="baae-7093-894f-dcef" type="equalTo"/>
              </conditions>
            </modifier>
          </modifiers>
        </infoLink>
      </infoLinks>
      <categoryLinks>
        <categoryLink id="3061-026c-99a6-8a5a" name="New CategoryLink" hidden="false" targetId="41bb-57e3-d78c-6592" primary="true"/>
      </categoryLinks>
      <selectionEntries>
        <selectionEntry id="ee0b-1ec9-a018-2d21" name="Size" hidden="false" collective="false" import="true" type="upgrade">
          <constraints>
            <constraint field="selections" scope="parent" value="6.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="6a0b-8e9e-9608-625e" type="max"/>
            <constraint field="selections" scope="parent" value="3.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="afc9-f017-cdb8-1c5a" type="min"/>
          </constraints>
          <costs>
            <cost name="Points" typeId="8a76-0f71-96e3-b97c" value="5.0"/>
          </costs>
        </selectionEntry>
        <selectionEntry id="baae-7093-894f-dcef" name="Death&apos;s Head" hidden="false" collective="false" import="true" type="upgrade">
          <constraints>
            <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="c4e9-9c14-fe15-1fb8" type="max"/>
          </constraints>
          <infoLinks>
            <infoLink id="2749-3da4-1771-43a6" name="Dismember" hidden="false" targetId="3740-5ddb-717f-10eb" type="rule"/>
          </infoLinks>
          <costs>
            <cost name="Points" typeId="8a76-0f71-96e3-b97c" value="5.0"/>
          </costs>
        </selectionEntry>
        <selectionEntry id="e1b3-f493-036f-c2c3" name="Voulenteer&apos;s Bravado" hidden="false" collective="false" import="true" type="upgrade">
          <constraints>
            <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="96ca-b9da-e48b-5055" type="max"/>
          </constraints>
          <infoLinks>
            <infoLink id="0afc-3161-9216-55ee" name="Noble" hidden="false" targetId="98e6-d284-b2b6-a6b1" type="rule"/>
          </infoLinks>
          <costs>
            <cost name="Points" typeId="8a76-0f71-96e3-b97c" value="5.0"/>
          </costs>
        </selectionEntry>
      </selectionEntries>
      <costs>
        <cost name="Points" typeId="8a76-0f71-96e3-b97c" value="0.0"/>
      </costs>
    </selectionEntry>
    <selectionEntry id="0e7d-2b47-75fb-fe3f" name="Battle Kite" hidden="false" collective="false" import="true" type="model">
      <profiles>
        <profile id="d6f6-e440-4e84-8703" name="Battle Kite" hidden="false" typeId="8705-14e1-be6a-1f7e" typeName="- Unit -">
          <modifiers>
            <modifier type="increment" field="4784-a2b1-4078-5e01" value="1">
              <conditions>
                <condition field="selections" scope="0e7d-2b47-75fb-fe3f" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" childId="bebe-fb25-7158-c849" type="equalTo"/>
              </conditions>
            </modifier>
          </modifiers>
          <characteristics>
            <characteristic name="Speed" typeId="76fe-9a2a-b52c-7a61">7</characteristic>
            <characteristic name="Brutality" typeId="2947-0bce-f1e8-bf71">0</characteristic>
            <characteristic name="Cunning" typeId="b268-ae8a-4002-9bb8">1</characteristic>
            <characteristic name="Faith" typeId="bcf6-2d70-7020-f5b0">1</characteristic>
            <characteristic name="Arcana" typeId="a272-ef29-2448-76e4">0</characteristic>
            <characteristic name="Defence" typeId="4784-a2b1-4078-5e01">5</characteristic>
            <characteristic name="Wounds" typeId="a33c-c953-b917-d630">5</characteristic>
          </characteristics>
        </profile>
      </profiles>
      <infoLinks>
        <infoLink id="c3cd-1740-da17-73bf" name="Flying Ship" hidden="false" targetId="229a-5647-b163-578a" type="rule"/>
        <infoLink id="d096-9fa2-e679-6453" name="Strafing Run" hidden="false" targetId="5514-bca0-feae-b273" type="rule"/>
        <infoLink id="1b96-a125-eddf-8bb1" name="Troop Transport" hidden="false" targetId="dd86-6ee1-cfd5-faf7" type="rule">
          <modifiers>
            <modifier type="set" field="hidden" value="true">
              <conditions>
                <condition field="selections" scope="0e7d-2b47-75fb-fe3f" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" childId="df4f-505e-80a8-789a" type="equalTo"/>
              </conditions>
            </modifier>
          </modifiers>
        </infoLink>
        <infoLink id="28f9-621c-3a4e-b21e" name="Bombs" hidden="false" targetId="427f-cd9d-d3be-ae1c" type="profile">
          <modifiers>
            <modifier type="increment" field="7474-4b21-4cd8-d9f9" value="3">
              <conditions>
                <condition field="selections" scope="0e7d-2b47-75fb-fe3f" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" childId="df4f-505e-80a8-789a" type="equalTo"/>
              </conditions>
            </modifier>
          </modifiers>
        </infoLink>
      </infoLinks>
      <categoryLinks>
        <categoryLink id="60ae-e7f0-468b-a586" name="New CategoryLink" hidden="false" targetId="b21a-1990-468a-c730" primary="true"/>
      </categoryLinks>
      <selectionEntries>
        <selectionEntry id="bebe-fb25-7158-c849" name="Veteran Pilot" hidden="false" collective="false" import="true" type="upgrade">
          <constraints>
            <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="96c6-cec0-e93e-e031" type="max"/>
          </constraints>
          <costs>
            <cost name="Points" typeId="8a76-0f71-96e3-b97c" value="10.0"/>
          </costs>
        </selectionEntry>
        <selectionEntry id="df4f-505e-80a8-789a" name="Bomber Kite" hidden="false" collective="false" import="true" type="upgrade">
          <constraints>
            <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="95f7-085c-e620-4727" type="max"/>
          </constraints>
          <costs>
            <cost name="Points" typeId="8a76-0f71-96e3-b97c" value="10.0"/>
          </costs>
        </selectionEntry>
      </selectionEntries>
      <costs>
        <cost name="Points" typeId="8a76-0f71-96e3-b97c" value="30.0"/>
      </costs>
    </selectionEntry>
    <selectionEntry id="9935-2727-c78f-980d" name="Mortar Teams" hidden="false" collective="false" import="true" type="unit">
      <profiles>
        <profile id="b9b6-d164-4a46-6b18" name="Mortar Teams" hidden="false" typeId="8705-14e1-be6a-1f7e" typeName="- Unit -">
          <modifiers>
            <modifier type="increment" field="a33c-c953-b917-d630" value="1">
              <conditions>
                <condition field="selections" scope="9935-2727-c78f-980d" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" childId="3c35-697a-92da-72cb" type="equalTo"/>
              </conditions>
            </modifier>
            <modifier type="increment" field="76fe-9a2a-b52c-7a61" value="1">
              <conditions>
                <condition field="selections" scope="9935-2727-c78f-980d" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" childId="3c35-697a-92da-72cb" type="equalTo"/>
              </conditions>
            </modifier>
          </modifiers>
          <characteristics>
            <characteristic name="Speed" typeId="76fe-9a2a-b52c-7a61">3</characteristic>
            <characteristic name="Brutality" typeId="2947-0bce-f1e8-bf71">1</characteristic>
            <characteristic name="Cunning" typeId="b268-ae8a-4002-9bb8">1</characteristic>
            <characteristic name="Faith" typeId="bcf6-2d70-7020-f5b0">1</characteristic>
            <characteristic name="Arcana" typeId="a272-ef29-2448-76e4">0</characteristic>
            <characteristic name="Defence" typeId="4784-a2b1-4078-5e01">5</characteristic>
            <characteristic name="Wounds" typeId="a33c-c953-b917-d630">2</characteristic>
          </characteristics>
        </profile>
      </profiles>
      <infoLinks>
        <infoLink id="011c-382b-5d32-2a8b" name="Light Mortar" hidden="false" targetId="eafb-6a9f-e5c0-2595" type="profile"/>
        <infoLink id="16e4-9e64-2257-7a35" name="Hand Weapons" hidden="false" targetId="1f37-d09c-dc0f-92d5" type="profile"/>
        <infoLink id="bbeb-f9f1-972b-a615" name="Explosive Ordinance" hidden="false" targetId="858b-63d6-90e1-0669" type="rule"/>
        <infoLink id="59b8-f5d8-2b1d-5895" name="Indirect Fire" hidden="false" targetId="9998-6eb9-7579-b9bc" type="rule"/>
      </infoLinks>
      <categoryLinks>
        <categoryLink id="cafb-a0fc-9022-77b2" name="New CategoryLink" hidden="false" targetId="b579-d163-2dd9-428a" primary="true"/>
      </categoryLinks>
      <selectionEntries>
        <selectionEntry id="d371-88d4-ee5a-9c0c" name="Size" hidden="false" collective="false" import="true" type="upgrade">
          <constraints>
            <constraint field="selections" scope="parent" value="3.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="a03b-d043-74dc-609d" type="max"/>
            <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="bb37-10ee-8c1f-feeb" type="min"/>
          </constraints>
          <costs>
            <cost name="Points" typeId="8a76-0f71-96e3-b97c" value="20.0"/>
          </costs>
        </selectionEntry>
        <selectionEntry id="3c35-697a-92da-72cb" name="Extra Crew" hidden="false" collective="false" import="true" type="upgrade">
          <constraints>
            <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="1d99-7de3-1450-8b8b" type="max"/>
          </constraints>
          <costs>
            <cost name="Points" typeId="8a76-0f71-96e3-b97c" value="5.0"/>
          </costs>
        </selectionEntry>
      </selectionEntries>
      <costs>
        <cost name="Points" typeId="8a76-0f71-96e3-b97c" value="0.0"/>
      </costs>
    </selectionEntry>
    <selectionEntry id="0027-054f-3b68-9d03" name="Knights of the Realm" hidden="false" collective="false" import="true" type="unit">
      <profiles>
        <profile id="595b-9e9a-7d00-77b9" name="Knights of the Realm" hidden="false" typeId="8705-14e1-be6a-1f7e" typeName="- Unit -">
          <modifiers>
            <modifier type="increment" field="76fe-9a2a-b52c-7a61" value="2">
              <conditions>
                <condition field="selections" scope="0027-054f-3b68-9d03" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" childId="edc6-2722-71a3-c055" type="equalTo"/>
              </conditions>
            </modifier>
          </modifiers>
          <characteristics>
            <characteristic name="Speed" typeId="76fe-9a2a-b52c-7a61">4</characteristic>
            <characteristic name="Brutality" typeId="2947-0bce-f1e8-bf71">2</characteristic>
            <characteristic name="Cunning" typeId="b268-ae8a-4002-9bb8">2</characteristic>
            <characteristic name="Faith" typeId="bcf6-2d70-7020-f5b0">2</characteristic>
            <characteristic name="Arcana" typeId="a272-ef29-2448-76e4">0</characteristic>
            <characteristic name="Defence" typeId="4784-a2b1-4078-5e01">7</characteristic>
            <characteristic name="Wounds" typeId="a33c-c953-b917-d630">2</characteristic>
          </characteristics>
        </profile>
      </profiles>
      <infoLinks>
        <infoLink id="2448-f863-5caf-c858" name="Knightly Arms" hidden="false" targetId="6638-665c-032b-cdfb" type="profile">
          <modifiers>
            <modifier type="set" field="e339-e6bf-a6ef-ad36" value="SHOCK 2 on Charge, DISMEMBER"/>
          </modifiers>
        </infoLink>
        <infoLink id="510b-bc4f-9fae-35de" name="Tough" hidden="false" targetId="4cda-dae9-f168-2fb5" type="rule"/>
        <infoLink id="36b0-9b13-124d-ea66" name="Noble" hidden="false" targetId="98e6-d284-b2b6-a6b1" type="rule"/>
        <infoLink id="58b2-add1-0984-47fc" name="Dismember" hidden="false" targetId="3740-5ddb-717f-10eb" type="rule"/>
        <infoLink id="8efa-585f-e5a0-88f1" name="Inspire" hidden="false" targetId="6fbd-6877-b3f4-82a0" type="profile"/>
        <infoLink id="c2f7-1d78-2b53-8440" name="Warcry" hidden="false" targetId="00de-6c9d-433d-29b4" type="profile"/>
        <infoLink id="3aa8-11c0-d3b6-fb0f" name="Heroic Speech" hidden="false" targetId="3509-4cba-ee7c-069b" type="profile"/>
        <infoLink id="7dcb-0726-7dd1-9697" name="Go At Them" hidden="false" targetId="0a69-11f6-d0c7-2497" type="profile"/>
        <infoLink id="97d1-2c9b-5a14-b852" name="Martyrdom" hidden="false" targetId="5ff2-1e29-fe90-5e6c" type="profile"/>
        <infoLink id="fd7f-50bc-f072-d144" name="Bastion" hidden="false" targetId="3bb8-8629-70a4-cce8" type="profile"/>
      </infoLinks>
      <categoryLinks>
        <categoryLink id="ea2c-da4f-fc2f-7087" name="Commander" hidden="false" targetId="43d5-c037-98f1-6f47" primary="false"/>
        <categoryLink id="edec-f3df-573b-6665" name="New CategoryLink" hidden="false" targetId="1e83-9df6-39c1-f39c" primary="true"/>
      </categoryLinks>
      <selectionEntries>
        <selectionEntry id="838d-4d1b-892b-9db2" name="Size" hidden="false" collective="false" import="true" type="upgrade">
          <modifiers>
            <modifier type="decrement" field="3d24-f53a-6816-152a" value="2.0">
              <conditions>
                <condition field="selections" scope="0027-054f-3b68-9d03" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" childId="edc6-2722-71a3-c055" type="equalTo"/>
              </conditions>
            </modifier>
            <modifier type="decrement" field="4561-ac8d-eb92-c26c" value="2.0">
              <conditions>
                <condition field="selections" scope="0027-054f-3b68-9d03" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" childId="edc6-2722-71a3-c055" type="equalTo"/>
              </conditions>
            </modifier>
            <modifier type="increment" field="3d24-f53a-6816-152a" value="1.0">
              <conditions>
                <condition field="selections" scope="0027-054f-3b68-9d03" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" childId="5f1a-2849-59b6-4a84" type="equalTo"/>
              </conditions>
            </modifier>
            <modifier type="increment" field="4561-ac8d-eb92-c26c" value="1.0">
              <conditions>
                <condition field="selections" scope="0027-054f-3b68-9d03" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" childId="5f1a-2849-59b6-4a84" type="equalTo"/>
              </conditions>
            </modifier>
          </modifiers>
          <constraints>
            <constraint field="selections" scope="parent" value="5.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="4561-ac8d-eb92-c26c" type="max"/>
            <constraint field="selections" scope="parent" value="5.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="3d24-f53a-6816-152a" type="min"/>
          </constraints>
          <costs>
            <cost name="Points" typeId="8a76-0f71-96e3-b97c" value="0.0"/>
          </costs>
        </selectionEntry>
        <selectionEntry id="5f1a-2849-59b6-4a84" name="The First Among Equals" hidden="false" collective="false" import="true" type="upgrade">
          <constraints>
            <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="b5a0-e41c-2ae6-e01c" type="max"/>
          </constraints>
          <rules>
            <rule id="e145-b814-9325-5063" name="The First Among Equals" hidden="false">
              <description>The Knights of the Ream gain one additional figure.
All friendly units gain +2 Faith while within 15” of this figure.</description>
            </rule>
          </rules>
          <costs>
            <cost name="Points" typeId="8a76-0f71-96e3-b97c" value="15.0"/>
          </costs>
        </selectionEntry>
        <selectionEntry id="edc6-2722-71a3-c055" name="Mounted" hidden="false" collective="false" import="true" type="upgrade">
          <constraints>
            <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="b06b-ff4a-b264-d0bf" type="max"/>
          </constraints>
          <costs>
            <cost name="Points" typeId="8a76-0f71-96e3-b97c" value="0.0"/>
          </costs>
        </selectionEntry>
      </selectionEntries>
      <costs>
        <cost name="Points" typeId="8a76-0f71-96e3-b97c" value="40.0"/>
      </costs>
    </selectionEntry>
    <selectionEntry id="ef25-ff11-ccf3-06aa" name="Longbowmen" hidden="false" collective="false" import="true" type="unit">
      <profiles>
        <profile id="fc53-1593-f4fd-350d" name="Longbowmen" hidden="false" typeId="8705-14e1-be6a-1f7e" typeName="- Unit -">
          <characteristics>
            <characteristic name="Speed" typeId="76fe-9a2a-b52c-7a61">3</characteristic>
            <characteristic name="Brutality" typeId="2947-0bce-f1e8-bf71">1</characteristic>
            <characteristic name="Cunning" typeId="b268-ae8a-4002-9bb8">1</characteristic>
            <characteristic name="Faith" typeId="bcf6-2d70-7020-f5b0">1</characteristic>
            <characteristic name="Arcana" typeId="a272-ef29-2448-76e4">0</characteristic>
            <characteristic name="Defence" typeId="4784-a2b1-4078-5e01">5</characteristic>
            <characteristic name="Wounds" typeId="a33c-c953-b917-d630">3</characteristic>
          </characteristics>
        </profile>
      </profiles>
      <infoLinks>
        <infoLink id="2e00-4ca8-3703-c025" name="Longbow Volley" hidden="false" targetId="d377-03a6-3b3a-f3b2" type="profile"/>
        <infoLink id="fdce-5617-4c4a-69c8" name="Hand Weapons" hidden="false" targetId="1f37-d09c-dc0f-92d5" type="profile"/>
        <infoLink id="7994-bbce-6752-6ce1" name="Bleed" hidden="false" targetId="a618-9ce2-86be-3c00" type="rule"/>
      </infoLinks>
      <categoryLinks>
        <categoryLink id="87ca-40dd-f2b1-a45e" name="New CategoryLink" hidden="false" targetId="e456-9a72-74a3-c672" primary="true"/>
      </categoryLinks>
      <selectionEntries>
        <selectionEntry id="5721-7ccc-3ca7-6eb1" name="Size" hidden="false" collective="false" import="true" type="upgrade">
          <constraints>
            <constraint field="selections" scope="parent" value="6.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="2664-2c74-c3bc-d578" type="max"/>
            <constraint field="selections" scope="parent" value="3.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="5843-cb8e-5eaf-1c2e" type="min"/>
          </constraints>
          <costs>
            <cost name="Points" typeId="8a76-0f71-96e3-b97c" value="10.0"/>
          </costs>
        </selectionEntry>
        <selectionEntry id="9b65-d851-1e18-ddc2" name="Regimental Standard" hidden="false" collective="false" import="true" type="upgrade">
          <constraints>
            <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="3c62-465e-c97f-783f" type="max"/>
          </constraints>
          <infoLinks>
            <infoLink id="2e1d-cf61-8321-69dc" name="Regimental Standard" hidden="false" targetId="1298-2f75-cc32-72a3" type="rule"/>
          </infoLinks>
          <costs>
            <cost name="Points" typeId="8a76-0f71-96e3-b97c" value="5.0"/>
          </costs>
        </selectionEntry>
        <selectionEntry id="c72b-c440-3923-a639" name="Musician" hidden="false" collective="false" import="true" type="upgrade">
          <constraints>
            <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="abf1-54b2-ceca-3d7e" type="max"/>
          </constraints>
          <infoLinks>
            <infoLink id="fec4-9cc6-81dc-662c" name="Regimental Song" hidden="false" targetId="2897-8c59-3591-8170" type="profile"/>
          </infoLinks>
          <costs>
            <cost name="Points" typeId="8a76-0f71-96e3-b97c" value="5.0"/>
          </costs>
        </selectionEntry>
      </selectionEntries>
      <costs>
        <cost name="Points" typeId="8a76-0f71-96e3-b97c" value="0.0"/>
      </costs>
    </selectionEntry>
    <selectionEntry id="0c1f-d309-1e88-faca" name="Heavy Infantry" hidden="false" collective="false" import="true" type="unit">
      <profiles>
        <profile id="79f0-9173-275f-ac78" name="Heavy Infantry" hidden="false" typeId="8705-14e1-be6a-1f7e" typeName="- Unit -">
          <modifiers>
            <modifier type="increment" field="4784-a2b1-4078-5e01" value="1">
              <conditions>
                <condition field="selections" scope="0c1f-d309-1e88-faca" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" childId="1141-c59e-ab10-4f5a" type="equalTo"/>
              </conditions>
            </modifier>
          </modifiers>
          <characteristics>
            <characteristic name="Speed" typeId="76fe-9a2a-b52c-7a61">3</characteristic>
            <characteristic name="Brutality" typeId="2947-0bce-f1e8-bf71">2</characteristic>
            <characteristic name="Cunning" typeId="b268-ae8a-4002-9bb8">1</characteristic>
            <characteristic name="Faith" typeId="bcf6-2d70-7020-f5b0">1</characteristic>
            <characteristic name="Arcana" typeId="a272-ef29-2448-76e4">0</characteristic>
            <characteristic name="Defence" typeId="4784-a2b1-4078-5e01">5</characteristic>
            <characteristic name="Wounds" typeId="a33c-c953-b917-d630">3</characteristic>
          </characteristics>
        </profile>
      </profiles>
      <infoLinks>
        <infoLink id="5ba6-91dd-0e92-f714" name="Pole Weapons" hidden="false" targetId="0da8-dbb8-09e3-e303" type="profile"/>
      </infoLinks>
      <categoryLinks>
        <categoryLink id="4c3b-6d01-c8ff-2993" name="New CategoryLink" hidden="false" targetId="e456-9a72-74a3-c672" primary="true"/>
      </categoryLinks>
      <selectionEntries>
        <selectionEntry id="6acf-9b35-ee21-569c" name="Musician" hidden="false" collective="false" import="true" type="upgrade">
          <constraints>
            <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="e36e-4d83-de4f-84a3" type="max"/>
          </constraints>
          <infoLinks>
            <infoLink id="fa80-014c-d360-d806" name="Regimental Song" hidden="false" targetId="2897-8c59-3591-8170" type="profile"/>
          </infoLinks>
          <costs>
            <cost name="Points" typeId="8a76-0f71-96e3-b97c" value="5.0"/>
          </costs>
        </selectionEntry>
        <selectionEntry id="7630-f16b-5b7d-b325" name="Regimental Standard" hidden="false" collective="false" import="true" type="upgrade">
          <constraints>
            <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="9c37-9bb5-d73a-1aff" type="max"/>
          </constraints>
          <infoLinks>
            <infoLink id="69d6-90f1-abd9-9a52" name="Regimental Standard" hidden="false" targetId="1298-2f75-cc32-72a3" type="rule"/>
          </infoLinks>
          <costs>
            <cost name="Points" typeId="8a76-0f71-96e3-b97c" value="5.0"/>
          </costs>
        </selectionEntry>
        <selectionEntry id="b090-5f7a-b7a1-e27e" name="Size" hidden="false" collective="false" import="true" type="upgrade">
          <constraints>
            <constraint field="selections" scope="parent" value="6.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="5a5c-e9b5-9c77-b24d" type="max"/>
            <constraint field="selections" scope="parent" value="3.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="4af6-1c2e-e197-dca7" type="min"/>
          </constraints>
          <costs>
            <cost name="Points" typeId="8a76-0f71-96e3-b97c" value="10.0"/>
          </costs>
        </selectionEntry>
        <selectionEntry id="1141-c59e-ab10-4f5a" name="Full Armor" hidden="false" collective="false" import="true" type="upgrade">
          <constraints>
            <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="96a5-1ed8-daa7-7053" type="max"/>
          </constraints>
          <costs>
            <cost name="Points" typeId="8a76-0f71-96e3-b97c" value="10.0"/>
          </costs>
        </selectionEntry>
      </selectionEntries>
      <costs>
        <cost name="Points" typeId="8a76-0f71-96e3-b97c" value="0.0"/>
      </costs>
    </selectionEntry>
    <selectionEntry id="da58-1082-f29e-4e8e" name="Men-At-Arms" hidden="false" collective="false" import="true" type="unit">
      <profiles>
        <profile id="de07-59b8-bb60-1a73" name="Men-At-Arms" hidden="false" typeId="8705-14e1-be6a-1f7e" typeName="- Unit -">
          <characteristics>
            <characteristic name="Speed" typeId="76fe-9a2a-b52c-7a61">3</characteristic>
            <characteristic name="Brutality" typeId="2947-0bce-f1e8-bf71">1</characteristic>
            <characteristic name="Cunning" typeId="b268-ae8a-4002-9bb8">1</characteristic>
            <characteristic name="Faith" typeId="bcf6-2d70-7020-f5b0">1</characteristic>
            <characteristic name="Arcana" typeId="a272-ef29-2448-76e4">0</characteristic>
            <characteristic name="Defence" typeId="4784-a2b1-4078-5e01">6</characteristic>
            <characteristic name="Wounds" typeId="a33c-c953-b917-d630">1</characteristic>
          </characteristics>
        </profile>
      </profiles>
      <categoryLinks>
        <categoryLink id="bfa2-9773-363e-e4ef" name="New CategoryLink" hidden="false" targetId="8015-519c-a80c-a4d2" primary="true"/>
      </categoryLinks>
      <selectionEntries>
        <selectionEntry id="70eb-1a1b-9935-ea24" name="Line Breakers" hidden="false" collective="false" import="true" type="upgrade">
          <constraints>
            <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="07c9-5979-572f-9bec" type="max"/>
          </constraints>
          <infoLinks>
            <infoLink id="4266-8986-5aa1-004b" name="Daze" hidden="false" targetId="05ce-cbf6-790e-6b58" type="rule"/>
          </infoLinks>
          <costs>
            <cost name="Points" typeId="8a76-0f71-96e3-b97c" value="5.0"/>
          </costs>
        </selectionEntry>
        <selectionEntry id="4b6b-c1e1-2797-7d08" name="Size" hidden="false" collective="false" import="true" type="upgrade">
          <constraints>
            <constraint field="selections" scope="parent" value="8.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="6cef-1f7a-a107-f378" type="max"/>
            <constraint field="selections" scope="parent" value="4.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="2fcb-5afc-6843-358a" type="min"/>
          </constraints>
          <costs>
            <cost name="Points" typeId="8a76-0f71-96e3-b97c" value="5.0"/>
          </costs>
        </selectionEntry>
      </selectionEntries>
      <selectionEntryGroups>
        <selectionEntryGroup id="4a6f-f239-5c8c-3835" name="Equipment" hidden="false" collective="false" import="true">
          <constraints>
            <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="d22e-82dd-fda9-014f" type="max"/>
            <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="f2de-e83b-55ee-f934" type="min"/>
          </constraints>
          <selectionEntries>
            <selectionEntry id="8e67-959c-b1d8-81a4" name="Heavy Weapon" hidden="false" collective="false" import="true" type="upgrade">
              <infoLinks>
                <infoLink id="60de-ebb7-454a-5b85" name="Heavy Weapon" hidden="false" targetId="7ac5-b06a-4566-2b97" type="profile">
                  <modifiers>
                    <modifier type="set" field="e339-e6bf-a6ef-ad36" value="Daze">
                      <conditions>
                        <condition field="selections" scope="da58-1082-f29e-4e8e" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" childId="70eb-1a1b-9935-ea24" type="equalTo"/>
                      </conditions>
                    </modifier>
                  </modifiers>
                </infoLink>
              </infoLinks>
            </selectionEntry>
            <selectionEntry id="5730-6e01-ec7a-f0b4" name="Martial Weapon" hidden="false" collective="false" import="true" type="upgrade">
              <infoLinks>
                <infoLink id="c2ca-5bdd-4de8-276a" name="Martial Weapon" hidden="false" targetId="1954-87a0-701b-805e" type="profile">
                  <modifiers>
                    <modifier type="set" field="e339-e6bf-a6ef-ad36" value="Daze">
                      <conditions>
                        <condition field="selections" scope="da58-1082-f29e-4e8e" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" childId="70eb-1a1b-9935-ea24" type="equalTo"/>
                      </conditions>
                    </modifier>
                  </modifiers>
                </infoLink>
                <infoLink id="bc5f-15b1-f283-e0ee" name="Shield Wall" hidden="false" targetId="8975-b274-03b4-6142" type="rule"/>
              </infoLinks>
            </selectionEntry>
          </selectionEntries>
        </selectionEntryGroup>
      </selectionEntryGroups>
      <costs>
        <cost name="Points" typeId="8a76-0f71-96e3-b97c" value="0.0"/>
      </costs>
    </selectionEntry>
    <selectionEntry id="db9f-13b0-581f-4f04" name="Sacred Icon" hidden="false" collective="false" import="true" type="model">
      <profiles>
        <profile id="2f51-92c4-7f05-efff" name="Sacred Icon" hidden="false" typeId="8705-14e1-be6a-1f7e" typeName="- Unit -">
          <modifiers>
            <modifier type="increment" field="a33c-c953-b917-d630" value="1">
              <repeats>
                <repeat field="selections" scope="db9f-13b0-581f-4f04" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" childId="f4a0-a1a5-d741-5bfe" repeats="1" roundUp="false"/>
              </repeats>
            </modifier>
          </modifiers>
          <characteristics>
            <characteristic name="Speed" typeId="76fe-9a2a-b52c-7a61">3</characteristic>
            <characteristic name="Brutality" typeId="2947-0bce-f1e8-bf71">0</characteristic>
            <characteristic name="Cunning" typeId="b268-ae8a-4002-9bb8">0</characteristic>
            <characteristic name="Faith" typeId="bcf6-2d70-7020-f5b0">2</characteristic>
            <characteristic name="Arcana" typeId="a272-ef29-2448-76e4">0</characteristic>
            <characteristic name="Defence" typeId="4784-a2b1-4078-5e01">7</characteristic>
            <characteristic name="Wounds" typeId="a33c-c953-b917-d630">3</characteristic>
          </characteristics>
        </profile>
      </profiles>
      <infoLinks>
        <infoLink id="d488-c06d-2f8e-6707" name="Knightly Arms" hidden="false" targetId="6638-665c-032b-cdfb" type="profile">
          <modifiers>
            <modifier type="increment" field="7474-4b21-4cd8-d9f9" value="2">
              <repeats>
                <repeat field="selections" scope="db9f-13b0-581f-4f04" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" childId="f4a0-a1a5-d741-5bfe" repeats="1" roundUp="false"/>
              </repeats>
            </modifier>
            <modifier type="set" field="hidden" value="true">
              <conditions>
                <condition field="selections" scope="db9f-13b0-581f-4f04" value="0.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" childId="f4a0-a1a5-d741-5bfe" type="equalTo"/>
              </conditions>
            </modifier>
            <modifier type="decrement" field="7474-4b21-4cd8-d9f9" value="2"/>
          </modifiers>
        </infoLink>
        <infoLink id="f8d7-bb3a-170d-470c" name="Tough" hidden="false" targetId="4cda-dae9-f168-2fb5" type="rule"/>
        <infoLink id="502a-5d68-8f9b-aee7" name="Yield Not!" hidden="false" targetId="eaab-ddd5-1b17-40e9" type="profile"/>
        <infoLink id="2568-f96b-b4c2-5fb2" name="Righteous Fury" hidden="false" targetId="7df4-2989-4bfd-945e" type="profile"/>
        <infoLink id="e280-0a31-249e-02d6" name="Blessed Resurrection" hidden="false" targetId="bc8d-74b9-3dab-e9c9" type="profile"/>
      </infoLinks>
      <categoryLinks>
        <categoryLink id="2b6c-9e86-b26e-c275" name="New CategoryLink" hidden="false" targetId="b21a-1990-468a-c730" primary="true"/>
      </categoryLinks>
      <selectionEntries>
        <selectionEntry id="f4a0-a1a5-d741-5bfe" name="Bodyguard" hidden="false" collective="false" import="true" type="upgrade">
          <constraints>
            <constraint field="selections" scope="parent" value="2.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="524b-b66a-52b3-f0ed" type="max"/>
          </constraints>
          <costs>
            <cost name="Points" typeId="8a76-0f71-96e3-b97c" value="10.0"/>
          </costs>
        </selectionEntry>
      </selectionEntries>
      <costs>
        <cost name="Points" typeId="8a76-0f71-96e3-b97c" value="30.0"/>
      </costs>
    </selectionEntry>
    <selectionEntry id="6887-ea1d-3e3b-a218" name="Priest of the Manticore" hidden="false" collective="false" import="true" type="model">
      <profiles>
        <profile id="ed99-4c3c-41b0-82fb" name="Priest of the Manticore" hidden="false" typeId="8705-14e1-be6a-1f7e" typeName="- Unit -">
          <modifiers>
            <modifier type="increment" field="a33c-c953-b917-d630" value="1">
              <repeats>
                <repeat field="selections" scope="6887-ea1d-3e3b-a218" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" childId="d33a-d98f-7198-ae30" repeats="1" roundUp="false"/>
              </repeats>
            </modifier>
            <modifier type="set" field="76fe-9a2a-b52c-7a61" value="6">
              <conditions>
                <condition field="selections" scope="6887-ea1d-3e3b-a218" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" childId="b2b0-6714-c00f-eb4c" type="equalTo"/>
              </conditions>
            </modifier>
          </modifiers>
          <characteristics>
            <characteristic name="Speed" typeId="76fe-9a2a-b52c-7a61">4</characteristic>
            <characteristic name="Brutality" typeId="2947-0bce-f1e8-bf71">1</characteristic>
            <characteristic name="Cunning" typeId="b268-ae8a-4002-9bb8">1</characteristic>
            <characteristic name="Faith" typeId="bcf6-2d70-7020-f5b0">0</characteristic>
            <characteristic name="Arcana" typeId="a272-ef29-2448-76e4">2</characteristic>
            <characteristic name="Defence" typeId="4784-a2b1-4078-5e01">6</characteristic>
            <characteristic name="Wounds" typeId="a33c-c953-b917-d630">2</characteristic>
          </characteristics>
        </profile>
      </profiles>
      <infoLinks>
        <infoLink id="2e59-f9d2-0c65-35b1" name="Knightly Arms" hidden="false" targetId="6638-665c-032b-cdfb" type="profile">
          <modifiers>
            <modifier type="increment" field="7474-4b21-4cd8-d9f9" value="2">
              <repeats>
                <repeat field="selections" scope="6887-ea1d-3e3b-a218" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" childId="d33a-d98f-7198-ae30" repeats="1" roundUp="false"/>
              </repeats>
            </modifier>
          </modifiers>
        </infoLink>
        <infoLink id="a2a3-5809-ec4a-7094" name="Tough" hidden="false" targetId="4cda-dae9-f168-2fb5" type="rule"/>
        <infoLink id="b780-0b54-653c-b8c8" name="Mind Poison" hidden="false" targetId="fe83-1c64-b506-1551" type="profile"/>
        <infoLink id="b9da-5481-a07a-f4bb" name="Manticore Venom" hidden="false" targetId="7585-bbf5-55ef-0a89" type="profile"/>
        <infoLink id="d0d7-4aa6-a262-18ab" name="Sign of Doom" hidden="false" targetId="b930-9a01-de1d-6f32" type="profile"/>
      </infoLinks>
      <categoryLinks>
        <categoryLink id="e38b-5511-70bf-958c" name="New CategoryLink" hidden="false" targetId="1e83-9df6-39c1-f39c" primary="true"/>
      </categoryLinks>
      <selectionEntries>
        <selectionEntry id="d33a-d98f-7198-ae30" name="Bodyguard" hidden="false" collective="false" import="true" type="upgrade">
          <modifiers>
            <modifier type="decrement" field="9703-e13f-4ea2-815a" value="1.0">
              <conditions>
                <condition field="selections" scope="6887-ea1d-3e3b-a218" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" childId="b2b0-6714-c00f-eb4c" type="equalTo"/>
              </conditions>
            </modifier>
          </modifiers>
          <constraints>
            <constraint field="selections" scope="parent" value="2.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="9703-e13f-4ea2-815a" type="max"/>
          </constraints>
          <costs>
            <cost name="Points" typeId="8a76-0f71-96e3-b97c" value="10.0"/>
          </costs>
        </selectionEntry>
        <selectionEntry id="b2b0-6714-c00f-eb4c" name="Mounted" hidden="false" collective="false" import="true" type="upgrade">
          <constraints>
            <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="ffe9-f12e-5965-55e0" type="max"/>
          </constraints>
          <costs>
            <cost name="Points" typeId="8a76-0f71-96e3-b97c" value="0.0"/>
          </costs>
        </selectionEntry>
      </selectionEntries>
      <costs>
        <cost name="Points" typeId="8a76-0f71-96e3-b97c" value="30.0"/>
      </costs>
    </selectionEntry>
    <selectionEntry id="3745-fa8f-f857-6ccf" name="Cultist Throngs" hidden="false" collective="false" import="true" type="unit">
      <profiles>
        <profile id="0d56-aa36-7451-86af" name="Cultist Throngs" hidden="false" typeId="8705-14e1-be6a-1f7e" typeName="- Unit -">
          <characteristics>
            <characteristic name="Speed" typeId="76fe-9a2a-b52c-7a61">3</characteristic>
            <characteristic name="Brutality" typeId="2947-0bce-f1e8-bf71">0</characteristic>
            <characteristic name="Cunning" typeId="b268-ae8a-4002-9bb8">0</characteristic>
            <characteristic name="Faith" typeId="bcf6-2d70-7020-f5b0">1</characteristic>
            <characteristic name="Arcana" typeId="a272-ef29-2448-76e4">1</characteristic>
            <characteristic name="Defence" typeId="4784-a2b1-4078-5e01">5</characteristic>
            <characteristic name="Wounds" typeId="a33c-c953-b917-d630">4</characteristic>
          </characteristics>
        </profile>
      </profiles>
      <infoLinks>
        <infoLink id="2954-30c2-91ce-af09" name="Irregular" hidden="false" targetId="b9f2-7905-7efa-903b" type="rule"/>
        <infoLink id="5654-28a8-4145-a7f0" name="Fanatical" hidden="false" targetId="4e79-f63f-82ac-8ca5" type="rule"/>
        <infoLink id="95d8-2809-9a61-19bd" name="Poison Grenades" hidden="false" targetId="7f73-aba3-a237-c654" type="profile"/>
        <infoLink id="60da-dd8f-ae61-650c" name="Sinister Blades" hidden="false" targetId="67db-1e37-4f6b-ddd5" type="profile"/>
      </infoLinks>
      <categoryLinks>
        <categoryLink id="cd09-9f81-86b4-7689" name="New CategoryLink" hidden="false" targetId="e456-9a72-74a3-c672" primary="true"/>
        <categoryLink id="7f4c-7ec7-e2a7-eca5" name="New CategoryLink" hidden="false" targetId="e456-9a72-74a3-c672" primary="false"/>
      </categoryLinks>
      <selectionEntries>
        <selectionEntry id="dc8e-89e1-72f8-c637" name="Size" hidden="false" collective="false" import="true" type="upgrade">
          <constraints>
            <constraint field="selections" scope="parent" value="6.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="cb1b-8796-6428-9f17" type="max"/>
            <constraint field="selections" scope="parent" value="3.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="41aa-0e2f-764d-7109" type="min"/>
          </constraints>
          <costs>
            <cost name="Points" typeId="8a76-0f71-96e3-b97c" value="10.0"/>
          </costs>
        </selectionEntry>
      </selectionEntries>
      <costs>
        <cost name="Points" typeId="8a76-0f71-96e3-b97c" value="0.0"/>
      </costs>
    </selectionEntry>
    <selectionEntry id="32d8-a027-812a-ac65" name="Zealots" hidden="false" collective="false" import="true" type="unit">
      <profiles>
        <profile id="cbc3-e33e-411e-1379" name="Zealots" hidden="false" typeId="8705-14e1-be6a-1f7e" typeName="- Unit -">
          <characteristics>
            <characteristic name="Speed" typeId="76fe-9a2a-b52c-7a61">4</characteristic>
            <characteristic name="Brutality" typeId="2947-0bce-f1e8-bf71">2</characteristic>
            <characteristic name="Cunning" typeId="b268-ae8a-4002-9bb8">1</characteristic>
            <characteristic name="Faith" typeId="bcf6-2d70-7020-f5b0">1</characteristic>
            <characteristic name="Arcana" typeId="a272-ef29-2448-76e4">1</characteristic>
            <characteristic name="Defence" typeId="4784-a2b1-4078-5e01">5</characteristic>
            <characteristic name="Wounds" typeId="a33c-c953-b917-d630">1</characteristic>
          </characteristics>
        </profile>
      </profiles>
      <infoLinks>
        <infoLink id="3dc6-b30b-3ac9-94f7" name="Hidden Blades" hidden="false" targetId="6080-709e-08ed-28be" type="profile"/>
        <infoLink id="8982-4d1a-91d1-a02e" name="Hidden Poison Grenades" hidden="false" targetId="c8f5-caf6-f9f0-84ea" type="profile"/>
        <infoLink id="8827-0bf6-6d06-34b4" name="Fanatical" hidden="false" targetId="4e79-f63f-82ac-8ca5" type="rule"/>
      </infoLinks>
      <categoryLinks>
        <categoryLink id="8340-d903-12e0-c076" name="New CategoryLink" hidden="false" targetId="8015-519c-a80c-a4d2" primary="true"/>
      </categoryLinks>
      <selectionEntries>
        <selectionEntry id="824c-4f8b-5483-51be" name="Size" hidden="false" collective="false" import="true" type="upgrade">
          <constraints>
            <constraint field="selections" scope="parent" value="6.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="db6e-8afe-bb5d-3a55" type="max"/>
            <constraint field="selections" scope="parent" value="3.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="792d-e3d5-0606-4004" type="min"/>
          </constraints>
          <costs>
            <cost name="Points" typeId="8a76-0f71-96e3-b97c" value="5.0"/>
          </costs>
        </selectionEntry>
        <selectionEntry id="784b-c497-7a3f-22fb" name="Assassins" hidden="false" collective="false" import="true" type="upgrade">
          <constraints>
            <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="d61b-11e2-d9b5-1456" type="max"/>
          </constraints>
          <infoLinks>
            <infoLink id="2cc3-ccde-9626-daee" name="Assassins" hidden="false" targetId="9a45-aecf-e488-7842" type="rule"/>
          </infoLinks>
          <costs>
            <cost name="Points" typeId="8a76-0f71-96e3-b97c" value="10.0"/>
          </costs>
        </selectionEntry>
      </selectionEntries>
      <costs>
        <cost name="Points" typeId="8a76-0f71-96e3-b97c" value="0.0"/>
      </costs>
    </selectionEntry>
    <selectionEntry id="5543-31cf-be2e-147a" name="Crusaders" hidden="false" collective="false" import="true" type="unit">
      <profiles>
        <profile id="614a-7a6b-e8c7-8d90" name="Crusaders" hidden="false" typeId="8705-14e1-be6a-1f7e" typeName="- Unit -">
          <modifiers>
            <modifier type="increment" field="76fe-9a2a-b52c-7a61" value="1">
              <conditions>
                <condition field="selections" scope="5543-31cf-be2e-147a" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" childId="57cf-e95d-9188-137f" type="equalTo"/>
              </conditions>
            </modifier>
          </modifiers>
          <characteristics>
            <characteristic name="Speed" typeId="76fe-9a2a-b52c-7a61">4</characteristic>
            <characteristic name="Brutality" typeId="2947-0bce-f1e8-bf71">2</characteristic>
            <characteristic name="Cunning" typeId="b268-ae8a-4002-9bb8">1</characteristic>
            <characteristic name="Faith" typeId="bcf6-2d70-7020-f5b0">2</characteristic>
            <characteristic name="Arcana" typeId="a272-ef29-2448-76e4">1</characteristic>
            <characteristic name="Defence" typeId="4784-a2b1-4078-5e01">6</characteristic>
            <characteristic name="Wounds" typeId="a33c-c953-b917-d630">2</characteristic>
          </characteristics>
        </profile>
      </profiles>
      <infoLinks>
        <infoLink id="31ed-6958-50d9-0a35" name="Knightly Arms" hidden="false" targetId="6638-665c-032b-cdfb" type="profile"/>
        <infoLink id="9963-ada0-ae86-cc68" name="Tough" hidden="false" targetId="4cda-dae9-f168-2fb5" type="rule"/>
        <infoLink id="0546-a03c-f06c-0cc9" name="Noble" hidden="false" targetId="98e6-d284-b2b6-a6b1" type="rule"/>
        <infoLink id="e760-2a40-3c89-bab6" name="Fury" hidden="false" targetId="8d4a-1959-cb43-6b38" type="rule"/>
      </infoLinks>
      <categoryLinks>
        <categoryLink id="935a-9b54-480c-02bb" name="New CategoryLink" hidden="false" targetId="8015-519c-a80c-a4d2" primary="true"/>
        <categoryLink id="d24d-a7a1-5376-f400" name="Elite" hidden="false" targetId="b21a-1990-468a-c730" primary="false"/>
      </categoryLinks>
      <selectionEntries>
        <selectionEntry id="1a4f-6e81-f0da-1d9a" name="Size" hidden="false" collective="false" import="true" type="upgrade">
          <modifiers>
            <modifier type="decrement" field="fa21-f1bf-1260-6f67" value="2.0">
              <conditions>
                <condition field="selections" scope="5543-31cf-be2e-147a" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" childId="57cf-e95d-9188-137f" type="equalTo"/>
              </conditions>
            </modifier>
          </modifiers>
          <constraints>
            <constraint field="selections" scope="parent" value="6.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="fa21-f1bf-1260-6f67" type="max"/>
            <constraint field="selections" scope="parent" value="3.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="392b-2dba-2386-499a" type="min"/>
          </constraints>
          <costs>
            <cost name="Points" typeId="8a76-0f71-96e3-b97c" value="15.0"/>
          </costs>
        </selectionEntry>
        <selectionEntry id="57cf-e95d-9188-137f" name="Mounts" hidden="false" collective="false" import="true" type="upgrade">
          <constraints>
            <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="8ba9-e000-3489-4341" type="max"/>
          </constraints>
          <costs>
            <cost name="Points" typeId="8a76-0f71-96e3-b97c" value="0.0"/>
          </costs>
        </selectionEntry>
        <selectionEntry id="3c9b-f696-50f2-cce0" name="Fanatical" hidden="false" collective="false" import="true" type="upgrade">
          <constraints>
            <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="7015-994a-6aab-e40c" type="max"/>
          </constraints>
          <infoLinks>
            <infoLink id="52f6-55eb-0fd6-6db4" name="Fanatical" hidden="false" targetId="4e79-f63f-82ac-8ca5" type="rule"/>
          </infoLinks>
          <costs>
            <cost name="Points" typeId="8a76-0f71-96e3-b97c" value="5.0"/>
          </costs>
        </selectionEntry>
        <selectionEntry id="e4d9-1276-7449-a695" name="Blood Knights" hidden="false" collective="false" import="true" type="upgrade">
          <constraints>
            <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="d304-7b1d-b819-ffc5" type="max"/>
          </constraints>
          <infoLinks>
            <infoLink id="724a-eaa8-1e69-02be" name="Blood Ritual" hidden="false" targetId="856f-b6dc-bd56-b83f" type="profile"/>
          </infoLinks>
          <costs>
            <cost name="Points" typeId="8a76-0f71-96e3-b97c" value="10.0"/>
          </costs>
        </selectionEntry>
      </selectionEntries>
      <costs>
        <cost name="Points" typeId="8a76-0f71-96e3-b97c" value="0.0"/>
      </costs>
    </selectionEntry>
    <selectionEntry id="b107-e274-50b8-1b4e" name="Saint" hidden="false" collective="false" import="true" type="model">
      <profiles>
        <profile id="43d7-64b2-be08-7c7d" name="Saint" hidden="false" typeId="8705-14e1-be6a-1f7e" typeName="- Unit -">
          <characteristics>
            <characteristic name="Speed" typeId="76fe-9a2a-b52c-7a61">3</characteristic>
            <characteristic name="Brutality" typeId="2947-0bce-f1e8-bf71">2</characteristic>
            <characteristic name="Cunning" typeId="b268-ae8a-4002-9bb8">1</characteristic>
            <characteristic name="Faith" typeId="bcf6-2d70-7020-f5b0">0</characteristic>
            <characteristic name="Arcana" typeId="a272-ef29-2448-76e4">1</characteristic>
            <characteristic name="Defence" typeId="4784-a2b1-4078-5e01">6</characteristic>
            <characteristic name="Wounds" typeId="a33c-c953-b917-d630">5</characteristic>
          </characteristics>
        </profile>
      </profiles>
      <infoLinks>
        <infoLink id="a09c-2e1a-3dfb-fd2c" name="Knightly Arms" hidden="false" targetId="6638-665c-032b-cdfb" type="profile">
          <modifiers>
            <modifier type="set" field="7474-4b21-4cd8-d9f9" value="6">
              <conditions>
                <condition field="selections" scope="b107-e274-50b8-1b4e" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" childId="a067-a02b-d32c-dfda" type="equalTo"/>
              </conditions>
            </modifier>
          </modifiers>
        </infoLink>
        <infoLink id="ccfb-f7b7-aa79-2065" name="Tough" hidden="false" targetId="4cda-dae9-f168-2fb5" type="rule"/>
      </infoLinks>
      <categoryLinks>
        <categoryLink id="864f-bc6d-839f-d5d3" name="New CategoryLink" hidden="false" targetId="1e83-9df6-39c1-f39c" primary="true"/>
      </categoryLinks>
      <selectionEntries>
        <selectionEntry id="cd8c-0155-a0c3-0b4d" name="Psychotic" hidden="false" collective="false" import="true" type="upgrade">
          <constraints>
            <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="daed-4363-177e-ed9e" type="max"/>
          </constraints>
          <infoLinks>
            <infoLink id="e3d4-1839-302f-29da" name="Fanatical" hidden="false" targetId="4e79-f63f-82ac-8ca5" type="rule"/>
            <infoLink id="a7f9-8ff8-4d69-123d" name="Fury" hidden="false" targetId="8d4a-1959-cb43-6b38" type="rule"/>
          </infoLinks>
          <costs>
            <cost name="Points" typeId="8a76-0f71-96e3-b97c" value="15.0"/>
          </costs>
        </selectionEntry>
        <selectionEntry id="a067-a02b-d32c-dfda" name="Huge Warrior" hidden="false" collective="false" import="true" type="upgrade">
          <constraints>
            <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="1b60-8f8f-ce7b-b733" type="max"/>
            <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="f4db-cfcf-1d08-c6af" type="min"/>
          </constraints>
          <infoLinks>
            <infoLink id="9b9f-8dd2-31c6-7f16" name="Huge Warrior" hidden="false" targetId="0efe-88f2-4fb4-f608" type="rule"/>
          </infoLinks>
          <costs>
            <cost name="Points" typeId="8a76-0f71-96e3-b97c" value="0.0"/>
          </costs>
        </selectionEntry>
      </selectionEntries>
      <costs>
        <cost name="Points" typeId="8a76-0f71-96e3-b97c" value="45.0"/>
      </costs>
    </selectionEntry>
    <selectionEntry id="d5af-a66d-cbaa-ab81" name="Imperial Zouaves" publicationId="f50d-3cea-751a-1d06" hidden="false" collective="false" import="true" type="unit">
      <profiles>
        <profile id="f8ce-3888-5293-3fb0" name="Imperial Zouaves" hidden="false" typeId="8705-14e1-be6a-1f7e" typeName="- Unit -">
          <characteristics>
            <characteristic name="Speed" typeId="76fe-9a2a-b52c-7a61">4</characteristic>
            <characteristic name="Brutality" typeId="2947-0bce-f1e8-bf71">1</characteristic>
            <characteristic name="Cunning" typeId="b268-ae8a-4002-9bb8">1</characteristic>
            <characteristic name="Faith" typeId="bcf6-2d70-7020-f5b0">1</characteristic>
            <characteristic name="Arcana" typeId="a272-ef29-2448-76e4">0</characteristic>
            <characteristic name="Defence" typeId="4784-a2b1-4078-5e01">5</characteristic>
            <characteristic name="Wounds" typeId="a33c-c953-b917-d630">3</characteristic>
          </characteristics>
        </profile>
      </profiles>
      <infoLinks>
        <infoLink id="f44c-edec-f19b-d703" name="Musket Volley" hidden="false" targetId="4ac7-18da-c30d-c6d1" type="profile"/>
        <infoLink id="2193-ba57-15bd-32f2" name="Bayonets" hidden="false" targetId="3d5c-a8f3-a472-40f5" type="profile"/>
      </infoLinks>
      <categoryLinks>
        <categoryLink id="f9fd-82fc-8a06-e8f7" name="Regiment" hidden="false" targetId="e456-9a72-74a3-c672" primary="true"/>
      </categoryLinks>
      <selectionEntries>
        <selectionEntry id="dd23-2cda-dd65-feb1" name="Size" hidden="false" collective="false" import="true" type="upgrade">
          <constraints>
            <constraint field="selections" scope="parent" value="5.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="11e5-a90f-f70c-f236" type="max"/>
            <constraint field="selections" scope="parent" value="3.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="f4f9-c6d6-e932-38e3" type="min"/>
          </constraints>
          <costs>
            <cost name="Points" typeId="8a76-0f71-96e3-b97c" value="10.0"/>
          </costs>
        </selectionEntry>
        <selectionEntry id="2be6-60d5-34aa-aa7d" name="Musician" hidden="false" collective="false" import="true" type="upgrade">
          <constraints>
            <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="80fb-8301-b58c-c6c7" type="max"/>
          </constraints>
          <infoLinks>
            <infoLink id="2ba3-ddf6-32a0-4817" name="Regimental Song" hidden="false" targetId="2897-8c59-3591-8170" type="profile"/>
          </infoLinks>
          <costs>
            <cost name="Points" typeId="8a76-0f71-96e3-b97c" value="5.0"/>
          </costs>
        </selectionEntry>
        <selectionEntry id="5350-de2f-3462-cace" name="Regimental Standard" hidden="false" collective="false" import="true" type="upgrade">
          <constraints>
            <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="a1a4-07af-1df0-3ffe" type="max"/>
          </constraints>
          <infoLinks>
            <infoLink id="7d87-6b57-1798-751c" name="Regimental Standard" hidden="false" targetId="1298-2f75-cc32-72a3" type="rule"/>
          </infoLinks>
          <costs>
            <cost name="Points" typeId="8a76-0f71-96e3-b97c" value="5.0"/>
          </costs>
        </selectionEntry>
        <selectionEntry id="c3e6-b0ba-d94d-c3b5" name="Veterans" hidden="false" collective="false" import="true" type="upgrade">
          <constraints>
            <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="6f11-effb-c7fa-4f10" type="max"/>
          </constraints>
          <infoLinks>
            <infoLink id="fa5f-815e-b512-6a85" name="Veterans" hidden="false" targetId="57e5-7e08-fea5-aac9" type="rule"/>
          </infoLinks>
          <costs>
            <cost name="Points" typeId="8a76-0f71-96e3-b97c" value="10.0"/>
          </costs>
        </selectionEntry>
      </selectionEntries>
      <costs>
        <cost name="Points" typeId="8a76-0f71-96e3-b97c" value="0.0"/>
      </costs>
    </selectionEntry>
  </sharedSelectionEntries>
  <sharedRules>
    <rule id="4cda-dae9-f168-2fb5" name="Tough" hidden="false">
      <description>Gain +1 on endurance saves.</description>
    </rule>
    <rule id="4d9d-b2f2-aa8a-cf85" name="Triangulation" hidden="false">
      <description>Arcanists gain +1 Arcana while there are three living Arcanists in your battalion.</description>
    </rule>
    <rule id="1298-2f75-cc32-72a3" name="Regimental Standard" hidden="false">
      <description>Gain +1 on nerve tests.</description>
    </rule>
    <rule id="737c-46a6-221a-9ada" name="Musician" hidden="false">
      <description>Gain the Regimental Song free order.</description>
    </rule>
    <rule id="d5d4-1197-39a1-85f0" name="Formations" hidden="false">
      <description>Line Infantry units gain bonuses for fighting in formation. Units of line infantry automatically claim the bonus from a formation if the unit has at least three figures in play and the figures are in base contact according to the formation type. After a move order and once per activation, line infantry figures may make a half inch move directly toward another figure in its unit in order to maintain formation.
Units in close combat do not benefit from formations. Terrain features that make base contact impossible also make maintaining formations impossible.

Line Formation
Units in line formation gain +1 to ranged attack tests. To claim the line formation all figures must be in base contact and form a line. Draw an imaginary line from any part of the base of the figure on one end of the line to any part of the base of the figure on the opposite end of the line. That line must cross over all bases in the unit.

Column Formation
Units in column formation gain +1 defense but suffer -1 burst. To claim a column formation, all figures in the unit must be in base contact with at least two other figures in the unit. Units that are charged while in column formation gain the +1 defense bonus during that initial round of combat, but no longer benefit from column formation while locked in close combat.</description>
    </rule>
    <rule id="e3b9-02f1-80f1-05a9" name="Skirmishers" hidden="false">
      <description>Skirmishers may draw LOS and move through figures in their own
unit.</description>
    </rule>
    <rule id="98e6-d284-b2b6-a6b1" name="Noble" hidden="false">
      <description>Failed nerve tests that would cause wounds only remove one figure.</description>
    </rule>
    <rule id="45a1-599a-2f4a-0898" name="Grenades" hidden="false">
      <description>Attacks made by units with grenades gain SHOCK 2 and each wound they cause places 2 gore instead of 1.</description>
    </rule>
    <rule id="a303-a349-4723-d3f1" name="Battle Hardened" hidden="false">
      <description>Shock Troopers may use brutality instead of faith on nerve tests.</description>
    </rule>
    <rule id="7e31-4ee5-d0f2-82b9" name="Assault Trooper" hidden="false">
      <description>Close combat orders gain +1 burst and SHOCK 2 when this unit charges.</description>
    </rule>
    <rule id="e927-89c5-54dd-5634" name="Cavalry" hidden="false">
      <description>
Breakaway
When cavalry units charge an enemy and successfully deal wounds to them, they may make a free move action after the combat is resolved. Breakaway moves may not be performed against line infantry.

Rundown
If a unit in close combat with a cavalry unit fails the nerve test and suffers wounds due to stress, those wounds are doubled.</description>
    </rule>
    <rule id="9a43-3eb4-da72-1706" name="Lancers" hidden="false">
      <description>+1 damage on charge.</description>
    </rule>
    <rule id="7a31-2efe-df3a-9fe4" name="Heavy Pistols" hidden="false">
      <description>+1 damage on charge.</description>
    </rule>
    <rule id="18fb-9343-c84b-3b06" name="Heavy Lance" hidden="false">
      <description>+1 damage on charge.</description>
    </rule>
    <rule id="1cbc-1d4e-2119-fda5" name="Veteran Focus" hidden="false">
      <description>Veteran Crew may use the focus short order to modify the bounce roll. A focus shot uses two d10 for the bounce roll and discards the lower die.</description>
    </rule>
    <rule id="e3b7-b7b2-3cad-e5b3" name="Field Gun" hidden="false">
      <description>1. When making an attack with an artillery piece, choose a specific figure as the target. Units in close combat may not be selected as a target; however, it is still possible to hit figures locked in close combat.

2. Guess a range and roll a d10. Add the d10 result in inches to the guess. This is where the shot lands.

3. This roll replaces a normal ranged combat TN test. If the result is a 1 the Artillery piece takes 4 wounds and the shot fails! If the result is a 10, the artillery piece suffers 2 wounds and the attack gains +1 burst.

4. Roll another d10, the shot bounces in a straight line that many inches from where it landed. Measure from the front center of the artillery pieces base (or barrel of the gun if the figure is not on a base) in the exact direction of the center of the target figure’s base. Any figures whose bases are crossed by the line from where the shot landed to where it bounced are hit by the attack.

5. Roll damage for each hit figure individually. Damage is done to individual figures, not the unit. For example, if a skirmisher takes three wounds it would generate three gore, but only that single figure would be removed as a casualty. If multiple bases of line infantry suffer wounds, the controlling player must consolidate the wounds to remove full bases of figures where possible but never removing more bases of figures than were directly hit by the artillery shot.</description>
    </rule>
    <rule id="0d3f-0c90-aad0-4ec2" name="Burn" hidden="false">
      <description>Wounds caused by this weapon do not generate gore.</description>
    </rule>
    <rule id="3740-5ddb-717f-10eb" name="Dismember" hidden="false">
      <description>Each damage roll of 6 deals 2 wounds instead of 1.</description>
    </rule>
    <rule id="bb75-c8c1-de4e-7a83" name="Shock" hidden="false">
      <description>Units that suffer wounds from a weapon with the SHOCK special rule increase the TN of their nerve test by the SHOCK value.</description>
    </rule>
    <rule id="9b77-f832-1832-cc29" name="Land Ship" hidden="false">
      <description>This unit cannot be locked in close combat and enemy units cannot be locked in close combat with it. That means the crawler can perform ranged attacks even if enemy figures are within 2” of it. Enemy fighters may charge and attack the crawler from within 2” as normal but they are not locked in combat after they fight. If the crawler fails a close combat test, the crawler does not move away from the enemy or end its activation.</description>
    </rule>
    <rule id="dd86-6ee1-cfd5-faf7" name="Troop Transport" hidden="false">
      <description>During deployment, the controlling player may deploy one unit with a maximum of 9 wounds inside the crawler. During the crawler’s activation it may deploy the unit completely within 3” of itself for a short order. If the crawler is destroyed while the unit is inside, place the figures within 3” of the crawler and each figure suffers d3 wounds. Machines and Cavalry units may not be deployed inside the crawler.</description>
    </rule>
    <rule id="858b-63d6-90e1-0669" name="Dangerous Ordinance" hidden="false">
      <description>Attack TN rolls of 10 grant +2 burst instead of +1 but the unit suffers 1 wound.
On attack TN rolls of 1 this unit suffers 2 wounds and the attack fails as normal.</description>
    </rule>
    <rule id="05ce-cbf6-790e-6b58" name="Daze" hidden="false">
      <description>Each damage roll of 6 causes adds the DAZE status. Dazed units suffer -1 on tests during their next activation, then the status is removed. Units can suffer from multiple daze effects at once for greater negative modifiers.</description>
    </rule>
    <rule id="57e5-7e08-fea5-aac9" name="Veterans" hidden="false">
      <description>Hold Position becomes a Short Order</description>
    </rule>
    <rule id="229a-5647-b163-578a" name="Flying Ship" hidden="false">
      <description>Flying ships may be mounted on any size base.
Ranges are measured from the center point of the figure’s base.
This unit can see and be seen through other units and low terrain features such as barriers.
This unit may move unhindered through terrain and other units.
This unit cannot enter close combat by any means.</description>
    </rule>
    <rule id="5514-bca0-feae-b273" name="Strafing Run" hidden="false">
      <description>When this unit makes an attack with bombs, it moves up to twice its speed.
This move does not need to be in a straight line.
The kite may target one unit that was within 3” of its flight path.</description>
    </rule>
    <rule id="9998-6eb9-7579-b9bc" name="Indirect Fire" hidden="false">
      <description>Mortars may draw LOS through one other unit or terrain piece.
Mortars on a hill may draw LOS over two units or terrain pieces.</description>
    </rule>
    <rule id="a618-9ce2-86be-3c00" name="Bleed" hidden="false">
      <description>Each damage roll of 6 generates one additional gore.</description>
    </rule>
    <rule id="b9f2-7905-7efa-903b" name="Irregular" hidden="false">
      <description>When this unit fails a nerve test, it suffers stress wounds when its total stress is equal to or greater than their wound characteristic.
Normally, the total must be greater than the wound characteristic to inflict stress wounds.</description>
    </rule>
    <rule id="4e79-f63f-82ac-8ca5" name="Fanatical" hidden="false">
      <description>Gain +1 on combat orders for each stress on this unit instead of the usual -1.</description>
    </rule>
    <rule id="9a45-aecf-e488-7842" name="Assassins" hidden="false">
      <description>The whole unit may be upgraded to Assassins for 10 points.
Do not deploy this unit at the beginning of the game.
Instead, at the end of any Activation Phase, and before the Nerve Phase has been resolved, the controlling player may place the assassin unit within 4” of any board edge and not within 4” of an enemy unit.
The assassins activate in the following Activation Phase as normal.</description>
    </rule>
    <rule id="8d4a-1959-cb43-6b38" name="Fury" hidden="false">
      <description>During this unit’s activation, it may gain one stress to perform the combat long order as a free action.</description>
    </rule>
    <rule id="0efe-88f2-4fb4-f608" name="Huge Warrior" hidden="false">
      <description>Enslaved giants gain 3x burst on close combat attacks as if it were a unit of three figures.</description>
    </rule>
    <rule id="8975-b274-03b4-6142" name="Shield Wall" hidden="false">
      <description>Units with ceramic shields may assume the column formation as if they were line infantry.</description>
    </rule>
  </sharedRules>
  <sharedProfiles>
    <profile id="6638-665c-032b-cdfb" name="Knightly Arms" publicationId="690f-6ec1-3a45-0ffc" page="49" hidden="false" typeId="1231-8a7d-8660-4b58" typeName="-- Weapon --">
      <characteristics>
        <characteristic name="Type" typeId="bec2-08c9-9760-38f2">Close</characteristic>
        <characteristic name="Range" typeId="ed90-5160-6b9a-06fe">-</characteristic>
        <characteristic name="TN" typeId="872b-0f66-5fc4-14fd">6</characteristic>
        <characteristic name="Burst" typeId="7474-4b21-4cd8-d9f9">2</characteristic>
        <characteristic name="Dmg" typeId="e7f2-1487-6c95-3a26">+3</characteristic>
        <characteristic name="Effect" typeId="e339-e6bf-a6ef-ad36">SHOCK 2 on Charge</characteristic>
      </characteristics>
    </profile>
    <profile id="2f8e-cf01-a6b4-8a99" name="Cavalry Sabers" publicationId="690f-6ec1-3a45-0ffc" page="49" hidden="false" typeId="1231-8a7d-8660-4b58" typeName="-- Weapon --">
      <characteristics>
        <characteristic name="Type" typeId="bec2-08c9-9760-38f2">Close</characteristic>
        <characteristic name="Range" typeId="ed90-5160-6b9a-06fe">-</characteristic>
        <characteristic name="TN" typeId="872b-0f66-5fc4-14fd">6</characteristic>
        <characteristic name="Burst" typeId="7474-4b21-4cd8-d9f9">2</characteristic>
        <characteristic name="Dmg" typeId="e7f2-1487-6c95-3a26">+3</characteristic>
        <characteristic name="Effect" typeId="e339-e6bf-a6ef-ad36">SHOCK 2 on Charge</characteristic>
      </characteristics>
    </profile>
    <profile id="0da8-dbb8-09e3-e303" name="Pole Weapons" publicationId="690f-6ec1-3a45-0ffc" page="49" hidden="false" typeId="1231-8a7d-8660-4b58" typeName="-- Weapon --">
      <characteristics>
        <characteristic name="Type" typeId="bec2-08c9-9760-38f2">Close</characteristic>
        <characteristic name="Range" typeId="ed90-5160-6b9a-06fe">-</characteristic>
        <characteristic name="TN" typeId="872b-0f66-5fc4-14fd">6</characteristic>
        <characteristic name="Burst" typeId="7474-4b21-4cd8-d9f9">3</characteristic>
        <characteristic name="Dmg" typeId="e7f2-1487-6c95-3a26">+3</characteristic>
        <characteristic name="Effect" typeId="e339-e6bf-a6ef-ad36"/>
      </characteristics>
    </profile>
    <profile id="3d5c-a8f3-a472-40f5" name="Bayonets" publicationId="690f-6ec1-3a45-0ffc" page="49" hidden="false" typeId="1231-8a7d-8660-4b58" typeName="-- Weapon --">
      <characteristics>
        <characteristic name="Type" typeId="bec2-08c9-9760-38f2">Close</characteristic>
        <characteristic name="Range" typeId="ed90-5160-6b9a-06fe">-</characteristic>
        <characteristic name="TN" typeId="872b-0f66-5fc4-14fd">7</characteristic>
        <characteristic name="Burst" typeId="7474-4b21-4cd8-d9f9">3</characteristic>
        <characteristic name="Dmg" typeId="e7f2-1487-6c95-3a26">+2</characteristic>
        <characteristic name="Effect" typeId="e339-e6bf-a6ef-ad36"/>
      </characteristics>
    </profile>
    <profile id="1f37-d09c-dc0f-92d5" name="Hand Weapons" publicationId="690f-6ec1-3a45-0ffc" page="49" hidden="false" typeId="1231-8a7d-8660-4b58" typeName="-- Weapon --">
      <characteristics>
        <characteristic name="Type" typeId="bec2-08c9-9760-38f2">Close</characteristic>
        <characteristic name="Range" typeId="ed90-5160-6b9a-06fe">-</characteristic>
        <characteristic name="TN" typeId="872b-0f66-5fc4-14fd">6</characteristic>
        <characteristic name="Burst" typeId="7474-4b21-4cd8-d9f9">1</characteristic>
        <characteristic name="Dmg" typeId="e7f2-1487-6c95-3a26">+2</characteristic>
        <characteristic name="Effect" typeId="e339-e6bf-a6ef-ad36"/>
      </characteristics>
    </profile>
    <profile id="4ac7-18da-c30d-c6d1" name="Musket Volley" publicationId="690f-6ec1-3a45-0ffc" page="49" hidden="false" typeId="1231-8a7d-8660-4b58" typeName="-- Weapon --">
      <characteristics>
        <characteristic name="Type" typeId="bec2-08c9-9760-38f2">Ranged</characteristic>
        <characteristic name="Range" typeId="ed90-5160-6b9a-06fe">12</characteristic>
        <characteristic name="TN" typeId="872b-0f66-5fc4-14fd">6</characteristic>
        <characteristic name="Burst" typeId="7474-4b21-4cd8-d9f9">2</characteristic>
        <characteristic name="Dmg" typeId="e7f2-1487-6c95-3a26">+2</characteristic>
        <characteristic name="Effect" typeId="e339-e6bf-a6ef-ad36">SHOCK 2</characteristic>
      </characteristics>
    </profile>
    <profile id="9123-e357-3df2-313f" name="Muskets" publicationId="690f-6ec1-3a45-0ffc" page="49" hidden="false" typeId="1231-8a7d-8660-4b58" typeName="-- Weapon --">
      <characteristics>
        <characteristic name="Type" typeId="bec2-08c9-9760-38f2">Ranged</characteristic>
        <characteristic name="Range" typeId="ed90-5160-6b9a-06fe">12</characteristic>
        <characteristic name="TN" typeId="872b-0f66-5fc4-14fd">6</characteristic>
        <characteristic name="Burst" typeId="7474-4b21-4cd8-d9f9">1</characteristic>
        <characteristic name="Dmg" typeId="e7f2-1487-6c95-3a26">+2</characteristic>
        <characteristic name="Effect" typeId="e339-e6bf-a6ef-ad36"/>
      </characteristics>
    </profile>
    <profile id="f497-a533-5599-e4c6" name="Crossbow Volley" publicationId="690f-6ec1-3a45-0ffc" page="49" hidden="false" typeId="1231-8a7d-8660-4b58" typeName="-- Weapon --">
      <characteristics>
        <characteristic name="Type" typeId="bec2-08c9-9760-38f2">Ranged</characteristic>
        <characteristic name="Range" typeId="ed90-5160-6b9a-06fe">14</characteristic>
        <characteristic name="TN" typeId="872b-0f66-5fc4-14fd">7</characteristic>
        <characteristic name="Burst" typeId="7474-4b21-4cd8-d9f9">3</characteristic>
        <characteristic name="Dmg" typeId="e7f2-1487-6c95-3a26">+1</characteristic>
        <characteristic name="Effect" typeId="e339-e6bf-a6ef-ad36"/>
      </characteristics>
    </profile>
    <profile id="59e1-9040-bf31-6f1c" name="Crossbows" publicationId="690f-6ec1-3a45-0ffc" page="49" hidden="false" typeId="1231-8a7d-8660-4b58" typeName="-- Weapon --">
      <characteristics>
        <characteristic name="Type" typeId="bec2-08c9-9760-38f2">Ranged</characteristic>
        <characteristic name="Range" typeId="ed90-5160-6b9a-06fe">14</characteristic>
        <characteristic name="TN" typeId="872b-0f66-5fc4-14fd">7</characteristic>
        <characteristic name="Burst" typeId="7474-4b21-4cd8-d9f9">2</characteristic>
        <characteristic name="Dmg" typeId="e7f2-1487-6c95-3a26">+1</characteristic>
        <characteristic name="Effect" typeId="e339-e6bf-a6ef-ad36"/>
      </characteristics>
    </profile>
    <profile id="c33d-04d1-b77b-77b3" name="Field Gun" publicationId="690f-6ec1-3a45-0ffc" page="49" hidden="false" typeId="1231-8a7d-8660-4b58" typeName="-- Weapon --">
      <characteristics>
        <characteristic name="Type" typeId="bec2-08c9-9760-38f2">Ranged</characteristic>
        <characteristic name="Range" typeId="ed90-5160-6b9a-06fe">Guess +d10</characteristic>
        <characteristic name="TN" typeId="872b-0f66-5fc4-14fd">-</characteristic>
        <characteristic name="Burst" typeId="7474-4b21-4cd8-d9f9">3</characteristic>
        <characteristic name="Dmg" typeId="e7f2-1487-6c95-3a26">+5</characteristic>
        <characteristic name="Effect" typeId="e339-e6bf-a6ef-ad36">Bounce d10, SHOCK 4</characteristic>
      </characteristics>
    </profile>
    <profile id="6fbd-6877-b3f4-82a0" name="Inspire" publicationId="690f-6ec1-3a45-0ffc" page="35, 37" hidden="false" typeId="3f3f-4bef-0bab-2cff" typeName="--- Ability ---">
      <characteristics>
        <characteristic name="Action" typeId="3659-df21-f698-59ad">Short</characteristic>
        <characteristic name="Type" typeId="b356-e832-95cc-4467">Special, Cunning</characteristic>
        <characteristic name="Range" typeId="d24a-25b3-c0bd-f75f">10&quot;</characteristic>
        <characteristic name="TN" typeId="3b97-3988-8ead-1039">5</characteristic>
        <characteristic name="Burst" typeId="ee2e-080f-055b-061a">-</characteristic>
        <characteristic name="Effect" typeId="e0f5-c1c4-0314-c9a6">Remove 4 gore from within range or Remove 1 stress from the target.</characteristic>
      </characteristics>
    </profile>
    <profile id="00de-6c9d-433d-29b4" name="Warcry" publicationId="690f-6ec1-3a45-0ffc" page="35" hidden="false" typeId="3f3f-4bef-0bab-2cff" typeName="--- Ability ---">
      <characteristics>
        <characteristic name="Action" typeId="3659-df21-f698-59ad">Short</characteristic>
        <characteristic name="Type" typeId="b356-e832-95cc-4467">Special, Cunning</characteristic>
        <characteristic name="Range" typeId="d24a-25b3-c0bd-f75f">5&quot;</characteristic>
        <characteristic name="TN" typeId="3b97-3988-8ead-1039">5</characteristic>
        <characteristic name="Burst" typeId="ee2e-080f-055b-061a">-</characteristic>
        <characteristic name="Effect" typeId="e0f5-c1c4-0314-c9a6">Target gains +1 Burst on next combat order.</characteristic>
      </characteristics>
    </profile>
    <profile id="645c-7a41-ffb1-3785" name="Close Order" publicationId="690f-6ec1-3a45-0ffc" page="35, 37" hidden="false" typeId="3f3f-4bef-0bab-2cff" typeName="--- Ability ---">
      <characteristics>
        <characteristic name="Action" typeId="3659-df21-f698-59ad">Short</characteristic>
        <characteristic name="Type" typeId="b356-e832-95cc-4467">Special, Cunning</characteristic>
        <characteristic name="Range" typeId="d24a-25b3-c0bd-f75f">5&quot;</characteristic>
        <characteristic name="TN" typeId="3b97-3988-8ead-1039">5</characteristic>
        <characteristic name="Burst" typeId="ee2e-080f-055b-061a">-</characteristic>
        <characteristic name="Effect" typeId="e0f5-c1c4-0314-c9a6">Target gains +1 on their next combat order test.</characteristic>
      </characteristics>
    </profile>
    <profile id="0a69-11f6-d0c7-2497" name="Go At Them" publicationId="690f-6ec1-3a45-0ffc" page="35" hidden="false" typeId="3f3f-4bef-0bab-2cff" typeName="--- Ability ---">
      <characteristics>
        <characteristic name="Action" typeId="3659-df21-f698-59ad">Short</characteristic>
        <characteristic name="Type" typeId="b356-e832-95cc-4467">Special, Cunning</characteristic>
        <characteristic name="Range" typeId="d24a-25b3-c0bd-f75f">5&quot;</characteristic>
        <characteristic name="TN" typeId="3b97-3988-8ead-1039">5</characteristic>
        <characteristic name="Burst" typeId="ee2e-080f-055b-061a">-</characteristic>
        <characteristic name="Effect" typeId="e0f5-c1c4-0314-c9a6">Target gains +2 Speed on their next charge order.</characteristic>
      </characteristics>
    </profile>
    <profile id="7e74-6cba-1f5e-a5e5" name="Supervised Drill" publicationId="690f-6ec1-3a45-0ffc" page="35" hidden="false" typeId="3f3f-4bef-0bab-2cff" typeName="--- Ability ---">
      <characteristics>
        <characteristic name="Action" typeId="3659-df21-f698-59ad">Short</characteristic>
        <characteristic name="Type" typeId="b356-e832-95cc-4467">Special, Cunning</characteristic>
        <characteristic name="Range" typeId="d24a-25b3-c0bd-f75f">5&quot;</characteristic>
        <characteristic name="TN" typeId="3b97-3988-8ead-1039">5</characteristic>
        <characteristic name="Burst" typeId="ee2e-080f-055b-061a">-</characteristic>
        <characteristic name="Effect" typeId="e0f5-c1c4-0314-c9a6">Target gains a &quot;Hold Position&quot; token.</characteristic>
      </characteristics>
    </profile>
    <profile id="3509-4cba-ee7c-069b" name="Heroic Speech" publicationId="690f-6ec1-3a45-0ffc" page="35, 37" hidden="false" typeId="3f3f-4bef-0bab-2cff" typeName="--- Ability ---">
      <characteristics>
        <characteristic name="Action" typeId="3659-df21-f698-59ad">Long</characteristic>
        <characteristic name="Type" typeId="b356-e832-95cc-4467">Special, Cunning</characteristic>
        <characteristic name="Range" typeId="d24a-25b3-c0bd-f75f">10&quot;</characteristic>
        <characteristic name="TN" typeId="3b97-3988-8ead-1039">5</characteristic>
        <characteristic name="Burst" typeId="ee2e-080f-055b-061a">-</characteristic>
        <characteristic name="Effect" typeId="e0f5-c1c4-0314-c9a6">Remove 3 stress tokens from within range.</characteristic>
      </characteristics>
    </profile>
    <profile id="9524-6a6e-488b-c577" name="Arcane Protection" publicationId="690f-6ec1-3a45-0ffc" page="36" hidden="false" typeId="3f3f-4bef-0bab-2cff" typeName="--- Ability ---">
      <characteristics>
        <characteristic name="Action" typeId="3659-df21-f698-59ad">Short</characteristic>
        <characteristic name="Type" typeId="b356-e832-95cc-4467">Sorcery</characteristic>
        <characteristic name="Range" typeId="d24a-25b3-c0bd-f75f">Self / Ally within 5&quot;</characteristic>
        <characteristic name="TN" typeId="3b97-3988-8ead-1039">5</characteristic>
        <characteristic name="Burst" typeId="ee2e-080f-055b-061a">-</characteristic>
        <characteristic name="Effect" typeId="e0f5-c1c4-0314-c9a6">Target unit gains +1 on endurance tests until the user&apos;s next activation.</characteristic>
      </characteristics>
    </profile>
    <profile id="4c4c-a498-784c-6fac" name="Enchanted Arms" publicationId="690f-6ec1-3a45-0ffc" page="36" hidden="false" typeId="3f3f-4bef-0bab-2cff" typeName="--- Ability ---">
      <characteristics>
        <characteristic name="Action" typeId="3659-df21-f698-59ad">Short</characteristic>
        <characteristic name="Type" typeId="b356-e832-95cc-4467">Sorcery</characteristic>
        <characteristic name="Range" typeId="d24a-25b3-c0bd-f75f">Self / Ally within 5&quot;</characteristic>
        <characteristic name="TN" typeId="3b97-3988-8ead-1039">5</characteristic>
        <characteristic name="Burst" typeId="ee2e-080f-055b-061a">-</characteristic>
        <characteristic name="Effect" typeId="e0f5-c1c4-0314-c9a6">Target unit gains +1 damage until the user’s next activation.</characteristic>
      </characteristics>
    </profile>
    <profile id="292e-0681-babc-d29a" name="Thundering Report" publicationId="690f-6ec1-3a45-0ffc" page="36" hidden="false" typeId="3f3f-4bef-0bab-2cff" typeName="--- Ability ---">
      <characteristics>
        <characteristic name="Action" typeId="3659-df21-f698-59ad">Short</characteristic>
        <characteristic name="Type" typeId="b356-e832-95cc-4467">Sorcery</characteristic>
        <characteristic name="Range" typeId="d24a-25b3-c0bd-f75f">Self / Ally within 5&quot;</characteristic>
        <characteristic name="TN" typeId="3b97-3988-8ead-1039">5</characteristic>
        <characteristic name="Burst" typeId="ee2e-080f-055b-061a">-</characteristic>
        <characteristic name="Effect" typeId="e0f5-c1c4-0314-c9a6">Target unit gains +4 SHOCK on combat actions until the
user’s next activation.</characteristic>
      </characteristics>
    </profile>
    <profile id="ac6f-fdb3-1f48-7544" name="Blessing" publicationId="690f-6ec1-3a45-0ffc" page="38" hidden="false" typeId="3f3f-4bef-0bab-2cff" typeName="--- Ability ---">
      <characteristics>
        <characteristic name="Action" typeId="3659-df21-f698-59ad">Short</characteristic>
        <characteristic name="Type" typeId="b356-e832-95cc-4467">Prayer</characteristic>
        <characteristic name="Range" typeId="d24a-25b3-c0bd-f75f">LOS</characteristic>
        <characteristic name="TN" typeId="3b97-3988-8ead-1039">5</characteristic>
        <characteristic name="Burst" typeId="ee2e-080f-055b-061a">-</characteristic>
        <characteristic name="Effect" typeId="e0f5-c1c4-0314-c9a6">Target may reroll one failed test until the user’s next activation.</characteristic>
      </characteristics>
    </profile>
    <profile id="0284-5618-54e6-2287" name="Sacred Incense" publicationId="690f-6ec1-3a45-0ffc" page="38" hidden="false" typeId="3f3f-4bef-0bab-2cff" typeName="--- Ability ---">
      <characteristics>
        <characteristic name="Action" typeId="3659-df21-f698-59ad">Short</characteristic>
        <characteristic name="Type" typeId="b356-e832-95cc-4467">Prayer</characteristic>
        <characteristic name="Range" typeId="d24a-25b3-c0bd-f75f">5&quot;</characteristic>
        <characteristic name="TN" typeId="3b97-3988-8ead-1039">5</characteristic>
        <characteristic name="Burst" typeId="ee2e-080f-055b-061a">-</characteristic>
        <characteristic name="Effect" typeId="e0f5-c1c4-0314-c9a6">Combat action tests against the target unit suffer -1 until the user&apos;s next activation.</characteristic>
      </characteristics>
    </profile>
    <profile id="94ad-d6a7-8b3f-406c" name="Faithful Intercessor" publicationId="690f-6ec1-3a45-0ffc" page="38" hidden="false" typeId="3f3f-4bef-0bab-2cff" typeName="--- Ability ---">
      <characteristics>
        <characteristic name="Action" typeId="3659-df21-f698-59ad">Long</characteristic>
        <characteristic name="Type" typeId="b356-e832-95cc-4467">Prayer</characteristic>
        <characteristic name="Range" typeId="d24a-25b3-c0bd-f75f">12&quot;</characteristic>
        <characteristic name="TN" typeId="3b97-3988-8ead-1039">5</characteristic>
        <characteristic name="Burst" typeId="ee2e-080f-055b-061a">-</characteristic>
        <characteristic name="Effect" typeId="e0f5-c1c4-0314-c9a6">Friendly units within range may reroll failed nerve tests until the user’s next activation.</characteristic>
      </characteristics>
    </profile>
    <profile id="00be-0721-3b18-2b63" name="Black Fog" publicationId="690f-6ec1-3a45-0ffc" page="39" hidden="false" typeId="3f3f-4bef-0bab-2cff" typeName="--- Ability ---">
      <characteristics>
        <characteristic name="Action" typeId="3659-df21-f698-59ad">Short</characteristic>
        <characteristic name="Type" typeId="b356-e832-95cc-4467">Sorcery</characteristic>
        <characteristic name="Range" typeId="d24a-25b3-c0bd-f75f">LOS</characteristic>
        <characteristic name="TN" typeId="3b97-3988-8ead-1039">5</characteristic>
        <characteristic name="Burst" typeId="ee2e-080f-055b-061a">-</characteristic>
        <characteristic name="Effect" typeId="e0f5-c1c4-0314-c9a6">Target unit suffers -1 on ranged combat tests until the user&apos;s next activation.</characteristic>
      </characteristics>
    </profile>
    <profile id="8db3-ae29-4ed2-cc7a" name="Visions of Death" publicationId="690f-6ec1-3a45-0ffc" page="39" hidden="false" typeId="3f3f-4bef-0bab-2cff" typeName="--- Ability ---">
      <characteristics>
        <characteristic name="Action" typeId="3659-df21-f698-59ad">Short</characteristic>
        <characteristic name="Type" typeId="b356-e832-95cc-4467">Sorcery</characteristic>
        <characteristic name="Range" typeId="d24a-25b3-c0bd-f75f">LOS</characteristic>
        <characteristic name="TN" typeId="3b97-3988-8ead-1039">5</characteristic>
        <characteristic name="Burst" typeId="ee2e-080f-055b-061a">-</characteristic>
        <characteristic name="Effect" typeId="e0f5-c1c4-0314-c9a6">Target unit must take a Nerve Test.</characteristic>
      </characteristics>
    </profile>
    <profile id="c348-1de8-f28a-f2b9" name="Horrors of War" publicationId="690f-6ec1-3a45-0ffc" page="39" hidden="false" typeId="3f3f-4bef-0bab-2cff" typeName="--- Ability ---">
      <characteristics>
        <characteristic name="Action" typeId="3659-df21-f698-59ad">Long</characteristic>
        <characteristic name="Type" typeId="b356-e832-95cc-4467">Sorcery</characteristic>
        <characteristic name="Range" typeId="d24a-25b3-c0bd-f75f">LOS</characteristic>
        <characteristic name="TN" typeId="3b97-3988-8ead-1039">6</characteristic>
        <characteristic name="Burst" typeId="ee2e-080f-055b-061a">-</characteristic>
        <characteristic name="Effect" typeId="e0f5-c1c4-0314-c9a6">Place a single 8 gore token on the battlefield.</characteristic>
      </characteristics>
    </profile>
    <profile id="2897-8c59-3591-8170" name="Regimental Song" publicationId="690f-6ec1-3a45-0ffc" page="41" hidden="false" typeId="3f3f-4bef-0bab-2cff" typeName="--- Ability ---">
      <characteristics>
        <characteristic name="Action" typeId="3659-df21-f698-59ad">Free</characteristic>
        <characteristic name="Type" typeId="b356-e832-95cc-4467">Special, Faith</characteristic>
        <characteristic name="Range" typeId="d24a-25b3-c0bd-f75f">-</characteristic>
        <characteristic name="TN" typeId="3b97-3988-8ead-1039">5</characteristic>
        <characteristic name="Burst" typeId="ee2e-080f-055b-061a">-</characteristic>
        <characteristic name="Effect" typeId="e0f5-c1c4-0314-c9a6">Remove 4 gore from within 5&quot;</characteristic>
      </characteristics>
    </profile>
    <profile id="3464-76a0-9264-1d41" name="Go To Ground" publicationId="690f-6ec1-3a45-0ffc" page="42" hidden="false" typeId="3f3f-4bef-0bab-2cff" typeName="--- Ability ---">
      <characteristics>
        <characteristic name="Action" typeId="3659-df21-f698-59ad">Short</characteristic>
        <characteristic name="Type" typeId="b356-e832-95cc-4467">Special, Cunning</characteristic>
        <characteristic name="Range" typeId="d24a-25b3-c0bd-f75f">-</characteristic>
        <characteristic name="TN" typeId="3b97-3988-8ead-1039">-</characteristic>
        <characteristic name="Burst" typeId="ee2e-080f-055b-061a">-</characteristic>
        <characteristic name="Effect" typeId="e0f5-c1c4-0314-c9a6">Gain +1 Defense against ranged attacks, do not block LOS, until their next activation.</characteristic>
      </characteristics>
    </profile>
    <profile id="df01-7d67-9fbe-3aa9" name="Jump Start" hidden="false" typeId="3f3f-4bef-0bab-2cff" typeName="--- Ability ---">
      <characteristics>
        <characteristic name="Action" typeId="3659-df21-f698-59ad">Short</characteristic>
        <characteristic name="Type" typeId="b356-e832-95cc-4467">Special, Cunning</characteristic>
        <characteristic name="Range" typeId="d24a-25b3-c0bd-f75f">2</characteristic>
        <characteristic name="TN" typeId="3b97-3988-8ead-1039">5</characteristic>
        <characteristic name="Burst" typeId="ee2e-080f-055b-061a">-</characteristic>
        <characteristic name="Effect" typeId="e0f5-c1c4-0314-c9a6">Friendly Artillery and Imperial Crawler units within range may move 2&quot;.</characteristic>
      </characteristics>
    </profile>
    <profile id="b677-4f6e-03cb-58d8" name="Master Gunner" hidden="false" typeId="3f3f-4bef-0bab-2cff" typeName="--- Ability ---">
      <characteristics>
        <characteristic name="Action" typeId="3659-df21-f698-59ad">Long</characteristic>
        <characteristic name="Type" typeId="b356-e832-95cc-4467">Special, Cunning</characteristic>
        <characteristic name="Range" typeId="d24a-25b3-c0bd-f75f">2</characteristic>
        <characteristic name="TN" typeId="3b97-3988-8ead-1039">5</characteristic>
        <characteristic name="Burst" typeId="ee2e-080f-055b-061a">-</characteristic>
        <characteristic name="Effect" typeId="e0f5-c1c4-0314-c9a6">Target friendly artillery or Imperial Crawler unit may gain one stress to make a ranged combat order.</characteristic>
      </characteristics>
    </profile>
    <profile id="d542-66ce-7b25-7977" name="Machinist" hidden="false" typeId="3f3f-4bef-0bab-2cff" typeName="--- Ability ---">
      <characteristics>
        <characteristic name="Action" typeId="3659-df21-f698-59ad">Short</characteristic>
        <characteristic name="Type" typeId="b356-e832-95cc-4467">Special, Cunning</characteristic>
        <characteristic name="Range" typeId="d24a-25b3-c0bd-f75f">2</characteristic>
        <characteristic name="TN" typeId="3b97-3988-8ead-1039">5</characteristic>
        <characteristic name="Burst" typeId="ee2e-080f-055b-061a">-</characteristic>
        <characteristic name="Effect" typeId="e0f5-c1c4-0314-c9a6">Heal 1 wound on target artillery piece or Imperial Crawler</characteristic>
      </characteristics>
    </profile>
    <profile id="6307-0635-5aa5-5da3" name="Heavy Guns" hidden="false" typeId="1231-8a7d-8660-4b58" typeName="-- Weapon --">
      <characteristics>
        <characteristic name="Type" typeId="bec2-08c9-9760-38f2">Ranged</characteristic>
        <characteristic name="Range" typeId="ed90-5160-6b9a-06fe">12</characteristic>
        <characteristic name="TN" typeId="872b-0f66-5fc4-14fd">8</characteristic>
        <characteristic name="Burst" typeId="7474-4b21-4cd8-d9f9">5</characteristic>
        <characteristic name="Dmg" typeId="e7f2-1487-6c95-3a26">+2</characteristic>
        <characteristic name="Effect" typeId="e339-e6bf-a6ef-ad36">Shock 2</characteristic>
      </characteristics>
    </profile>
    <profile id="fbbe-fdb5-19f8-4d1b" name="Flame Cannon" hidden="false" typeId="1231-8a7d-8660-4b58" typeName="-- Weapon --">
      <characteristics>
        <characteristic name="Type" typeId="bec2-08c9-9760-38f2">Ranged</characteristic>
        <characteristic name="Range" typeId="ed90-5160-6b9a-06fe">4</characteristic>
        <characteristic name="TN" typeId="872b-0f66-5fc4-14fd">9</characteristic>
        <characteristic name="Burst" typeId="7474-4b21-4cd8-d9f9">7</characteristic>
        <characteristic name="Dmg" typeId="e7f2-1487-6c95-3a26">+2</characteristic>
        <characteristic name="Effect" typeId="e339-e6bf-a6ef-ad36">Shock 6, Burn</characteristic>
      </characteristics>
    </profile>
    <profile id="9639-7ea9-be6a-0d3f" name="Crushing Mass" hidden="false" typeId="1231-8a7d-8660-4b58" typeName="-- Weapon --">
      <characteristics>
        <characteristic name="Type" typeId="bec2-08c9-9760-38f2">Close</characteristic>
        <characteristic name="Range" typeId="ed90-5160-6b9a-06fe">-</characteristic>
        <characteristic name="TN" typeId="872b-0f66-5fc4-14fd">5</characteristic>
        <characteristic name="Burst" typeId="7474-4b21-4cd8-d9f9">2</characteristic>
        <characteristic name="Dmg" typeId="e7f2-1487-6c95-3a26">+3</characteristic>
        <characteristic name="Effect" typeId="e339-e6bf-a6ef-ad36">Shock 4, Dismember</characteristic>
      </characteristics>
    </profile>
    <profile id="5ad1-bd03-2a20-1ed5" name="Rocket Salvo" hidden="false" typeId="1231-8a7d-8660-4b58" typeName="-- Weapon --">
      <characteristics>
        <characteristic name="Type" typeId="bec2-08c9-9760-38f2">Ranged</characteristic>
        <characteristic name="Range" typeId="ed90-5160-6b9a-06fe">24</characteristic>
        <characteristic name="TN" typeId="872b-0f66-5fc4-14fd">7</characteristic>
        <characteristic name="Burst" typeId="7474-4b21-4cd8-d9f9">3</characteristic>
        <characteristic name="Dmg" typeId="e7f2-1487-6c95-3a26">+2</characteristic>
        <characteristic name="Effect" typeId="e339-e6bf-a6ef-ad36">Daze, Shock 4</characteristic>
      </characteristics>
    </profile>
    <profile id="b60a-a56a-54e8-4a0e" name="From the Heavens" hidden="false" typeId="3f3f-4bef-0bab-2cff" typeName="--- Ability ---">
      <characteristics>
        <characteristic name="Action" typeId="3659-df21-f698-59ad">Short</characteristic>
        <characteristic name="Type" typeId="b356-e832-95cc-4467">Sorcery</characteristic>
        <characteristic name="Range" typeId="d24a-25b3-c0bd-f75f">LOS</characteristic>
        <characteristic name="TN" typeId="3b97-3988-8ead-1039">5</characteristic>
        <characteristic name="Burst" typeId="ee2e-080f-055b-061a">-</characteristic>
        <characteristic name="Effect" typeId="e0f5-c1c4-0314-c9a6">Target friendly unit that is not locked in combat may move 2”.</characteristic>
      </characteristics>
    </profile>
    <profile id="ff9f-6c66-8889-c980" name="Psychic Mutations" hidden="false" typeId="3f3f-4bef-0bab-2cff" typeName="--- Ability ---">
      <characteristics>
        <characteristic name="Action" typeId="3659-df21-f698-59ad">Short</characteristic>
        <characteristic name="Type" typeId="b356-e832-95cc-4467">Sorcery</characteristic>
        <characteristic name="Range" typeId="d24a-25b3-c0bd-f75f">LOS</characteristic>
        <characteristic name="TN" typeId="3b97-3988-8ead-1039">5</characteristic>
        <characteristic name="Burst" typeId="ee2e-080f-055b-061a">-</characteristic>
        <characteristic name="Effect" typeId="e0f5-c1c4-0314-c9a6">Target unit suffers DAZE.</characteristic>
      </characteristics>
    </profile>
    <profile id="3194-c449-b604-65b9" name="Chimeric Fury" hidden="false" typeId="3f3f-4bef-0bab-2cff" typeName="--- Ability ---">
      <characteristics>
        <characteristic name="Action" typeId="3659-df21-f698-59ad">Long</characteristic>
        <characteristic name="Type" typeId="b356-e832-95cc-4467">Sorcery</characteristic>
        <characteristic name="Range" typeId="d24a-25b3-c0bd-f75f">LOS</characteristic>
        <characteristic name="TN" typeId="3b97-3988-8ead-1039">6</characteristic>
        <characteristic name="Burst" typeId="ee2e-080f-055b-061a">-</characteristic>
        <characteristic name="Effect" typeId="e0f5-c1c4-0314-c9a6">Target friendly unit may gain one stress to perform the combat long order.</characteristic>
      </characteristics>
    </profile>
    <profile id="427f-cd9d-d3be-ae1c" name="Bombs" hidden="false" typeId="1231-8a7d-8660-4b58" typeName="-- Weapon --">
      <characteristics>
        <characteristic name="Type" typeId="bec2-08c9-9760-38f2">Ranged</characteristic>
        <characteristic name="Range" typeId="ed90-5160-6b9a-06fe">3</characteristic>
        <characteristic name="TN" typeId="872b-0f66-5fc4-14fd">7</characteristic>
        <characteristic name="Burst" typeId="7474-4b21-4cd8-d9f9">3</characteristic>
        <characteristic name="Dmg" typeId="e7f2-1487-6c95-3a26">+3</characteristic>
        <characteristic name="Effect" typeId="e339-e6bf-a6ef-ad36">SHOCK 2 and DISMEMBER</characteristic>
      </characteristics>
    </profile>
    <profile id="eafb-6a9f-e5c0-2595" name="Light Mortar" hidden="false" typeId="1231-8a7d-8660-4b58" typeName="-- Weapon --">
      <characteristics>
        <characteristic name="Type" typeId="bec2-08c9-9760-38f2">Ranged</characteristic>
        <characteristic name="Range" typeId="ed90-5160-6b9a-06fe">18</characteristic>
        <characteristic name="TN" typeId="872b-0f66-5fc4-14fd">7</characteristic>
        <characteristic name="Burst" typeId="7474-4b21-4cd8-d9f9">3</characteristic>
        <characteristic name="Dmg" typeId="e7f2-1487-6c95-3a26">+2</characteristic>
        <characteristic name="Effect" typeId="e339-e6bf-a6ef-ad36">SHOCK 2 and DISMEMBER</characteristic>
      </characteristics>
    </profile>
    <profile id="3bb8-8629-70a4-cce8" name="Bastion" hidden="false" typeId="3f3f-4bef-0bab-2cff" typeName="--- Ability ---">
      <characteristics>
        <characteristic name="Action" typeId="3659-df21-f698-59ad">Short</characteristic>
        <characteristic name="Type" typeId="b356-e832-95cc-4467">Special, Cunning</characteristic>
        <characteristic name="Range" typeId="d24a-25b3-c0bd-f75f">Self</characteristic>
        <characteristic name="TN" typeId="3b97-3988-8ead-1039">5</characteristic>
        <characteristic name="Burst" typeId="ee2e-080f-055b-061a">-</characteristic>
        <characteristic name="Effect" typeId="e0f5-c1c4-0314-c9a6">This unit gains +1 on endurance saves until its next activation.</characteristic>
      </characteristics>
    </profile>
    <profile id="5ff2-1e29-fe90-5e6c" name="Martyrdom" hidden="false" typeId="3f3f-4bef-0bab-2cff" typeName="--- Ability ---">
      <characteristics>
        <characteristic name="Action" typeId="3659-df21-f698-59ad">Short</characteristic>
        <characteristic name="Type" typeId="b356-e832-95cc-4467">Special, Cunning</characteristic>
        <characteristic name="Range" typeId="d24a-25b3-c0bd-f75f">Self</characteristic>
        <characteristic name="TN" typeId="3b97-3988-8ead-1039">-</characteristic>
        <characteristic name="Burst" typeId="ee2e-080f-055b-061a">-</characteristic>
        <characteristic name="Effect" typeId="e0f5-c1c4-0314-c9a6">Remove one figure from this unit. All allies within LOS lose one stress.</characteristic>
      </characteristics>
    </profile>
    <profile id="d377-03a6-3b3a-f3b2" name="Longbow Volley" hidden="false" typeId="1231-8a7d-8660-4b58" typeName="-- Weapon --">
      <characteristics>
        <characteristic name="Type" typeId="bec2-08c9-9760-38f2">Ranged</characteristic>
        <characteristic name="Range" typeId="ed90-5160-6b9a-06fe">16</characteristic>
        <characteristic name="TN" typeId="872b-0f66-5fc4-14fd">7</characteristic>
        <characteristic name="Burst" typeId="7474-4b21-4cd8-d9f9">3</characteristic>
        <characteristic name="Dmg" typeId="e7f2-1487-6c95-3a26">+1</characteristic>
        <characteristic name="Effect" typeId="e339-e6bf-a6ef-ad36">BLEED</characteristic>
      </characteristics>
    </profile>
    <profile id="eaab-ddd5-1b17-40e9" name="Yield Not!" hidden="false" typeId="3f3f-4bef-0bab-2cff" typeName="--- Ability ---">
      <characteristics>
        <characteristic name="Action" typeId="3659-df21-f698-59ad">Short</characteristic>
        <characteristic name="Type" typeId="b356-e832-95cc-4467">Prayer</characteristic>
        <characteristic name="Range" typeId="d24a-25b3-c0bd-f75f">10</characteristic>
        <characteristic name="TN" typeId="3b97-3988-8ead-1039">5</characteristic>
        <characteristic name="Burst" typeId="ee2e-080f-055b-061a">-</characteristic>
        <characteristic name="Effect" typeId="e0f5-c1c4-0314-c9a6">Target unit gains Tough until the user’s next activation to gain +1 on endurance saves.
Units with the Tough special skill cannot benefit from this.</characteristic>
      </characteristics>
    </profile>
    <profile id="7df4-2989-4bfd-945e" name="Righteous Fury" hidden="false" typeId="3f3f-4bef-0bab-2cff" typeName="--- Ability ---">
      <characteristics>
        <characteristic name="Action" typeId="3659-df21-f698-59ad">Long</characteristic>
        <characteristic name="Type" typeId="b356-e832-95cc-4467">Prayer</characteristic>
        <characteristic name="Range" typeId="d24a-25b3-c0bd-f75f">10</characteristic>
        <characteristic name="TN" typeId="3b97-3988-8ead-1039">5</characteristic>
        <characteristic name="Burst" typeId="ee2e-080f-055b-061a">-</characteristic>
        <characteristic name="Effect" typeId="e0f5-c1c4-0314-c9a6">Target friendly unit may gain one stress to perform the combat long order.</characteristic>
      </characteristics>
    </profile>
    <profile id="bc8d-74b9-3dab-e9c9" name="Blessed Resurrection" hidden="false" typeId="3f3f-4bef-0bab-2cff" typeName="--- Ability ---">
      <characteristics>
        <characteristic name="Action" typeId="3659-df21-f698-59ad">Long</characteristic>
        <characteristic name="Type" typeId="b356-e832-95cc-4467">Prayer</characteristic>
        <characteristic name="Range" typeId="d24a-25b3-c0bd-f75f">10</characteristic>
        <characteristic name="TN" typeId="3b97-3988-8ead-1039">5</characteristic>
        <characteristic name="Burst" typeId="ee2e-080f-055b-061a">-</characteristic>
        <characteristic name="Effect" typeId="e0f5-c1c4-0314-c9a6">Remove up to 8 gore from within range.
If 8 gore was removed, one friendly unit within range heals three wounds, even returning figures from the dead.
Units cannot exceed original unit strength.</characteristic>
      </characteristics>
    </profile>
    <profile id="fe83-1c64-b506-1551" name="Mind Poison" hidden="false" typeId="3f3f-4bef-0bab-2cff" typeName="--- Ability ---">
      <characteristics>
        <characteristic name="Action" typeId="3659-df21-f698-59ad">Short</characteristic>
        <characteristic name="Type" typeId="b356-e832-95cc-4467">Sorcery</characteristic>
        <characteristic name="Range" typeId="d24a-25b3-c0bd-f75f">12</characteristic>
        <characteristic name="TN" typeId="3b97-3988-8ead-1039">7</characteristic>
        <characteristic name="Burst" typeId="ee2e-080f-055b-061a">2</characteristic>
        <characteristic name="Effect" typeId="e0f5-c1c4-0314-c9a6">+1, DAZE.
If this attack removes a figure from play, replace that figure with a new Zealot under your control.
Zealots created this way activate after all other units have activated, right before the nerve phase.</characteristic>
      </characteristics>
    </profile>
    <profile id="7585-bbf5-55ef-0a89" name="Manticore Venom" hidden="false" typeId="3f3f-4bef-0bab-2cff" typeName="--- Ability ---">
      <characteristics>
        <characteristic name="Action" typeId="3659-df21-f698-59ad">Long</characteristic>
        <characteristic name="Type" typeId="b356-e832-95cc-4467">Sorcery</characteristic>
        <characteristic name="Range" typeId="d24a-25b3-c0bd-f75f">12</characteristic>
        <characteristic name="TN" typeId="3b97-3988-8ead-1039">5</characteristic>
        <characteristic name="Burst" typeId="ee2e-080f-055b-061a">-</characteristic>
        <characteristic name="Effect" typeId="e0f5-c1c4-0314-c9a6">Friendly units gain DAZE on their weapons while within 12” of the priest.
Weapons that already have DAZE cause two DAZE effects on a 6.
This sorcery lasts until the user’s next activation.</characteristic>
      </characteristics>
    </profile>
    <profile id="b930-9a01-de1d-6f32" name="Sign of Doom" hidden="false" typeId="3f3f-4bef-0bab-2cff" typeName="--- Ability ---">
      <characteristics>
        <characteristic name="Action" typeId="3659-df21-f698-59ad">Long</characteristic>
        <characteristic name="Type" typeId="b356-e832-95cc-4467">Sorcery</characteristic>
        <characteristic name="Range" typeId="d24a-25b3-c0bd-f75f">12</characteristic>
        <characteristic name="TN" typeId="3b97-3988-8ead-1039">6</characteristic>
        <characteristic name="Burst" typeId="ee2e-080f-055b-061a">-</characteristic>
        <characteristic name="Effect" typeId="e0f5-c1c4-0314-c9a6">All units within range gain 1 stress.</characteristic>
      </characteristics>
    </profile>
    <profile id="67db-1e37-4f6b-ddd5" name="Sinister Blades" hidden="false" typeId="1231-8a7d-8660-4b58" typeName="-- Weapon --">
      <characteristics>
        <characteristic name="Type" typeId="bec2-08c9-9760-38f2">Close</characteristic>
        <characteristic name="Range" typeId="ed90-5160-6b9a-06fe">-</characteristic>
        <characteristic name="TN" typeId="872b-0f66-5fc4-14fd">7</characteristic>
        <characteristic name="Burst" typeId="7474-4b21-4cd8-d9f9">3</characteristic>
        <characteristic name="Dmg" typeId="e7f2-1487-6c95-3a26">+1</characteristic>
        <characteristic name="Effect" typeId="e339-e6bf-a6ef-ad36">DAZE</characteristic>
      </characteristics>
    </profile>
    <profile id="6080-709e-08ed-28be" name="Hidden Blades" hidden="false" typeId="1231-8a7d-8660-4b58" typeName="-- Weapon --">
      <characteristics>
        <characteristic name="Type" typeId="bec2-08c9-9760-38f2">Close</characteristic>
        <characteristic name="Range" typeId="ed90-5160-6b9a-06fe">-</characteristic>
        <characteristic name="TN" typeId="872b-0f66-5fc4-14fd">7</characteristic>
        <characteristic name="Burst" typeId="7474-4b21-4cd8-d9f9">2</characteristic>
        <characteristic name="Dmg" typeId="e7f2-1487-6c95-3a26">+1</characteristic>
        <characteristic name="Effect" typeId="e339-e6bf-a6ef-ad36">DAZE</characteristic>
      </characteristics>
    </profile>
    <profile id="7f73-aba3-a237-c654" name="Poison Grenades" hidden="false" typeId="1231-8a7d-8660-4b58" typeName="-- Weapon --">
      <characteristics>
        <characteristic name="Type" typeId="bec2-08c9-9760-38f2">Ranged</characteristic>
        <characteristic name="Range" typeId="ed90-5160-6b9a-06fe">8</characteristic>
        <characteristic name="TN" typeId="872b-0f66-5fc4-14fd">7</characteristic>
        <characteristic name="Burst" typeId="7474-4b21-4cd8-d9f9">3</characteristic>
        <characteristic name="Dmg" typeId="e7f2-1487-6c95-3a26">+1</characteristic>
        <characteristic name="Effect" typeId="e339-e6bf-a6ef-ad36">DAZE</characteristic>
      </characteristics>
    </profile>
    <profile id="c8f5-caf6-f9f0-84ea" name="Hidden Poison Grenades" hidden="false" typeId="1231-8a7d-8660-4b58" typeName="-- Weapon --">
      <characteristics>
        <characteristic name="Type" typeId="bec2-08c9-9760-38f2">Ranged</characteristic>
        <characteristic name="Range" typeId="ed90-5160-6b9a-06fe">8</characteristic>
        <characteristic name="TN" typeId="872b-0f66-5fc4-14fd">7</characteristic>
        <characteristic name="Burst" typeId="7474-4b21-4cd8-d9f9">2</characteristic>
        <characteristic name="Dmg" typeId="e7f2-1487-6c95-3a26">+1</characteristic>
        <characteristic name="Effect" typeId="e339-e6bf-a6ef-ad36">DAZE</characteristic>
      </characteristics>
    </profile>
    <profile id="856f-b6dc-bd56-b83f" name="Blood Ritual" hidden="false" typeId="3f3f-4bef-0bab-2cff" typeName="--- Ability ---">
      <characteristics>
        <characteristic name="Action" typeId="3659-df21-f698-59ad">Long</characteristic>
        <characteristic name="Type" typeId="b356-e832-95cc-4467">Prayer</characteristic>
        <characteristic name="Range" typeId="d24a-25b3-c0bd-f75f">5</characteristic>
        <characteristic name="TN" typeId="3b97-3988-8ead-1039">5</characteristic>
        <characteristic name="Burst" typeId="ee2e-080f-055b-061a">-</characteristic>
        <characteristic name="Effect" typeId="e0f5-c1c4-0314-c9a6">Remove up to 8 gore from within 5”.
If 8 gore is removed, this unit recovers d3 wounds, even returning figures from the dead.
This unit cannot exceed the original unit strength.</characteristic>
      </characteristics>
    </profile>
    <profile id="7ac5-b06a-4566-2b97" name="Heavy Weapon" hidden="false" typeId="1231-8a7d-8660-4b58" typeName="-- Weapon --">
      <characteristics>
        <characteristic name="Type" typeId="bec2-08c9-9760-38f2">Close</characteristic>
        <characteristic name="Range" typeId="ed90-5160-6b9a-06fe">-</characteristic>
        <characteristic name="TN" typeId="872b-0f66-5fc4-14fd">6</characteristic>
        <characteristic name="Burst" typeId="7474-4b21-4cd8-d9f9">2</characteristic>
        <characteristic name="Dmg" typeId="e7f2-1487-6c95-3a26">+3</characteristic>
        <characteristic name="Effect" typeId="e339-e6bf-a6ef-ad36"/>
      </characteristics>
    </profile>
    <profile id="1954-87a0-701b-805e" name="Martial Weapon" hidden="false" typeId="1231-8a7d-8660-4b58" typeName="-- Weapon --">
      <characteristics>
        <characteristic name="Type" typeId="bec2-08c9-9760-38f2">Close</characteristic>
        <characteristic name="Range" typeId="ed90-5160-6b9a-06fe">-</characteristic>
        <characteristic name="TN" typeId="872b-0f66-5fc4-14fd">6</characteristic>
        <characteristic name="Burst" typeId="7474-4b21-4cd8-d9f9">2</characteristic>
        <characteristic name="Dmg" typeId="e7f2-1487-6c95-3a26">+2</characteristic>
        <characteristic name="Effect" typeId="e339-e6bf-a6ef-ad36"/>
      </characteristics>
    </profile>
  </sharedProfiles>
</gameSystem>