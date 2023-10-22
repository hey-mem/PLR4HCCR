# 实验数据集构建

实验所用于一阶、二阶、三阶推荐的数据集，是根据mashup调用API情况构建，例如现在有Mashup，它的调用API情况如下表所示

Mashup| 调用的API
-------- | -----
LocEight DATA| Flickr, Google AdWords, Google Maps, GeoNames

我们可以根据上面这个mashup构建用于一阶推荐、二阶推荐、三阶推荐的数据集，如下表所示
一阶推荐数据集|
---- | 
(Flickr) -> (Google AdWords, Google Maps, GeoNames)
(Google AdWords) -> (Flickr, Google Maps, GeoNames)
(Google Maps) -> (Flickr, Google AdWords, GeoNames)
(GeoNames) -> (Flickr, Google AdWords, Google Maps)

二阶推荐数据集|
---- | 
( Flickr, Google AdWords) -> (Google Maps, GeoNames)
( Flickr, Google Maps) -> ( Google AdWords, GeoNames)
( Flickr, GeoNames) -> ( Google AdWords, Google Maps)
( Google AdWords, Google Maps) -> (Flickr, GeoNames)
( Google AdWords, GeoNames) -> (Flickr, Google Maps)
( Google Maps, GeoNames) -> (Flickr, Google AdWords)

三阶推荐数据集|
---- | 
(Flickr, Google AdWords, Google Maps) -> (GeoNames)
(Google AdWords, Google Maps, GeoNames) -> (Flickr)
(Flickr, Google Maps, GeoNames) -> (Google AdWords)
(Flickr, Google AdWords, GeoNames) -> (Google Maps)

将所有Mashup都根据其调用API情况按照上面的思路处理，最终会得到所有用于一阶、二阶、三阶推荐的数据集。
