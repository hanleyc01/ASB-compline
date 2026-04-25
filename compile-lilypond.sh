# ── Convert pt to mm and write a LilyPond include ───────────────────────────
PT=$(cat linewidth.txt | sed 's/pt//')
MM=$(echo "scale=4; $PT * 0.352778" | bc)
echo "line-width = #(* $MM)" > psalms/line-width.ily
echo "line-width = #(* $MM)" > hymns/line-width.ily
echo "line-width = #(* $MM)" > antiphons/line-width.ily

# ── Compile LilyPond ─────────────────────────────────────────────────────────

## For the psalms
for psalm in psalm4 psalm31 psalm91 psalm134; do
    lilypond -o ./psalms/$psalm --pdf ./psalms/$psalm.ly
    pdfcrop ./psalms/$psalm.pdf
done

## For the hymns
for hymn in telucis intothy guideus nuncdim alleluia; do
    lilypond -o ./hymns/$hymn --pdf ./hymns/$hymn.ly
    pdfcrop ./hymns/$hymn.pdf
done

## For the antiphons
for antiphon in almaredem averegina salveregina; do
    lilypond -o ./antiphons/$antiphon --pdf ./antiphons/$antiphon.ly
    pdfcrop ./antiphons/$antiphon.pdf
done