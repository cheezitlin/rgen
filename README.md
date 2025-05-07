i dont know what to put here, so here is an installation tutorial.

***installing***

**step 1: cloning the repo**

run this:
```
git clone https://github.com/cheezitlin/rgen.git
```
then CD to where it was cloned.
******
**step 2: installing rgen**

run this:
```
sudo sh instrgen.sh
```
and let it copy rgen to  /usr/bin.
******
thats it, your done. its installed.

***how to use rgen:***
******
**to generate a random number, run this:**
```
rgen num -min <minimumnum> -max <maximumnum> 
```
*for example:*
```
rgen num -min 1 -max 100
```
the output i got, was 15.

**to generate a random string of letters & numbers, run this:**
```
rgen txt -l <length>
```
*replace length with the length of the audio you want to use*

*for example:*
```
rgen txt -l 10
```

the output i got, was rjcOIvYSB5.

******
