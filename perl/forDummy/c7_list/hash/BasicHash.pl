#!/usr/bin/perl -w

# A program containing basic operations about hashmap.

%nullList = (); # 以%表示hashmap
%idList = (742 => 'Kathi Stennis', 5280 => 'Roberta Wallace', 3279 => 'Daniel Exon');
%street = ('pine' => '92484', 'North Elm' => '92481', 'River' => '92484');
print $idList{742} . "\n". $street{'pine'} . "\n"; # $mapName{keyName}:来获得map中的元素
print join(' ', %idList), "\n"; # hashmap中的记录是随机排列的

# 增加元素：如果不存在key则插入本条记录，如果存在则替换原来的记录
$nullList{555} = 'hello';
print $nullList{555} . " | ";
$nullList{555} = "world";
print $nullList{555} . "\n";

# delete(): 删除记录
delete($street{'North Elm'});

# keys(%name):获得map的key组成的list
@allkeys = sort(keys(%street));
print "All keys in \%street is ", join(' ', @allkeys), "\n";

# values(%name): 获得map的values组成的list，值可以重复，键唯一
@allvalues = sort(values(%street));
print "All values in \%street is ", join(' ', @allvalues), "\n";

# each(%name):取得map中的一条记录，当执行keys或values时，计数器重置
while (($theKey, $theVal) = each(%idList)) {
		print "$theKey is the key for $theVal\n";
}

# exists($name{key}):判断是否存在
unless (exists($street{'North Elm'})) {
		print "North Elm has disappeared.\n";
}

# unless(%name):用来检查name中是否有记录
unless (%idList) {
		print "The assoc. array is empty.\n";
}
