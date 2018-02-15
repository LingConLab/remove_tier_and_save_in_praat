# This is a Praat script that selects all tiers in Praat objects list, remove some tier in all of them, and then save all of them.

# This script is distributed under the GNU General Public License.
# George Moroz 15.02.2018

form Remove tier from all TextGrids
	comment Choose a path:
	text Path /home/agricolamz/work/materials/2018_I_18.02.15 Vasilisa/test/
	comment Choose a tier to remove:
	positive Replace 2
endform

select all
Remove tier: replace
n = numberOfSelected ("TextGrid")
for i to n
	selectObject: "TextGrid " + selected$ ("TextGrid", 1)
	name$ = selected$ ("TextGrid", 1)
	Save as text file: path$ + name$ + ".TextGrid"
	Remove
	select all
endfor
