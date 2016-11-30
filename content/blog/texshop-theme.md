+++
title = "iA Writer inspired theme for TeXShop"
draft = false
date = "2016-11-30T16:31:24+01:00"
+++

I enjoy writing using Markdown and [iA Writer](https://ia.net/de/writer) because of its appealing UI and the focus on nothing but the content.
Yet, when it comes to writing scientific articles the missing support for citations and cross-referencing draws me back to LaTeX. 

My editor-of-choice is [TexShop](http://pages.uoregon.edu/koch/texshop/) which works well for me, except, the default color scheme makes it exhausting to work for long hours due to the bright colors, hard contrasts and small font. That's why I tried to immitate the visuals of iA Writer in TexShop.

Here is the catch: TexShop is rather limited when it comes to theming. It is only possible to define a few colors and the general font. To truly mimick iA Writer, it would also be necessary to define a different font-face for various elements. Moreover, iA Writer uses a font called [*Nitti Light*](https://www.boldmonday.com/typeface/nitti/), which is not available for free. Luckily, [someone found](https://plus.google.com/+GerdKortuem/posts/NZazy3hM37j) the Google Font [*Cousine*](https://fonts.google.com/specimen/Cousine) to be a good free alternative. 

Given the limitations of TexShop, I am pleased with the result. 
![Make TexShop look like iA Writer](img/texshop_iawriter_theme.png)

If you want to make TexShop look a little bit more like iA Writer perform the following steps:

1. In *TexShop Preferences* set the document font to **16pt** **Nitti** or [**Cousine**](https://fonts.google.com/specimen/Cousine) .
1. Execute the following commands in the OS X Terminal.app or [download the sourcefile from Gist](https://gist.github.com/cmanteuffel/ff53c0ac251089369a310eeaec301fb7). The colors are based on the *Digital Color Meter* and [this blog post](http://hypertext.net/2011/06/mimic-writer-aesthetic/).

.
	
	#! /bin/bash	
	defaults write TeXShop background_R 0.9647058824
	defaults write TeXShop background_G 0.9647058824
	defaults write TeXShop background_B 0.9647058824

	defaults write TeXShop commandred 0.08235294118
	defaults write TeXShop commandgreen 0.7098039216
	defaults write TeXShop commandblue 0.9137254902

	defaults write TeXShop commentred 0.7529411765
	defaults write TeXShop commentgreen 0.7411764706
	defaults write TeXShop commentblue 0.7294117647

	defaults write TeXShop foreground_R 0.2588235294
	defaults write TeXShop foreground_G 0.2588235294
	defaults write TeXShop foreground_B 0.2588235294

	defaults write TeXShop indexred 1.00
	defaults write TeXShop indexgreen 1.00
	defaults write TeXShop indexblue 0.00

	defaults write TeXShop insertionpoint_R 0.08235294118
	defaults write TeXShop insertionpoint_G 0.7098039216
	defaults write TeXShop insertionpoint_B 0.9137254902

	defaults write TeXShop markerred 0.00
	defaults write TeXShop markergreen 0.00
	defaults write TeXShop markerblue 0.00


If you don't like what you see, [you can easily restore the default theme](https://github.com/altercation/solarized/issues/167).

