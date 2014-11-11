
* univariate linear regression WITHOUT log transformation
local age "kaaluiive28 kaaluiive133 kaaluiive175"
local nimekiri "hapto7-hapto28 saa_17-saa_128 ggt7-ggt28 tp7-tp28 alb7-alb28 mo_saa7-mo_saa28 mo_hp7-mo_hp28"
foreach i of varlist `nimekiri'{
	foreach j of varlist `age'{
                xi:reg `j' `i' i.sex 
        }
}		

* univariate linear regression WITHOUT log transformation
local age "kaaluiive28 kaaluiive133 kaaluiive175"
local nimekiri "hapto7-hapto28 saa_17-saa_128 ggt7-ggt28 tp7-tp28 alb7-alb28"
foreach i of varlist `nimekiri'{
	foreach j of varlist `age'{
                xi:reg `j' `i' i.sex i.aasta
        }
}		
		
* log transformation of saa_1, mo_saa, mo_hapto and hapto - generating new variables
local log_trans "saa_17-saa_128"
foreach i of varlist `log_trans'{
		gen log_`i' = log(`i')
		}

local log_trans "hapto7-hapto28"
foreach i of varlist `log_trans'{
		gen log_`i' = log(`i')
		}	

local log_trans "mo_saa7-mo_saa28"
foreach i of varlist `log_trans'{
		gen log_`i' = log(`i')
		}			
		
local log_trans "mo_hp7-mo_hp28"
foreach i of varlist `log_trans'{
		gen log_`i' = log(`i')
		}			
		
* univariate linear regression WITH log transformed variables
local age "kaaluiive28 kaaluiive133 kaaluiive175"
local nimekiri "log_hapto7-log_hapto28 log_saa_17-log_saa_128 log_mo_saa7-log_mo_saa28 log_mo_hp7-log_mo_hp28"
foreach i of varlist `nimekiri'{
	foreach j of varlist `age'{
                xi:reg `j' `i' i.sex
        }
}

 * ln transformation of saa_1, mo_saa, mo_hapto and hapto - generating new variables
local ln_trans "saa_17-saa_128"
foreach i of varlist `ln_trans'{
		gen ln_`i' = ln(`i')
		}

local ln_trans "hapto7-hapto28"
foreach i of varlist `ln_trans'{
		gen ln_`i' = ln(`i')
		}	

local ln_trans "mo_saa7-mo_saa28"
foreach i of varlist `ln_trans'{
		gen ln_`i' = ln(`i')
		}			
		
local ln_trans "mo_hp7-mo_hp28"
foreach i of varlist `ln_trans'{
		gen ln_`i' = ln(`i')
		}			
		
* univariate linear regression WITH ln transformed variables
local age "kaaluiive28 kaaluiive133 kaaluiive175"
local nimekiri "ln_hapto7-ln_hapto28 ln_saa_17-ln_saa_128 ln_mo_saa7-ln_mo_saa28 ln_mo_hp7-ln_mo_hp28"
foreach i of varlist `nimekiri'{
	foreach j of varlist `age'{
                xi:reg `j' `i' i.sex
        }
}

 * sqrt transformation of saa_1, mo_saa, mo_hapto and hapto - generating new variables
local sqrt_trans "saa_17-saa_128"
foreach i of varlist `sqrt_trans'{
		gen sqrt_`i' = sqrt(`i')
		}

local sqrt_trans "hapto7-hapto28"
foreach i of varlist `sqrt_trans'{
		gen sqrt_`i' = sqrt(`i')
		}	

local sqrt_trans "mo_saa7-mo_saa28"
foreach i of varlist `sqrt_trans'{
		gen sqrt_`i' = sqrt(`i')
		}			
		
local sqrt_trans "mo_hp7-mo_hp28"
foreach i of varlist `sqrt_trans'{
		gen sqrt_`i' = sqrt(`i')
		}			
		
* univariate linear regression WITH ln  SQRT transformed variables
local age "kaaluiive28 kaaluiive133 kaaluiive175"
local nimekiri "sqrt_hapto7-sqrt_hapto28 sqrt_saa_17-sqrt_saa_128 sqrt_mo_saa7-sqrt_mo_saa28 sqrt_mo_hp7-sqrt_mo_hp28"
foreach i of varlist `nimekiri'{
	foreach j of varlist `age'{
                xi:reg `j' `i' i.sex
        }
}

 
 * STEPWISE ELIMINATION

