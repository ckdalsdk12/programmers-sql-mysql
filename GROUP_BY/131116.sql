SELECT CATEGORY, PRICE, PRODUCT_NAME
FROM FOOD_PRODUCT
-- 식품분류별 가격이 제일 비싼 식품은 WHERE절에서 서브 쿼리로 분류.
WHERE PRICE IN (SELECT MAX(PRICE) FROM FOOD_PRODUCT GROUP BY CATEGORY) 
AND CATEGORY IN ('과자', '국', '김치', '식용유')
GROUP BY CATEGORY
ORDER BY PRICE DESC