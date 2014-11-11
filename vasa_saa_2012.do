
## LYHIKE JA PAKS

saa_17 saa_114 saa_121 saa_128
hapto7 hapto14 hapto21 hapto28
ggt7 ggt14 ggt21 ggt28
tp7 tp14 tp21 tp28
alb7 alb14 alb21 alb28

kaaluiive14 kaaluiive21 kaaluiive28 kaaluiive133 kaaluiive175

# delimit ; 
xi:regress kaaluiive28 
saa_17 saa_114 saa_121 saa_128
hapto7 hapto14 hapto21 hapto28
ggt7 ggt14 ggt21 ggt28
tp7 tp14 tp21 tp28
alb7 alb14 alb21 alb28 
sex;

# delimit ; 
xi:regress kaaluiive175 
saa_17 saa_114 saa_121 saa_128
hapto7 hapto14 hapto21 hapto28
ggt7 ggt14 ggt21 ggt28
tp7 tp14 tp21 tp28
alb7 alb14 alb21 alb28 
sex;

# delimit ; 
stepwise,  pr(0.1) lockterm1 : regress kaaluiive28 (sex) 
hapto7 hapto14 hapto21 hapto28 
saa_17 saa_114 saa_121 saa_128 
ggt7 ggt14 ggt21 ggt28
 tp7 tp14 tp21 tp28
 alb7 alb14 alb21 alb28;

 # delimit ; 
stepwise, pe (0.2)  lockterm1 : regress kaaluiive28 (sex) 
hapto7  
saa_17
ggt7 
 tp7 
 alb7 ;

 # delimit ; 
stepwise, pe (0.2)  lockterm1 : regress kaaluiive133 (sex) 
hapto7  
saa_17
ggt7 
 tp7 
 alb7 ;

  # delimit ; 
stepwise, pr (0.2)  lockterm1 : regress kaaluiive175 (sex) 
hapto7  
saa_17
ggt7 
 tp7 
 alb7 ;
 
 
     # delimit ; 
stepwise, pr (0.2)  lockterm1 : regress kaaluiive28 (sex) 
hapto14  
saa_114
ggt14 
 tp14 
 alb14 ;
 
    # delimit ; 
stepwise, pr (0.2)  lockterm1 : regress kaaluiive133 (sex) 
hapto14  
saa_114
ggt14 
 tp14 
 alb14 ;

   # delimit ; 
stepwise, pr (0.2)  lockterm1 : regress kaaluiive175 (sex) 
hapto14  
saa_114
ggt14 
 tp14 
 alb14 ;
 
      # delimit ; 
stepwise, pr (0.2)  lockterm1 : regress kaaluiive28 (sex) 
hapto21  
saa_121
ggt21 
 tp21 
 alb21 ;
 
      # delimit ; 
stepwise, pr (0.2)  lockterm1 : regress kaaluiive133 (sex) 
hapto21  
saa_121
ggt21 
 tp21 
 alb21 ; 
 
       # delimit ; 
stepwise, pr (0.2)  lockterm1 : regress kaaluiive175 (sex) 
hapto21  
saa_121
ggt21 
 tp21 
 alb21 ; 
 
       # delimit ; 
stepwise, pr (0.2)  lockterm1 : regress kaaluiive175 (sex) 
hapto28  
saa_128
ggt28 
 tp28 
 alb28 ; 
 
 
# delimit ; 
stepwise,  pr(0.2) lockterm1 : regress kaaluiive175 (sex) 
hapto7 hapto14 hapto21 hapto28 
saa_17 saa_114 saa_121 saa_128 
ggt7 ggt14 ggt21 ggt28
 tp7 tp14 tp21 tp28
 alb14 alb21 ;

 
 
 
 
 
## PIKK JA PEENIKE

xi:regress iive63 saa   if vanusmardatud==7
xi:regress iive63 i.sugu   if vanusmardatud==7
xi:regress iive63 saa  i.sugu if vanusmardatud==7
xi:regress iive63 saa i.sugu if vanusmardatud==14
xi:regress iive63 saa i.sugu if vanusmardatud==21
xi:regress iive63 saa i.sugu if vanusmardatud==28
xi:regress iive63 saa i.sugu if vanusmardatud==35
xi:regress iive63 saa i.sugu if vanusmardatud==42
xi:regress iive63 saa i.sugu if vanusmardatud==49
xi:regress iive63 saa i.sugu if vanusmardatud==56
xi:regress iive63 saa i.sugu if vanusmardatud==63

gen saa_2=saa*saa

gladder saa
gen saa_sqrt=sqrt(saa)
gen saa_ln=log(saa)

