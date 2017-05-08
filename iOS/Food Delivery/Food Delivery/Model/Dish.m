//
//  Dish.m
//  Food Delivery
//
//  Created by Kirill Budevich on 30.04.17.
//  Copyright © 2017 Kirill Budevich. All rights reserved.
//

#import "Dish.h"
#import "Category.h"

@implementation Dish

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
    return @{
             @"id_": @"id",
             @"name": @"name",
             @"description_": @"description",
             @"weight": @"weight",
             @"price": @"price",
             @"category": @"category"
             };
}

+ (NSValueTransformer *)categoryJSONTransformer {
    return [MTLJSONAdapter dictionaryTransformerWithModelClass:[Category class]];
}

- (instancetype)initWithDictionary:(NSDictionary*)dictionary {
    
    if (self = [super init]) {
        self.name = dictionary[@"name"];
        self.id_ = dictionary[@"id"];
        self.description_ = dictionary[@"description"];
        self.weight = dictionary[@"weight"];
        self.price = dictionary[@"price"];
        self.category = dictionary[@"description"];

    }
    return self;
}

@end