* piir = elimination level
* age = determines which kaaluiive age groups are included.
* results = choose the CORRECT TRANSFORMATION of results

global piir 0.2
global age "kaaluiive28 kaaluiive133 kaaluiive175"
*log transformation
global results7 "log_hapto7 log_saa_17 ggt7 tp7 alb7"
global results14 "log_hapto14 log_saa_114 ggt14 tp14 alb14"
global results21 "log_hapto21 log_saa_121 ggt21 tp21 alb21"
global results28 "log_hapto28 log_saa_128 ggt28 tp28 alb28"
*ln transformation
global results7 "hapto7 saa_17 ggt7 tp7 alb7"
global results14 "hapto14 saa_114 ggt14 tp14 alb14"
global results21 "hapto21 saa_121 ggt21 tp21 alb21"
global results28 "hapto28 saa_128 ggt28 tp28 alb28"
*sqrt transformation
global results7 "sqrt_hapto7 sqrt_saa_17 ggt7 tp7 alb7"
global results14 "sqrt_hapto14 sqrt_saa_114 ggt14 tp14 alb14"
global results21 "sqrt_hapto21 sqrt_saa_121 ggt21 tp21 alb21"
global results28 "sqrt_hapto28 sqrt_saa_128 ggt28 tp28 alb28"

 foreach i of varlist $age{
		stepwise, pr($piir) pe(0.1)  lockterm1 : regress `i' (sex) $results7
		stepwise, pr($piir) lockterm1 : regress `i' (sex) $results14
		stepwise, pr($piir) lockterm1 : regress `i' (sex) $results21
		stepwise, pr($piir) lockterm1 : regress `i' (sex) $results28
 }
 
 
  * STEPWISE ELIMINATION -  WITH MOTHERS DATA

* piir = elimination level
* age = determines which kaaluiive age groups are included.
* results = choose the CORRECT TRANSFORMATION of results

global piir 0.1
global age "kaaluiive28 kaaluiive133 kaaluiive175"
*log transformation
global results7 "log_hapto7 log_saa_17 ggt7 tp7 alb7 log_mo_saa7 log_mo_hp7"
global results14 "log_hapto14 log_saa_114 ggt14 tp14 alb14 log_mo_saa14 log_mo_hp14"
global results21 "log_hapto21 log_saa_121 ggt21 tp21 alb21 log_mo_saa21 log_mo_hp21"
global results28 "log_hapto28 log_saa_128 ggt28 tp28 alb28 log_mo_saa28 log_mo_hp28"
*ln transformation
global results7 "ln_hapto7 ln_saa_17 ggt7 tp7 alb7 ln_mo_saa7 ln_mo_hp7"
global results14 "ln_hapto14 ln_saa_114 ggt14 tp14 alb14 ln_mo_saa14 ln_mo_hp14"
global results21 "ln_hapto21 ln_saa_121 ggt21 tp21 alb21 ln_mo_saa21 ln_mo_hp21"
global results28 "ln_hapto28 ln_saa_128 ggt28 tp28 alb28 ln_mo_saa28 ln_mo_hp28"
*sqrt transformation
global results7 "sqrt_hapto7 sqrt_saa_17 ggt7 tp7 alb7 sqrt_mo_saa7 sqrt_mo_hp7"
global results14 "sqrt_hapto14 sqrt_saa_114 ggt14 tp14 alb14 sqrt_mo_saa14 sqrt_mo_hp14"
global results21 "sqrt_hapto21 sqrt_saa_121 ggt21 tp21 alb21 sqrt_mo_saa21 sqrt_mo_hp21"
global results28 "sqrt_hapto28 sqrt_saa_128 ggt28 tp28 alb28 sqrt_mo_saa28 sqrt_mo_hp28"

 foreach i of varlist $age{
		stepwise, pr($piir) lockterm1 : regress `i' (sex) $results7
		stepwise, pr($piir) lockterm1 : regress `i' (sex) $results14
		stepwise, pr($piir) lockterm1 : regress `i' (sex) $results21
		stepwise, pr($piir) lockterm1 : regress `i' (sex) $results28
 }
 
 
 
 
 