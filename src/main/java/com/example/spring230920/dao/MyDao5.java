package com.example.spring230920.dao;

import com.example.spring230920.domain.MyDto36;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import java.util.List;
import java.util.Map;

@Mapper
public interface MyDao5 {

    @Select("""
        <script>
            SELECT COUNT(*)
            FROM customers
            
            <if test = 'country != null'>
            WHERE country = #{country}
            </if>
        </script>
""")
    String select1(String country);

    @Select("""
<script>
SELECT CustomerName FROM customers

<if test = 'num == 10'>
    -- 수가 10이다
</if>
<if test = 'num != 10'>
    -- 수가 10이 아니다
</if>
<if test = 'num > 10'>
    -- 수가 10보다 크다
</if>
<if test = 'num lt 10'>
    -- 수가 10보다 작다
</if>

</script>
""")
    void select2(Integer num);

    @Select("""
    <script>
        SELECT customerName, contactName
        FROM customers
        
        <if test = 'code == 1'>
            WHERE customerName LIKE #{k}
        </if>
        <if test = 'code == 2'>
            WHERE contactName LIKE #{k}
        </if>
    </script>
""")
    List<Map<String, Object>> select3(Integer code, String k);

    @Select("""
<script>
SELECT COUNT(*) FROM customers
WHERE 
<if test = 'i gt 10'>
-- i가 10보다 큼
</if>
<if test = 'i lt 10'>
-- i가 10보다 작음
</if>
<if test = '(i gt 0) and (i lt 100)'>
-- i가 0보다 크고 100보다 작음
</if>
</script>
""")
    String select4(int i);

    @Select("""
            SELECT *
            FROM customers
            WHERE CustomerName > 'a';
            """)
    String select5();

    // CDATA : 문자로만 판단, 마크업 코드로 해석하지 말라!
    @Select("""
        <script>
            <![CDATA[
            SELECT *
            FROM customers
            WHERE CustomerName < 'a';
            ]]>
        </script>
""")
    String select6();

    @Select("""
    <script>
        SELECT *
        FROM customers
        WHERE 
            Country IN 
            <foreach collection="args" 
            item="elem" 
            separator=", "
            open="("
            close=")">
                #{elem}
            </foreach>
            
    </script>
    """)
    String select7(List args);

    @Select("""
        <script>
        SELECT *
        FROM customers
            <trim prefix="WHERE" prefixOverrides="OR">
                <foreach collection="args"
                        item="elem">
                    OR country = #{elem}
                </foreach>
            </trim>
        </script>
        
    """)
    String select8(List args);

    @Select("""
        <script>
            <bind name="alterkeyword" value="'%' + keyword + '%'"/>
            SELECT *
            FROM customers
            WHERE CustomerName LIKE #{alterkeyword}
        </script>
    """)
    String select9(String keyword);
    @Select("""
<script>
SELECT * FROM customers
WHERE
    <if test="word == 'abc'">
        -- word는 abc
    </if>
    <if test='word == "def"'>
        -- word는 def
    </if>
    <if test="word=='q'">
        -- word = q 이것은 오류다
    </if>
    <if test='word=="k"'>
        -- word = k
    </if>
</script>
""")
    String select10(String word);

    @Select("""
SELECT DISTINCT City
FROM customers
WHERE City IS NOT NULL AND City != ''
ORDER BY 1
""")
    List<String> listCustomerCity();
    @Select("""
SELECT DISTINCT country
FROM customers
WHERE country IS NOT NULL AND country != ''
ORDER BY 1
""")
    List<String> listCustomerCountry();

    @Select("""
        <script>
            SELECT CustomerName name, city, country
            FROM customers
                <trim prefix="WHERE">
                    <if test='type == "1"'>
                    city
                        <foreach collection="city" item="elem" 
                        open="IN(" separator="," close=")">
                        #{elem}
                        </foreach>
                    </if>
                    <if test='type == "2"'>
                    country
                        <foreach collection="country" item="elem" 
                        open="IN(" separator="," close=")">
                        #{elem}
                        </foreach>
                    </if>
                </trim>
            ORDER BY name, country, city
        </script>
    """)
    List<Map<String, Object>> listCustomer(MyDto36 dto);
}
