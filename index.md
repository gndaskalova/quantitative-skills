<center><img src="{{ site.baseurl }}/CodingClub_logo2.png" alt="Img"></center>

## Practical approaches to Assessment in the Sciences
### University of Edinburgh symposium 22nd Feb 2018


### Tutorial Aims

#### <a href="#section1"> 1. Evaluate your quantitative skills</a>

#### <a href="#section2"> 2. Learn about Coding Club</a>

#### <a href="#section3"> 3. Re-evaluate your quantitative skills</a>

<a name="section1"></a>


## 1. Evaluate your quantitative skills
Today over 50 of us have gathered for the University of Edinburgh Practical approaches to Assessment in the Sciences symposium. We come from many different disciplines, including:

 - Ecology
 - Environmental science
 - Chemistry
 - Biology
 - Engineering
 - Physics
 - Informatics
 - Ecology
 - Medicine
 - Veterinary
 - Maths
 - Psychology
 - Neuroscience
 - Interdisciplinary research and studies
 - Philosophy

 
__We asked ourselves:__
 
 
__How quantitative do you think you are relative to your peers?__
 
 
We all closed our eyes (except the one person counting) and voted on a scale of 0 to 10. Five means you are equivalent to your peers. Zero means you feel way behind and you think you have no quantitative skills. Ten means you think you'll win the Field medal next year, because your quantitative skills are outstanding.

So what did we find? We quickly put the data together and made this graph of the results:

<center> <img src="{{ site.baseurl }}/before_scores.png" alt="Img" style="width: 700px;"/> </center>

You can find the data from our speed survey in the <a href="https://github.com/gndaskalova/quantitative-skills" target="_blank">GitHub repository</a> for this tutorial. Here is the code we used to create our graph:

```r
# How do we perceive our quantitative skills?
# University of Edinburgh symposium 22nd Feb
# The Coding Club Team

library(ggplot2)

# Load data from the repository

# Before the workshop
ggplot(results, aes(Score)) +
  geom_density(alpha = 0.5, colour = "cyan4", fill = "cyan3") +
  scale_x_continuous(limits = c(0, 10)) +
  theme_classic()
```

<a name="section2"></a>

We learned that our perceptions of our own quantitative skills relative to our peers is pretty much centred on the value 5 - about the same as our peers!


## 2. Learn about Coding Club

Next we learned about Coding Club!

Coding Club aims to create a supportive peer-to-peer community to advance quantitative skills among scientists at all career stages. We combine in-person workshops with <a href="https://ourcodingclub.github.io/" target="_blank">online tutorials</a> to promote statistical and programming fluency in the programming language R. We want to combat statistics anxiety and code fear to facilitate career progression and life-long learning. Coding Club workshops are free and open to all and represent a judgement-free opportunity for people to acquire a skill set tailored to their scientific needs.

<a name="section3"></a>


## 3. Re-evaluate your quantitative skills

__Can thinking about quantitative training change your perception of your own quantitative skills?__

After thinking about the Coding Club initiative for about 10 minutes, we closed our eyes once more and re-evaluated our skills. What did we find?

<center> <img src="{{ site.baseurl }}/after.png" alt="Img" style="width: 700px;"/> </center>

Here is the code for our updated graph:

```r
# Compare perception of quantitative skills before and after workshop
ggplot(results, aes(score, fill = Time, colour = Time)) +
  geom_density(alpha = 0.5) +
  scale_x_continuous(limits = c(0, 10)) +
  theme_classic()
```

We found that our perceptions of how quantitative we are relative to our peers declined!!! This was counter to our hypothesis that thinking about how to enhance quantitative skills would increase our own quantitative skills. Why could this be? Our survey was not perhaps the most effective study design, but maybe this suggests that thinking about quantitative training makes us think about the skills that we still have to learn? Or maybe hearing from some inspiring undergrads who are embracing coding and quantitative skills, makes people further along in their careers feel like they might be out of date in their training. We hope that this little experiment emphasised that we all have something to learn regardless of how quantitative we perceive ourselves!


__To find out more about Coding Club, check out our <a href="https://ourcodingclub.github.io" target="_blank">website</a>, where you can find many online tutorial and information on how to get involved.__

__To learn how to create online tutorials like this one, check out our <a href="https://ourcodingclub.github.io/2017/11/23/tutorials.html" target="_blank">tutorial on sharing quantitative skills among scientists</a>.__

<hr>
<hr>

#### Check out our <a href="https://ourcodingclub.github.io/links/" target="_blank">Useful links</a> page where you can find loads of guides and cheatsheets.

#### If you have any questions about completing this tutorial, please contact us on ourcodingclub@gmail.com

#### <a href="INSERT_SURVEY_LINK" target="_blank">We would love to hear your feedback on the tutorial, whether you did it in the classroom or online!</a>

<ul class="social-icons">
	<li>
		<h3>
			<a href="https://twitter.com/our_codingclub" target="_blank">&nbsp;Follow our coding adventures on Twitter! <i class="fa fa-twitter"></i></a>
		</h3>
	</li>
</ul>

### &nbsp;&nbsp;Subscribe to our mailing list:
<div class="container">
	<div class="block">
        <!-- subscribe form start -->
		<div class="form-group">
			<form action="https://getsimpleform.com/messages?form_api_token=de1ba2f2f947822946fb6e835437ec78" method="post">
			<div class="form-group">
				<input type='text' class="form-control" name='Email' placeholder="Email" required/>
			</div>
			<div>
                        	<button class="btn btn-default" type='submit'>Subscribe</button>
                    	</div>
                	</form>
		</div>
	</div>
</div>