gladder saa_1
gen saa_sqrt_1=sqrt(saa_1)
gen saa_ln_1=log(saa_1)

gladder hapto
gen hp_ln=log(hapto)
gen hp_sqrt=sqrt(hapto)


xi:regress i14 i.aasta saa_sqrt_1 i.sugu if vanus_ryhm==7
xi:regress i14 i.aasta saa_sqrt_1 i.sugu if vanus_ryhm==14

xi:regress i21 i.aasta saa_sqrt_1 i.sugu if vanus_ryhm==7
xi:regress i21 i.aasta saa_sqrt_1 i.sugu if vanus_ryhm==14
xi:regress i21 i.aasta saa_sqrt_1 i.sugu if vanus_ryhm==21

xi:regress i28 i.aasta saa_1 i.sugu if vanus_ryhm==7
xi:regress i28 i.aasta saa_1 i.sugu if vanus_ryhm==14
xi:regress i28 i.aasta saa_1 i.sugu if vanus_ryhm==21
xi:regress i28 i.aasta saa_1 i.sugu if vanus_ryhm==28

xi:regress i49_1 i.aasta saa_sqrt_1 i.sugu if vanus_ryhm==7
xi:regress i49_1 i.aasta saa_sqrt_1 i.sugu if vanus_ryhm==14
xi:regress i49_1 i.aasta saa_sqrt_1 i.sugu if vanus_ryhm==21
xi:regress i49_1 i.aasta saa_sqrt_1 i.sugu if vanus_ryhm==28

xi:regress i63_1 i.aasta saa_sqrt_1 i.sugu if vanus_ryhm==7
xi:regress i63_1 i.aasta saa_sqrt_1 i.sugu if vanus_ryhm==14
xi:regress i63_1 i.aasta saa_sqrt_1 i.sugu if vanus_ryhm==21
xi:regress i63_1 i.aasta saa_sqrt_1 i.sugu if vanus_ryhm==28



xi:regress i133_1 i.aasta saa_sqrt_1 i.sugu if vanus_ryhm==7
xi:regress i133_1 i.aasta saa_sqrt_1 i.sugu if vanus_ryhm==14
xi:regress i133_1 i.aasta saa_sqrt_1 i.sugu if vanus_ryhm==21
xi:regress i133_1 i.aasta saa_sqrt_1 i.sugu if vanus_ryhm==28

xi:regress i175_1 i.aasta saa_sqrt_1 i.sugu if vanus_ryhm==7
xi:regress i175_1 i.aasta saa_sqrt_1 i.sugu if vanus_ryhm==14
xi:regress i175_1 i.aasta saa_sqrt_1 i.sugu if vanus_ryhm==21
xi:regress i175_1 i.aasta  vanus saa_1  i175_age i.sugu if vanus_ryhm==28

gen v_saa=vanus*saa_sqrt_1

xi:regress i175_1 i.aasta i.sugu*saa_sqrt_1  if vanus_ryhm==28

xi:regress i203 i.aasta saa_sqrt_1 i.sugu if vanus_ryhm==7
xi:regress i203 i.aasta saa_sqrt_1 i.sugu if vanus_ryhm==14
xi:regress i203 i.aasta saa_sqrt_1 i.sugu if vanus_ryhm==21
xi:regress i203 i.aasta saa_sqrt_1 i.sugu if vanus_ryhm==28



xi:regress i133_1 i.aasta hp_ln i.sugu if vanus_ryhm==7
xi:regress i133_1 i.aasta hp_ln i.sugu if vanus_ryhm==14
xi:regress i133_1 i.aasta hp_ln i.sugu if vanus_ryhm==21
xi:regress i133_1 i.aasta hp_ln i.sugu if vanus_ryhm==28

xi:regress i14 i.aasta hp_ln i.sugu if vanus_ryhm==7
xi:regress i14 i.aasta hp_ln i.sugu if vanus_ryhm==14

xi:regress i21 i.aasta*hp_ln i.sugu if vanus_ryhm==7
xi:regress i21 i.aasta hp_ln i.sugu if vanus_ryhm==14
xi:regress i21 i.aasta hp_ln i.sugu if vanus_ryhm==21

xi:regress i28 i.aasta hapto i.sugu if vanus_ryhm==7
xi:regress i28 i.aasta hapto i.sugu if vanus_ryhm==14
xi:regress i28 i.aasta hapto i.sugu if vanus_ryhm==21
xi:regress i28 i.aasta hapto i.sugu if vanus_ryhm==28

xi:regress i175_1 i.aasta*hp_ln i.sugu if vanus_ryhm==7
xi:regress i175_1 i.aasta*hp_ln i.sugu if vanus_ryhm==14
xi:regress i175_1 i.aasta*hp_ln i.sugu if vanus_ryhm==21
xi:regress i175_1 i.aasta*hp_ln i.sugu if vanus_ryhm==28

