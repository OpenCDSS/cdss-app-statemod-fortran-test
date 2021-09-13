Test1   Simple 8 node
	2 direct flo irrigation
	1 M&I
	1 instream
	
test2   Same as 1 plus
	1 reservoir
	one fill constraint
	target reservoir content
	reservoir summary output

test3   same as 2 plus
	reservoir release for an instream demand
	reservoir release for a direct flow demand
	reallocation of supplies based upon reservoir operations

test4   same as 3 plus                                                    27

	reservoir exchange

test5   same as 3 plus
	reservoir release to a carrier

test6   base flow generation with Test 2 data?

test7   base flow generation with consideration of a carrier 

_______________________________________________________________

ex1     Simple 8 node (old test1, but renamed structures, etc.)
	2 direct flow irrigation demands
	1 M&I demand
	1 instream demand
     
ex1d    Same as ex1 but daily

ex2     Same as ex1 but reservoir operating

ex3     Same as ex2 but reservoir serving a direct demand

ex4     same as 2 plus reservoir exchange

ex5     same as 3 plus reservoir release directly by a carrier
        where the carrier is not specified
        *.XLS HAS A NETWORK 

ex6     baseflow

ex7     same as ex3 plus wells
ex7/daily Same as ex7 but daily

ex8     Daily
ex8b	  Test daily basflow with no daily data

ex9     Carrier (Tunnel) to Dem_1
        *.XLS with A NETWORK 

ex10    Tunnel operation and base flows with import concept

ex12    Tunnel operation and base flows with return flow concept

ex13    Index flow constraint

ex14    Minimum flow operation       

ex15    Reservoir to carrier exchange

ex16    Reservoir to reservoir exchange

ex17    Reservoir to diversion by exchange with return flow adjustment

ex18    Replacement logic

ex19    Paper fill reservoir

ex20    Constrained bookover (Blue River Decree Implementation)

ex22    Same as ex5 but carrier operation constrained by monthly code

ex23    Same as ex1 but test instream flow reach

ex24    Composite of ex18 (replacement res) and ex20 (constrained bookover)
	for Williams Fork replacement of Green Mountain functions

ex25    Example of automatic returns to another watershed

ex26    Example of allocating evaporation to various users

ex29    Example used to test target to all accounts

ex30    Baseflow with missing data

ex31

ex32    BaseflowX option; read in natural flows, calculate ungaged.

ex33    99/06/29        Futile call implementation

ex34    Baseflows for a futile call implementation

ex35    Type 15 Interruptable supply to an instream flow (Intersup)

ex36    Carrier limited by an annual total volume (OPR type 14)

ex37    Baseflow with wells for example 7 data

ex38    Type 16 Direct Flow Storage

ex39    Rio Grande Compact
ex39/Daily      Daily Rio Grande Compact

ex40    Loss stuff (sum % and sum returns)

ex41    Test type 2 reservoir to a carrier via a stream

ex42    Direct Flow Storage right tied to a carrier

ex43    Misc. Carrier testing

ex44    Split channel testing

ex45    Carrier to Split Channel

ex46    Structure Demand = *.ddm and *.wem and Add SW/GW primary switch
	Same as ex7 (simple with wells) with some tests related 
	to calculating total demand using deamnd type 7 (SW + GW).
	and maximum recharge limit.

ex47    Maximum Stream to GW payback (gwrech). 
	Continuity Tests when stream is negative
	Same as ex7 (simple with wells) with max recharege rate and
	some tests related to balancing when depletions drive 
	the system negative.

