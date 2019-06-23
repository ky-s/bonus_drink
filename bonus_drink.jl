function bonusdrink(n, total = 0, rem = 0)
    (n + rem) < 3 && return n + total

    new, new_rem = divrem(n + rem, 3)
    bonusdrink(new, n + total, new_rem)
end

@assert   0 == bonusdrink(  0)
@assert   1 == bonusdrink(  1)
@assert   4 == bonusdrink(  3)
@assert  16 == bonusdrink( 11)
@assert 149 == bonusdrink(100)
