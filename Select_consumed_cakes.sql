SELECT
    c.cake,
    i.consumed AS icing_consumed,
    s.sprinkle,
    s.consumed AS sprinkle_consumed
FROM
    tbl_cakes as c
    INNER JOIN tbl_icings i ON c.fk_icing = i.pk_id
    AND i.consumed = 0
    INNER JOIN tbl_reserved_sprinkles rs ON rs.fk_cake = c.pk_id
    INNER JOIN tbl_sprinkles s ON s.pk_id = rs.fk_sprinkle
WHERE
    3 = (
        SELECT
            count(*)
        FROM
            tbl_reserved_sprinkles rs
            INNER JOIN tbl_sprinkles s ON rs.fk_cake = c.pk_id
            AND s.pk_id = rs.fk_sprinkle
            AND s.consumed = 0
    )
ORDER BY
    c.pk_id ASC