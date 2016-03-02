#!/usr/bin/python

from scipy import ndimage
import pylab as pl
from scipy import misc
#lena = misc.lena()
lena = misc.ascent()
shifted_lena = ndimage.shift(lena, (50, 50)) 
shifted_lena2 = ndimage.shift(lena, (50, 50), mode='nearest')
rotated_lena = ndimage.rotate(lena, 30)
cropped_lena = lena[50:-50, 50:-50]
zoomed_lena = ndimage.zoom(lena, 2)
pl.subplot(151)
pl.imshow(shifted_lena, cmap=pl.cm.gray)
pl.axis('off')
pl.subplot(152)
pl.imshow(shifted_lena2, cmap=pl.cm.gray)
pl.axis('off')
pl.subplot(153)
pl.imshow(rotated_lena, cmap=pl.cm.gray)
pl.axis('off')
pl.subplot(154)
pl.imshow(cropped_lena, cmap=pl.cm.gray)
pl.axis('off')
pl.subplot(155)
pl.imshow(zoomed_lena, cmap=pl.cm.gray)
pl.axis('off')
pl.savefig("LENA")