ex48    Demonstrates a simple 8 node network with wells where demand is:
  if idemtyp = 1 demands to direct diversion (*.ddm) and pumping (*.wem)
	       are kept separate for a D&W node.
  if idemtyp = 2 demands to direct diversion (*.ddm) and pumping (*.wem)
	       are added and satisfied by SW and GW for a D&W node.
  if idemtyp = 3 demands for D&W nodes are expected to be found as a total
	       in *.ddm (nothing in *.wem for D&W nodes.

   Also allow demands to be entered as an Irrigation Water Requirement based on
  the demand type code (idvcom for SW and idvcomw for GW) as follows:

  if idvcom = 1 monthly demands at headgate (12 values each year) 
  if idvcom = 2 annual  demands at headgate (12 values repeated each year)
  if idvcom = 3 monthly IWR demand
  if idvcom = 4 annual IWR demand


ex49    Demonstrates a simple 8 node network with wells where demand is:
  provided as an IWR for both SW and Wells
  if idvcom = 1 monthly demands at headgate (12 values each year) 
  if idvcom = 2 annual  demands at headgate (12 values repeated each year)
  if idvcom = 3 monthly IWR demand
  if idvcom = 4 annual IWR demand

ex50 Test random input file capability

ex51 Type 20 San Juan RIP (SJRIP) operating rule 

ex52 Limit pumping to acres served by GW. 

ex53 Variable efficiency calculations 

ex54 Test Maximum Supply (sprinkler use, variable eff, time series data

ex55

ex56 Test Soil Moisture Storage

ex56 Test demand

ex57 Test demand type 4 (SW demand is not limited by other supplies (e.g. wells)

ex57/daily; Same as above for daily

ex58 test demand type 5 (demand = max(data, water right)

ex59 Test Direct Flow Exchange (Chris Hay)

ex60 Test PPt and Evap data in separate files (Chris Hay)

ex61 Test new daily estimation approach type 4 
     (connect mid points of monthly data)

ex62 Test reservoir right tied to 1 account

ex63 Test reservoir release limited to a CIR (IWR).
     Note requires variable efficiency be on

ex64 Test reservoir release by exchange (type 4) limited to a CIR (IWR).
     Note requires variable efficiency be on

ex65 Test new daily estimation approach for targets (type 5)
     (connect end points of monthly data)

ex66 Reservoir to carrier exchange (similar to example 15) but the carrier    
     is limited by an annual or monthly limit (similar to type 14)

ex67 Test daily operation using a running monthly demand
     (iday = 2)

ex68 Test daily baseflow operation with ex67 data.

ex69 Test exchange code (divrpl) with and without a depletion option

ex70 Test reservoir to a diversion (divres) with and without a depletion
     option

ex71 Test diversion to a reservoir when water is distributed to accounts
     based on ownership ratio (e.g. iresco(2,k) = 0)

ex72 Test a downstream call operation (type 23) via a user provided data file.

ex73 Test reuse of return flows via a reuse reseroivr
     NOT USED Revised to us Plan Concept

ex74R  Type 24 Direct Flow Exchange to a Reservoir based on a % ownership of a water right.
ex74RC Type 24 Direct Flow Exchange to a Reservoir by Carrier based on a % ownership of a water right
ex74D  Type 24 Direct Flow Exchange to a Diversion based on a % ownership of a water right
ex74P  Type 24 Direct Flow Exchange to a Plan based on a % ownership of a water right

ex74DC Type 24 Direct Flow Exchange to a Diversion by Carrier based on a % ownership of a water right
ex74Ra Type 24 Direct Flow Exchange to a Multiple accounts in a Reservoir based on a % ownership of a water right.

ex75R  Type 25 Direct Flow Bypass to a Reservoir based on a % ownership of a water right.
ex75RC Type 25 Direct Flow Bypass to a Reservoir by Carrier based on a % ownership of a water right
ex75Ra Type 25 Direct Flow Bypass to a Multiple accounts in a Reservoir based on a % ownership of a water right.
ex75RCX Type 25 Direct Flow Bypass to a Reservoir by Carrier located at the original
        water right location based on a % ownership of a water right
ex75D  Type 25 Direct Flow Bypass to a Diversion based on a % ownership of a water right
ex75DC Type 25 Direct Flow Bypass to a Diversion by Carrier based on a % ownership of a water right
ex75P  Type 25 Direct Flow Bypass to a Plan based on a % ownership of a water right

ex75AP Type 25 Direct Flow Bypass to a type 11 (Accounting) Plan


ex76   Type 26 Reservoir to an augmentation Plan


ex77   Type 26 Reservoir to an augmentation Plan with terms and conditions

ex78   Type 23 Exchange to a Reservoir with a T&C Plan and a Reuse Plan

ex79   Type 27 Plan to Diversion Direct

ex80 Test T&C supplies
     Type 24 Exchange a water right to a diversion that has reusable CU
     Type 26 Release reservoir water from Res_1 to meet T&C obligations
     Type 26 Release water from a Reuse plan to a T&C
     Type 43 In priority to a T&C

ex81 NA


ex82 NA


ex83 NA


ex84R  Type 27 Reuse Plan release to a Reservoir Direct
ex84RC Type 27 Reuse Plan release to a Reservoir Direct by a carrier
ex84D  Type 27 Reuse Plan release to a Diversion Direct
ex84DC Type 27 Reuse Plan release to a Diversion Direct by a carrier
ex84I  Type 27 Reuse Plan release to a Instream Flow  Direct
ex84IR Type 27 Reuse Plan release to a Instream Flow  Reach Direct 
ex84DL Type 27 Reuse Plan release to a Diversion Direct by a carrier with
         monthly and annual limits	
*.XLS with A NETWORK 


ex85R  Type 28 Reuse Plan release to a Reservoir Exchange
ex85RC Type 28 Reuse Plan release to a Reservoir Exchange by a carrier
ex85D  Type 28 Reuse Plan release to a Diversion Exchange
ex85DC Type 28 Reuse Plan release to a Diversion Exchange by a carrier
ex85I  Type 28 Reuse Plan release to a Instream Flow  Direct
ex85IR Type 27 Reuse Plan release to a Instream Flow  Reach Direct    

ex86   BEGAN TO TEST a Well Augmentation Plan
ex86R  Well augmentation supplied by a reservoir via a type 26
ex86W  Well augmentation supplied by a upstream water right transfer (type 25)
ex86x  Well augmentation supplied by a reservoir and no augmentation if
       the well is in priority


ex87   Downstream call with reuse. Work with Rick Parsons to begin
       Blackhawk evaluation

ex88 Test
     Type 24 Exchange to a Reservoir (Res_1) reusable water (Reuse_Res)
     Type 32 Release from a reservoir and plan to a diversion (Dem_Test) 
       Direct that is reusable (Reuse_Div)
     Type 27 Release reusable return flows (Reuse_div) to a diversion 
       (Dem_Test2)
     Note on 2006/05/30 Tested with reservoir evaporation and checked 
       plan evaporation


ex89 Type 35 Transmountain reuse via an import

ex90 Type 34 Bookover with Reuse

ex91 Test call reporting

Ex92   Type 33 Reservoir and Reuse Plan
ex92r  Type 33 Reservoir and and Reuse exchange release to a reservoir (Res_Test) by Exchage 
ex92d  Type 33 Reservoir and and Reuse exchange release to a diversion (Dem_1) by Exchage 
ex92i  Type 33 Reservoir and and Reuse exchange release to a instream flow (ISF_1) by Exchage 
ex92rc Type 33 Reservoir and and Reuse exchange release to a carrier then a reservoir (Res_Test) by Exchage 

ex93r Type 32 Reservoir and and Reuse direct release to a reservoir by the Stream (Res_Test) Direct
ex93d Type 32 Reservoir and and Reuse direct release to a diversion by the Stream (Dem_Test) Direct 
ex93i Type 32 Reservoir and and Reuse direct release to a instream flow by the Stream (IFS_2) Direct
ex93d2 Type 32 Reservoir and and Reuse direct release to a diversion (Dem_Test) by the Stream with a Carrier  Direct 
ex93d3 Type 32 Reservoir and and Reuse direct release to a diversion (Dem_Test) by the Stream (To_Stream)  
ex93d4 Type 32 Reservoir and and Reuse direct release to a diversion (Dem_Test) directly (To_Conduit) 

ex94  Test random TS formats
      Test new diversion (*.dds = *.dst, *.def, *.drf)
      and new well (*.wes = *.wst, *.wef, *.wrf, *.wde) formats

ex95  Type 11 test a diversion to a reservoir with carrier loss

ex96  Test No flow example

ex97  Type 37 Test Recharge Well to a Well Augmentation Requirement Plan

ex98  Test Water Right  to a Well Augmentation Requirement
ex98Dir    Direct a Water Right to a Well Augmentation Requirement
ex98Exc    Exchange a Water Right to a Well Augmentation Requirement

ex99  Type 37 Test an Augmentation Well to an T&C or WEll Agumentation Requirement

ex100 Carrier to a reservoir that does not count againts the reservoirs
	its 1 fill rule.

ex101 Type 8 & Type 2 Out Of Priority Reservoir Storage Enhancements 
	1. more than 1 account or reservoir
	2. Limit by upstream and downstream reservoir capacity


ex102 Out Of Priority Reservoir Storage Enhancements 
        1. Two reservoirs divertion Out of Priority
           e.g. Dillon Res and Blue Res


ex103 Out Of Priority Diversion with regard to a Reservoir 
        1. Two reservoirs divertion Out of Priority
           e.g. Dillon Res and Blue Res
        2. Direct flow out of priority
           e.g. Roberts Tunnel

ex104 Out Of Priority Diversion Replacement Logic with a Plan

ex105 Type 39 Test Alternate Point (DivAlt)
ex105D Type 39,  the alternate point is another diversion
ex105R Type 39,  the alternate point is a well
ex105DX Type 39, the alternate point diversoin is limited by the flow 
                 at the source water right

_______________________________
Begin LRE enhancements for Colorado River 

ex106 Storage in a Reservoir limited by water stored in one or more plans

ex107 Type 44 Test Recharge Well to a Reservoir

ex108 Type 45 Carrier with Loss
         Carrier loss is based on carrier structure
         Application loss is based on destination
         Multiple Carrier Losses
ex108D	 Simple Carrier Loss to a diversion
ex108R	 Simple Carrier Loss to a reservoir
ex108DP  Simple carrier loss to a diversion with returns to a plan
ex108DP2 Simple carrier loss to a diversion with returns to a plan using
           return properties specified in the plan return file
ex108DPA Simple carrier loss to a diversion with returns to a Recharge plan that
           satisfies an augmentation Plan requirement (Aug_Plan)
ex108D2  Carrier Loss tied to a diversion with multiple carrier structures     
ex108DL  Carrier Loss limited by a miscellaneous diversion limit
ex108RL  Carrier Loss limited by a miscellaneous reservoir limit

_______________________________
Begin LRE enhancements for South Platte
ex109 Revised type 25 Bypass Ownership diverted to a carrier at original location.
ex109R	Used to test: 
	Type 25 Operating Rule Bypass from a right located at Dem_Tunnel
 	to two carriers (Dem_Tunnel, the source) and (Pipeline) 
 	to a reservoir Res_1 
 	based on an 30% ownership of the downstream right 
 	Loss in Dem_Tunnel = 10% Loss in Pipeline = 0%
 	
ex109D	Used to test: 
	Type 25 Operating Rule Bypass from a right located at Dem_Tunnel
 	to two carriers (Dem_Tunnel, the source) and (Pipeline) 
 	to a diversion Dem_3 
 	based on an 30% ownership of the downstream right
  	A standard Exchange to a carrier with loss
 	Loss in Dem_Tunnel = 10% Loss in Pipeline = 0%
ex109P	Type 25 Operating Rule Bypass from a right located at Dem_Tunnel
 	to a Accounting Plan (Acct_Plan) by a carrier (Dem_Tunnel, the source) 
 	based on an 30% ownership of the downstream right. Loss in Dem_Tunnel = 10%
ex109P2 Same as ex109P except:
	1. The source structure is allowed to divert unused water 
   	associated with the transfer.
	2. The T&C requirement is specified as part of the use
   	as source 2 Test unused transfered can be transfered by teh original users
ex109P3	Same as ex109P2 except:
	1. The destination from the Accounting Plan is via Exchange
   	(type 28)
ex109P4	Same as ex109P except:
	1. The source structure is allowed to divert unused water 
   	associated with the transfer.
	2. The T&C requirement is specified as part of the use as source 2
	3. The T&C requirement is a fixed monthly percent as part of the use
   	as source 2

ex110 Revised type 24 Exchange Ownership diverted to a carrier at original location.

ex111 Revised type 32 Reservoir Direct to Stream with Reuse  (ex93 with reuse)

ex112 Revised type 33 Reservoir Exchange with Reuse  (ex92 with reuse)

ex113 Begin Testing of New Operating Rule control

ex114 Test Operating Rules Types 27 with Fixed and Constant
      return flow data
  ex114F = Fixed return flow data
  ex114S = Standard return flow data
  
ex115 Test Operating Rules Types 28 with Fixed and Constant
      return flow data
  ex115F = Fixed return flow data
  ex115S = Standard return flow data
  ex115M = Mixed return flow data
  ex115C1= Test above Case 1
  ex115C2= Test above Case 2
  ex115C3= Test above Case 3

ex116 Test Type 46 Diversion to an admin plan then to 1-n admin plans
	to handle multiple owners of a transfered water right.

ex117 Test Operating Rules Types 27 and 28 with Fixed and Constant
      return flow data with LOSS
      track returns to multiple locations under multiple plan ID's
  ex117C1= Test Case 1
  ex117C2= Test Case 2
  ex117C3= Test Case 3

ex118 Test Operating Rules Type 24 with Types 27 and 28 
	with Fixed and Constant
      return flow data with LOSS
      track returns to multiple locations under multiple plan ID's
      Type 47 Reservoir Release Direct to multiple locations

ex119 Test Operating Rules Type 24 (Exchange) with 
      Type 27 and 28 releases
      with Fixed and Constant return flow data with LOSS 
      and returns to the river.
      
  ex119C1= Test Case 1  Exchange to a Carrier then
  			Release to the River then 
  			Diversion from the River
  			
  ex119C2= Test Case 2  Exchange to an Admin Plan then
  			Release to a Carrier that is the source, 
  			return to River, then the Destination
  			
  ex119C3= Test Case 3  Exchange to an Admin Plan then
  			Release to a Carrier, then 
  			return to River, then the Destination  
  			
  ex119C5= Test Case 5; Exchange to an Admin Plan then
  			Release to a Carrier that is the source, 
  			return to River, then to a Carrier, 
  			then a diversion destination.
  			Direct after returning from the river
  			
  ex119C6= Test Case 6; Exchange to an Admin Plan then
  			Release to a Carrier that is the source, 
  			return to River, then to a Carrier, 
  			then a reservoir destination
  			By exchange after returning to the river


ex120 Test Operating Rules Type 25 (Bypass) with Types 27 and 28
      with Fixed and Constant return flow data with LOSS 
      and returns to the river.
  			
  ex120C1= Test Case 1  Bypass to a Carrier then
  			Release to the River then 
  			Diversion from the River
  			
  ex120C2= Test Case 2  Bypass to an Admin Plan then
  			Release to a Carrier that is the souurce, then 
  			return to River, then the Destination  
  			
  ex120C3= Test Case 3; Bypass to an Admin Plan then
  			Release to a Carrier, then 
  			return to River, then the Destination
  			Direct diversion after returning from the river
  			
  ex120C4= Test Case 4; Bypass to an Admin Plan then
  			Release to a Carrier, then
  			return to River, then a reservoir
  			then a diversion destination
  			By exchange after returning to the river
      

./Colorado/HUP_Limit_20070927 Test a Type 41 rule that imposes an annual limit 
      on releases tied to this rule

ex121 Test South Platte Compact

ex122
  ex122P  Type 27 Plan to a Carrier (Dem_Tunnel) Direct 
  ex122P2 Type 27 Plan to two Carriers (Dem_Tunnel & Carrier) Direct      
  ex122C  Type 28 releasing from an admin plan

ex123 Test Type 48 
  ex123R Reservoir to an Augmentation Plan Direct Release
  ex123Rch Well Augmentation Requirement supplied by a Reservoir Seepage (type 48)

ex124 Test Type 49 Recharge Reservoir to an Augmentation Plan by Exchange
  ex124R Reservoir to an Augmentation Plan Direct Release

ex125 Test Type 40 & 50; South Platte Compact

ex126 Baseflow with a diversion to recharge file (*.dre)

ex127 Direct flow exchange (24) to a plan that spills; where the spill location
      is downstream of the plan that spills 
     ex127D
     Ex127D2
     EX127P   TYPE 24 Operating Rule EXCHANGE from a right
              located at Dem_1 to a plan located upstream at 614_Pln
              Demonstrates ability to route a spill downstream of the plan node
     EX127P2
      
Ex128 Instream Flow with multiple water Rights
      Copied example 1
      
Ex129 Type 45 Carrier to the River to a Diversion
     ex129D Multiple Carriers - divert to a carrier, release to the river, then divert to a diversion
     
_____________________________________________________________________

ex130 Type 26 Changed Water Right (Changed WR Plan type 13)
     ex130P   Type 26 Divert from a water right to a plan
              Type 46 Split Plan
              Type 29 Spill
     ex130P2  Type 26 Divert from a water right to a plan   Plan Type 13
              Type 46 Split Plan
              Type 27 Plan to a diversion direct
     ex130P3  Type 26 Divert from a water right to a plan.  Plan Type 13
              Type 28 Plan to a diversion by exchange
              Type 29 Spill 
     ex130P2X Same as ex130P2 but check oprlimit = 2, 3 & 4.  Plan type 13          
     ex130P3X Same as ex130P3 but check oprlimit = 2, 3 & 4. Plan Type 13        
            
_____________________________________________________________________

ex131 Type 26 Changed Water Right
     ex131P3  Type 26 Divert from a water right to a plan.  Plan Type 11
              Type 28 Plan to a diversion by exchange
              Type 29 Spill 

_____________________________________________________________________
 			
ex132 Type 24 Direct Water right to a Admin Plan (Type 11)
     ex132P   Type 24 Divert by a Direct Water right to a Admin Plan (Type 11)
              Type 27 Plan to a Diversion Direct
              Type 29 Spill
_____________________________________________________________________

ex133 Type 51 Flow Reservoir Control

_____________________________________________________________________
ex134 WWSP Operation

ex134D        
              1. Type 24 Exchange to Puebleo a WWSP Supply plan (14)
	            2. Type 25 Direct Flow Bypass to Pueblo and a WWSP Supply Plan (14)
              3. Type 45 Carrier to irrigate at Dem_Irr as part of a WWSP Supply Plan (14) and WWSP User Plan (15)
              
              4. Type 46 Split a WWSP Supply Plan (14) to various WWSP User Plans (15) (User_1, User_2, User_3)

              5. Type 27 Pueblo and WWSP User Plan (15) to a diversion (Dem_2) Direct
              6. Type 28 Pueblo and WWSP User Plan (15) to a diversion (Dem_Test) Exchange
              7. Type 27 Pueblo and WWSP User2 Plan_3 (15) to a diversion (Dem_Irr) Direct

              8. Type 29 Reset WWSP User 2 Plan_2

              9. Type 45 Carrier to a reservoir Res A and WWSP Supply Plan (14) 

             10. Type 34 Bookover Res A account 1 and WWSP User 3 Plan (15) to Res A account 2
             11. Type 29 Spill from Res A account 2

ex134D2 Same as ..\Ex134D but:

	      *.ddm Dem_irr in Dec = 3,500
	      *.opr Type 45 = priority 0.1
	      *.opr Type 28 commented out

_____________________________________________________________________

Ex135 John Martin 1980 Operating plan with:
Ex135         Monthly
              Type 53 JMStore, 
              Type 54 JMFlow 
              Type 52 Multi Reservoir Bookover for various 
              
Ex135D        Same as above but daily
_____________________________________________________________________

Ex136 Type 45 Divert from the river with a reservoir water right
              without a carrier to a Reservoir with a "spill order" that
              requires the diversion be limited to the amount
              stored in another account that will be spilled.
              
_____________________________________________________________________

Ex137 Type 45 Divert from the river with a diversion water right
              with or w/o a Carrier to a diversion that is limited
              to a type 51 Flow Reservoir control

_____________________________________________________________________

Ex138         Test reservoir reporting in *.xdd 
Ex138a Type 27 Test reservoir reporting in *.xdd for a direct reservoir 
               release to a to a direct diversion
Ex138b Type 28 Test reservoir reporting in *.xdd for an exchange from a
               reservoir to a direct diversion

