-- string function
-- case conversion 
use world;
select name,continent,upper(name),lower(continent) from country;

-- concat
select name,continent,concat(continent,' ', 'regex') from country;

-- concat_ws 
select name,continent,concat_ws('--',continent,'regex') from country;

-- substring ==> character extract based on position 
select name,continent,substr(continent,3) from country; -- continent name start from 3 position

select name,substr(name,3,4) from country; -- continent name start from 3 position and take 4 charcter after 3 postion

select name,substr(name,-5,3) from country; 

select name,substr(name,1,1),substr(continent,1,1) from country where substr(name,1,1)=substr(continent,1,1); 

select name,continent from country
	where substr(name,1,3)='ALG';
    
select name,continent from country
	where name like 'Alg%';

-- instr ==> search position of character
select name,continent,instr(name,'e') from country;

-- char_length
select name ,char_length(name) from country;

-- trim (extra space ) ya CHARACTER remove krna
-- ltrim left side se hta ta hai
-- rtrim sirf se right se tayega

select char_length('    yash    ');

select trim('    yash    ');

select trim(both 'g' from '   yaggshgggg'); -- remove space and last g

select name ,trim(both 'a' from name) from country;
select name ,trim(both 'A' from name) from country;

-- lpad and rpad ==> fixed size charcter banana
select name,population,lpad(population,9,'0') from country;

select name,population,rpad(population,9,'0') from country;