xi:regress i175_1 i.aasta hp_ln i.sugu if vanus_ryhm==7
xi:regress i175_1 i.aasta hp_ln i.sugu if vanus_ryhm==14
xi:regress i175_1 i.aasta hp_ln  i.sugu if vanus_ryhm==21
xi:regress i175_1 i.aasta hp_ln vanus i.sugu if vanus_ryhm==28

xi:regress i175_1 i.aasta hapto i175_age i.sugu if vanus_ryhm==21
xi:regress i175_1 i.aasta hapto i175_age i.sugu if vanus_ryhm==28

summarize hapto  if  vanus_ryhm==21, detail
egen hapto_21_f=cut (hapto), at (0 659.18 765.91 835.01 99999999999) icode
codebook hapto_21_f if vanus_ryhm==21

xi:regress i175_1 i.aasta i.hapto_21_f  i.sugu if vanus_ryhm==21

xi:regress i175_1 i.aasta hp_sqrt  i.sugu if vanus_ryhm==21
xi:regress i175_1 i.aasta hp_sqrt  i.sugu if vanus_ryhm==28

gen hp_ln_vanus=hp_ln*vanus
gen vanus_2=vanus*vanus

gen age_2=age*age
gen age_3=age*age*age


xi:regress saa_sqrt i.sugu*age i.sugu*age_2 i.sugu*age_3

xi:regress saa_sqrt i.sugu age age_2 age_3

xi:regress saa_sqrt  age 

gladder tp

xi:regress i28 i.aasta tp i.sugu if vanus_ryhm==7
xi:regress i28 i.aasta tp i.sugu if vanus_ryhm==14
xi:regress i28 i.aasta tp i.sugu if vanus_ryhm==21
xi:regress i28 i.aasta tp i.sugu if vanus_ryhm==28

xi:regress i133_1 i.aasta tp i.sugu if vanus_ryhm==7
xi:regress i133_1 i.aasta tp i.sugu if vanus_ryhm==14
xi:regress i133_1 i.aasta tp i.sugu if vanus_ryhm==21
xi:regress i133_1 i.aasta tp i.sugu if vanus_ryhm==28

xi:regress i175_1 i.aasta tp i.sugu if vanus_ryhm==7
xi:regress i175_1 i.aasta tp i.sugu if vanus_ryhm==14
xi:regress i175_1 i.aasta tp i.sugu if vanus_ryhm==21
xi:regress i175_1 i.aasta  tp   i.sugu if vanus_ryhm==28

xi:regress i28 i.aasta alb i.sugu if vanus_ryhm==7
xi:regress i28 i.aasta alb i.sugu if vanus_ryhm==14
xi:regress i28 i.aasta alb i.sugu if vanus_ryhm==21
xi:regress i28 i.aasta alb i.sugu if vanus_ryhm==28

xi:regress i133_1 i.aasta alb i.sugu if vanus_ryhm==7
xi:regress i133_1 i.aasta alb i.sugu if vanus_ryhm==14
xi:regress i133_1 i.aasta alb i.sugu if vanus_ryhm==21
xi:regress i133_1 i.aasta alb i.sugu if vanus_ryhm==28

xi:regress i175_1 i.aasta alb i.sugu if vanus_ryhm==7
xi:regress i175_1 i.aasta alb i.sugu if vanus_ryhm==14
xi:regress i175_1 i.aasta alb i.sugu if vanus_ryhm==21
xi:regress i175_1 i.aasta  alb i.sugu if vanus_ryhm==28

xi:regress i28 i.aasta ggt i.sugu if vanus_ryhm==7
xi:regress i28 i.aasta ggt i.sugu if vanus_ryhm==14
xi:regress i28 i.aasta ggt i.sugu if vanus_ryhm==21
xi:regress i28 i.aasta ggt i.sugu if vanus_ryhm==28

xi:regress i133_1 i.aasta ggt i.sugu if vanus_ryhm==7
xi:regress i133_1 i.aasta ggt i.sugu if vanus_ryhm==14
xi:regress i133_1 i.aasta ggt i.sugu if vanus_ryhm==21
xi:regress i133_1 i.aasta ggt i.sugu if vanus_ryhm==28

xi:regress i175_1 i.aasta ggt i.sugu if vanus_ryhm==7
xi:regress i175_1 i.aasta ggt i.sugu if vanus_ryhm==14
xi:regress i175_1 i.aasta ggt i.sugu if vanus_ryhm==21
xi:regress i175_1 i.aasta  ggt i.sugu if vanus_ryhm==28































