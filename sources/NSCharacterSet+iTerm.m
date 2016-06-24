//
//  NSCharacterSet+iTerm.m
//  iTerm2
//
//  Created by George Nachman on 3/29/15.
//
//

#import "NSCharacterSet+iTerm.h"

@implementation NSCharacterSet (iTerm)

+ (instancetype)fullWidthCharacterSet {
    static NSMutableCharacterSet *sFullWidth;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sFullWidth = [[NSMutableCharacterSet alloc] init];
        [sFullWidth addCharactersInRange:NSMakeRange(0x1100, 0x115f - 0x1100 + 1)];
        [sFullWidth addCharactersInRange:NSMakeRange(0x231a, 0x231b - 0x231a + 1)];
        [sFullWidth addCharactersInRange:NSMakeRange(0x2329, 0x232a - 0x2329 + 1)];
        [sFullWidth addCharactersInRange:NSMakeRange(0x23e9, 0x23ec - 0x23e9 + 1)];
        [sFullWidth addCharactersInRange:NSMakeRange(0x25fd, 0x25fe - 0x25fd + 1)];
        [sFullWidth addCharactersInRange:NSMakeRange(0x2614, 0x2615 - 0x2614 + 1)];
        [sFullWidth addCharactersInRange:NSMakeRange(0x2648, 0x2653 - 0x2648 + 1)];
        [sFullWidth addCharactersInRange:NSMakeRange(0x26aa, 0x26ab - 0x26aa + 1)];
        [sFullWidth addCharactersInRange:NSMakeRange(0x26bd, 0x26be - 0x26bd + 1)];
        [sFullWidth addCharactersInRange:NSMakeRange(0x26c4, 0x26c5 - 0x26c4 + 1)];
        [sFullWidth addCharactersInRange:NSMakeRange(0x26f2, 0x26f3 - 0x26f2 + 1)];
        [sFullWidth addCharactersInRange:NSMakeRange(0x270a, 0x270b - 0x270a + 1)];
        [sFullWidth addCharactersInRange:NSMakeRange(0x2753, 0x2755 - 0x2753 + 1)];
        [sFullWidth addCharactersInRange:NSMakeRange(0x2795, 0x2797 - 0x2795 + 1)];
        [sFullWidth addCharactersInRange:NSMakeRange(0x2b1b, 0x2b1c - 0x2b1b + 1)];
        [sFullWidth addCharactersInRange:NSMakeRange(0x2e80, 0x2e99 - 0x2e80 + 1)];
        [sFullWidth addCharactersInRange:NSMakeRange(0x2e9b, 0x2ef3 - 0x2e9b + 1)];
        [sFullWidth addCharactersInRange:NSMakeRange(0x2f00, 0x2fd5 - 0x2f00 + 1)];
        [sFullWidth addCharactersInRange:NSMakeRange(0x2ff0, 0x2ffb - 0x2ff0 + 1)];
        [sFullWidth addCharactersInRange:NSMakeRange(0x3001, 0x303e - 0x3001 + 1)];
        [sFullWidth addCharactersInRange:NSMakeRange(0x3041, 0x3096 - 0x3041 + 1)];
        [sFullWidth addCharactersInRange:NSMakeRange(0x3099, 0x30ff - 0x3099 + 1)];
        [sFullWidth addCharactersInRange:NSMakeRange(0x3105, 0x312d - 0x3105 + 1)];
        [sFullWidth addCharactersInRange:NSMakeRange(0x3131, 0x318e - 0x3131 + 1)];
        [sFullWidth addCharactersInRange:NSMakeRange(0x3190, 0x31ba - 0x3190 + 1)];
        [sFullWidth addCharactersInRange:NSMakeRange(0x31c0, 0x31e3 - 0x31c0 + 1)];
        [sFullWidth addCharactersInRange:NSMakeRange(0x31f0, 0x321e - 0x31f0 + 1)];
        [sFullWidth addCharactersInRange:NSMakeRange(0x3220, 0x3247 - 0x3220 + 1)];
        [sFullWidth addCharactersInRange:NSMakeRange(0x3250, 0x32fe - 0x3250 + 1)];
        [sFullWidth addCharactersInRange:NSMakeRange(0x3300, 0x4dbf - 0x3300 + 1)];
        [sFullWidth addCharactersInRange:NSMakeRange(0x4e00, 0xa48c - 0x4e00 + 1)];
        [sFullWidth addCharactersInRange:NSMakeRange(0xa490, 0xa4c6 - 0xa490 + 1)];
        [sFullWidth addCharactersInRange:NSMakeRange(0xa960, 0xa97c - 0xa960 + 1)];
        [sFullWidth addCharactersInRange:NSMakeRange(0xac00, 0xd7a3 - 0xac00 + 1)];
        [sFullWidth addCharactersInRange:NSMakeRange(0xf900, 0xfaff - 0xf900 + 1)];
        [sFullWidth addCharactersInRange:NSMakeRange(0xfe10, 0xfe19 - 0xfe10 + 1)];
        [sFullWidth addCharactersInRange:NSMakeRange(0xfe30, 0xfe52 - 0xfe30 + 1)];
        [sFullWidth addCharactersInRange:NSMakeRange(0xfe54, 0xfe66 - 0xfe54 + 1)];
        [sFullWidth addCharactersInRange:NSMakeRange(0xfe68, 0xfe6b - 0xfe68 + 1)];
        [sFullWidth addCharactersInRange:NSMakeRange(0xff01, 0xff60 - 0xff01 + 1)];
        [sFullWidth addCharactersInRange:NSMakeRange(0xffe0, 0xffe6 - 0xffe0 + 1)];
        [sFullWidth addCharactersInRange:NSMakeRange(0x17000, 0x187ec - 0x17000 + 1)];
        [sFullWidth addCharactersInRange:NSMakeRange(0x18800, 0x18af2 - 0x18800 + 1)];
        [sFullWidth addCharactersInRange:NSMakeRange(0x1b000, 0x1b001 - 0x1b000 + 1)];
        [sFullWidth addCharactersInRange:NSMakeRange(0x1f191, 0x1f19a - 0x1f191 + 1)];
        [sFullWidth addCharactersInRange:NSMakeRange(0x1f200, 0x1f202 - 0x1f200 + 1)];
        [sFullWidth addCharactersInRange:NSMakeRange(0x1f210, 0x1f23b - 0x1f210 + 1)];
        [sFullWidth addCharactersInRange:NSMakeRange(0x1f240, 0x1f248 - 0x1f240 + 1)];
        [sFullWidth addCharactersInRange:NSMakeRange(0x1f250, 0x1f251 - 0x1f250 + 1)];
        [sFullWidth addCharactersInRange:NSMakeRange(0x1f300, 0x1f320 - 0x1f300 + 1)];
        [sFullWidth addCharactersInRange:NSMakeRange(0x1f32d, 0x1f335 - 0x1f32d + 1)];
        [sFullWidth addCharactersInRange:NSMakeRange(0x1f337, 0x1f37c - 0x1f337 + 1)];
        [sFullWidth addCharactersInRange:NSMakeRange(0x1f37e, 0x1f393 - 0x1f37e + 1)];
        [sFullWidth addCharactersInRange:NSMakeRange(0x1f3a0, 0x1f3ca - 0x1f3a0 + 1)];
        [sFullWidth addCharactersInRange:NSMakeRange(0x1f3cf, 0x1f3d3 - 0x1f3cf + 1)];
        [sFullWidth addCharactersInRange:NSMakeRange(0x1f3e0, 0x1f3f0 - 0x1f3e0 + 1)];
        [sFullWidth addCharactersInRange:NSMakeRange(0x1f3f8, 0x1f43e - 0x1f3f8 + 1)];
        [sFullWidth addCharactersInRange:NSMakeRange(0x1f442, 0x1f4fc - 0x1f442 + 1)];
        [sFullWidth addCharactersInRange:NSMakeRange(0x1f4ff, 0x1f53d - 0x1f4ff + 1)];
        [sFullWidth addCharactersInRange:NSMakeRange(0x1f54b, 0x1f54e - 0x1f54b + 1)];
        [sFullWidth addCharactersInRange:NSMakeRange(0x1f550, 0x1f567 - 0x1f550 + 1)];
        [sFullWidth addCharactersInRange:NSMakeRange(0x1f595, 0x1f596 - 0x1f595 + 1)];
        [sFullWidth addCharactersInRange:NSMakeRange(0x1f5fb, 0x1f64f - 0x1f5fb + 1)];
        [sFullWidth addCharactersInRange:NSMakeRange(0x1f680, 0x1f6c5 - 0x1f680 + 1)];
        [sFullWidth addCharactersInRange:NSMakeRange(0x1f6d0, 0x1f6d2 - 0x1f6d0 + 1)];
        [sFullWidth addCharactersInRange:NSMakeRange(0x1f6eb, 0x1f6ec - 0x1f6eb + 1)];
        [sFullWidth addCharactersInRange:NSMakeRange(0x1f6f4, 0x1f6f6 - 0x1f6f4 + 1)];
        [sFullWidth addCharactersInRange:NSMakeRange(0x1f910, 0x1f91e - 0x1f910 + 1)];
        [sFullWidth addCharactersInRange:NSMakeRange(0x1f920, 0x1f927 - 0x1f920 + 1)];
        [sFullWidth addCharactersInRange:NSMakeRange(0x1f933, 0x1f93e - 0x1f933 + 1)];
        [sFullWidth addCharactersInRange:NSMakeRange(0x1f940, 0x1f94b - 0x1f940 + 1)];
        [sFullWidth addCharactersInRange:NSMakeRange(0x1f950, 0x1f95e - 0x1f950 + 1)];
        [sFullWidth addCharactersInRange:NSMakeRange(0x1f980, 0x1f991 - 0x1f980 + 1)];
        [sFullWidth addCharactersInRange:NSMakeRange(0x20000, 0x2fffd - 0x20000 + 1)];
        [sFullWidth addCharactersInRange:NSMakeRange(0x30000, 0x3fffd - 0x30000 + 1)];

        [sFullWidth addCharactersInRange:NSMakeRange(0x23f0, 1)];
        [sFullWidth addCharactersInRange:NSMakeRange(0x23f3, 1)];
        [sFullWidth addCharactersInRange:NSMakeRange(0x267f, 1)];
        [sFullWidth addCharactersInRange:NSMakeRange(0x2693, 1)];
        [sFullWidth addCharactersInRange:NSMakeRange(0x26a1, 1)];
        [sFullWidth addCharactersInRange:NSMakeRange(0x26ce, 1)];
        [sFullWidth addCharactersInRange:NSMakeRange(0x26d4, 1)];
        [sFullWidth addCharactersInRange:NSMakeRange(0x26ea, 1)];
        [sFullWidth addCharactersInRange:NSMakeRange(0x26f5, 1)];
        [sFullWidth addCharactersInRange:NSMakeRange(0x26fa, 1)];
        [sFullWidth addCharactersInRange:NSMakeRange(0x26fd, 1)];
        [sFullWidth addCharactersInRange:NSMakeRange(0x2705, 1)];
        [sFullWidth addCharactersInRange:NSMakeRange(0x2728, 1)];
        [sFullWidth addCharactersInRange:NSMakeRange(0x274c, 1)];
        [sFullWidth addCharactersInRange:NSMakeRange(0x274e, 1)];
        [sFullWidth addCharactersInRange:NSMakeRange(0x2757, 1)];
        [sFullWidth addCharactersInRange:NSMakeRange(0x27b0, 1)];
        [sFullWidth addCharactersInRange:NSMakeRange(0x27bf, 1)];
        [sFullWidth addCharactersInRange:NSMakeRange(0x2b50, 1)];
        [sFullWidth addCharactersInRange:NSMakeRange(0x2b55, 1)];
        [sFullWidth addCharactersInRange:NSMakeRange(0x3000, 1)];
        [sFullWidth addCharactersInRange:NSMakeRange(0x16fe0, 1)];
        [sFullWidth addCharactersInRange:NSMakeRange(0x1f004, 1)];
        [sFullWidth addCharactersInRange:NSMakeRange(0x1f0cf, 1)];
        [sFullWidth addCharactersInRange:NSMakeRange(0x1f18e, 1)];
        [sFullWidth addCharactersInRange:NSMakeRange(0x1f3f4, 1)];
        [sFullWidth addCharactersInRange:NSMakeRange(0x1f440, 1)];
        [sFullWidth addCharactersInRange:NSMakeRange(0x1f57a, 1)];
        [sFullWidth addCharactersInRange:NSMakeRange(0x1f5a4, 1)];
        [sFullWidth addCharactersInRange:NSMakeRange(0x1f6cc, 1)];
        [sFullWidth addCharactersInRange:NSMakeRange(0x1f930, 1)];
        [sFullWidth addCharactersInRange:NSMakeRange(0x1f9c0, 1)];
    });

    return sFullWidth;
}

+ (instancetype)ambiguousWidthCharacterSet {
    static NSMutableCharacterSet *sAmbiguousWidth;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sAmbiguousWidth = [[NSMutableCharacterSet alloc] init];
        [sAmbiguousWidth addCharactersInRange:NSMakeRange(0xa7, 0xa8 - 0xa7 + 1)];
        [sAmbiguousWidth addCharactersInRange:NSMakeRange(0xad, 0xae - 0xad + 1)];
        [sAmbiguousWidth addCharactersInRange:NSMakeRange(0xb0, 0xb4 - 0xb0 + 1)];
        [sAmbiguousWidth addCharactersInRange:NSMakeRange(0xb6, 0xba - 0xb6 + 1)];
        [sAmbiguousWidth addCharactersInRange:NSMakeRange(0xbc, 0xbf - 0xbc + 1)];
        [sAmbiguousWidth addCharactersInRange:NSMakeRange(0xd7, 0xd8 - 0xd7 + 1)];
        [sAmbiguousWidth addCharactersInRange:NSMakeRange(0xde, 0xe1 - 0xde + 1)];
        [sAmbiguousWidth addCharactersInRange:NSMakeRange(0xe8, 0xea - 0xe8 + 1)];
        [sAmbiguousWidth addCharactersInRange:NSMakeRange(0xec, 0xed - 0xec + 1)];
        [sAmbiguousWidth addCharactersInRange:NSMakeRange(0xf2, 0xf3 - 0xf2 + 1)];
        [sAmbiguousWidth addCharactersInRange:NSMakeRange(0xf7, 0xfa - 0xf7 + 1)];
        [sAmbiguousWidth addCharactersInRange:NSMakeRange(0x126, 0x127 - 0x126 + 1)];
        [sAmbiguousWidth addCharactersInRange:NSMakeRange(0x131, 0x133 - 0x131 + 1)];
        [sAmbiguousWidth addCharactersInRange:NSMakeRange(0x13f, 0x142 - 0x13f + 1)];
        [sAmbiguousWidth addCharactersInRange:NSMakeRange(0x148, 0x14b - 0x148 + 1)];
        [sAmbiguousWidth addCharactersInRange:NSMakeRange(0x152, 0x153 - 0x152 + 1)];
        [sAmbiguousWidth addCharactersInRange:NSMakeRange(0x166, 0x167 - 0x166 + 1)];
        [sAmbiguousWidth addCharactersInRange:NSMakeRange(0x2c9, 0x2cb - 0x2c9 + 1)];
        [sAmbiguousWidth addCharactersInRange:NSMakeRange(0x2d8, 0x2db - 0x2d8 + 1)];
        [sAmbiguousWidth addCharactersInRange:NSMakeRange(0x300, 0x36f - 0x300 + 1)];
        [sAmbiguousWidth addCharactersInRange:NSMakeRange(0x391, 0x3a1 - 0x391 + 1)];
        [sAmbiguousWidth addCharactersInRange:NSMakeRange(0x3a3, 0x3a9 - 0x3a3 + 1)];
        [sAmbiguousWidth addCharactersInRange:NSMakeRange(0x3b1, 0x3c1 - 0x3b1 + 1)];
        [sAmbiguousWidth addCharactersInRange:NSMakeRange(0x3c3, 0x3c9 - 0x3c3 + 1)];
        [sAmbiguousWidth addCharactersInRange:NSMakeRange(0x410, 0x44f - 0x410 + 1)];
        [sAmbiguousWidth addCharactersInRange:NSMakeRange(0x2013, 0x2016 - 0x2013 + 1)];
        [sAmbiguousWidth addCharactersInRange:NSMakeRange(0x2018, 0x2019 - 0x2018 + 1)];
        [sAmbiguousWidth addCharactersInRange:NSMakeRange(0x201c, 0x201d - 0x201c + 1)];
        [sAmbiguousWidth addCharactersInRange:NSMakeRange(0x2020, 0x2022 - 0x2020 + 1)];
        [sAmbiguousWidth addCharactersInRange:NSMakeRange(0x2024, 0x2027 - 0x2024 + 1)];
        [sAmbiguousWidth addCharactersInRange:NSMakeRange(0x2032, 0x2033 - 0x2032 + 1)];
        [sAmbiguousWidth addCharactersInRange:NSMakeRange(0x2081, 0x2084 - 0x2081 + 1)];
        [sAmbiguousWidth addCharactersInRange:NSMakeRange(0x2121, 0x2122 - 0x2121 + 1)];
        [sAmbiguousWidth addCharactersInRange:NSMakeRange(0x2153, 0x2154 - 0x2153 + 1)];
        [sAmbiguousWidth addCharactersInRange:NSMakeRange(0x215b, 0x215e - 0x215b + 1)];
        [sAmbiguousWidth addCharactersInRange:NSMakeRange(0x2160, 0x216b - 0x2160 + 1)];
        [sAmbiguousWidth addCharactersInRange:NSMakeRange(0x2170, 0x2179 - 0x2170 + 1)];
        [sAmbiguousWidth addCharactersInRange:NSMakeRange(0x2190, 0x2199 - 0x2190 + 1)];
        [sAmbiguousWidth addCharactersInRange:NSMakeRange(0x21b8, 0x21b9 - 0x21b8 + 1)];
        [sAmbiguousWidth addCharactersInRange:NSMakeRange(0x2202, 0x2203 - 0x2202 + 1)];
        [sAmbiguousWidth addCharactersInRange:NSMakeRange(0x2207, 0x2208 - 0x2207 + 1)];
        [sAmbiguousWidth addCharactersInRange:NSMakeRange(0x221d, 0x2220 - 0x221d + 1)];
        [sAmbiguousWidth addCharactersInRange:NSMakeRange(0x2227, 0x222c - 0x2227 + 1)];
        [sAmbiguousWidth addCharactersInRange:NSMakeRange(0x2234, 0x2237 - 0x2234 + 1)];
        [sAmbiguousWidth addCharactersInRange:NSMakeRange(0x223c, 0x223d - 0x223c + 1)];
        [sAmbiguousWidth addCharactersInRange:NSMakeRange(0x2260, 0x2261 - 0x2260 + 1)];
        [sAmbiguousWidth addCharactersInRange:NSMakeRange(0x2264, 0x2267 - 0x2264 + 1)];
        [sAmbiguousWidth addCharactersInRange:NSMakeRange(0x226a, 0x226b - 0x226a + 1)];
        [sAmbiguousWidth addCharactersInRange:NSMakeRange(0x226e, 0x226f - 0x226e + 1)];
        [sAmbiguousWidth addCharactersInRange:NSMakeRange(0x2282, 0x2283 - 0x2282 + 1)];
        [sAmbiguousWidth addCharactersInRange:NSMakeRange(0x2286, 0x2287 - 0x2286 + 1)];
        [sAmbiguousWidth addCharactersInRange:NSMakeRange(0x2460, 0x24e9 - 0x2460 + 1)];
        [sAmbiguousWidth addCharactersInRange:NSMakeRange(0x24eb, 0x254b - 0x24eb + 1)];
        [sAmbiguousWidth addCharactersInRange:NSMakeRange(0x2550, 0x2573 - 0x2550 + 1)];
        [sAmbiguousWidth addCharactersInRange:NSMakeRange(0x2580, 0x258f - 0x2580 + 1)];
        [sAmbiguousWidth addCharactersInRange:NSMakeRange(0x2592, 0x2595 - 0x2592 + 1)];
        [sAmbiguousWidth addCharactersInRange:NSMakeRange(0x25a0, 0x25a1 - 0x25a0 + 1)];
        [sAmbiguousWidth addCharactersInRange:NSMakeRange(0x25a3, 0x25a9 - 0x25a3 + 1)];
        [sAmbiguousWidth addCharactersInRange:NSMakeRange(0x25b2, 0x25b3 - 0x25b2 + 1)];
        [sAmbiguousWidth addCharactersInRange:NSMakeRange(0x25b6, 0x25b7 - 0x25b6 + 1)];
        [sAmbiguousWidth addCharactersInRange:NSMakeRange(0x25bc, 0x25bd - 0x25bc + 1)];
        [sAmbiguousWidth addCharactersInRange:NSMakeRange(0x25c0, 0x25c1 - 0x25c0 + 1)];
        [sAmbiguousWidth addCharactersInRange:NSMakeRange(0x25c6, 0x25c8 - 0x25c6 + 1)];
        [sAmbiguousWidth addCharactersInRange:NSMakeRange(0x25ce, 0x25d1 - 0x25ce + 1)];
        [sAmbiguousWidth addCharactersInRange:NSMakeRange(0x25e2, 0x25e5 - 0x25e2 + 1)];
        [sAmbiguousWidth addCharactersInRange:NSMakeRange(0x2605, 0x2606 - 0x2605 + 1)];
        [sAmbiguousWidth addCharactersInRange:NSMakeRange(0x260e, 0x260f - 0x260e + 1)];
        [sAmbiguousWidth addCharactersInRange:NSMakeRange(0x2660, 0x2661 - 0x2660 + 1)];
        [sAmbiguousWidth addCharactersInRange:NSMakeRange(0x2663, 0x2665 - 0x2663 + 1)];
        [sAmbiguousWidth addCharactersInRange:NSMakeRange(0x2667, 0x266a - 0x2667 + 1)];
        [sAmbiguousWidth addCharactersInRange:NSMakeRange(0x266c, 0x266d - 0x266c + 1)];
        [sAmbiguousWidth addCharactersInRange:NSMakeRange(0x269e, 0x269f - 0x269e + 1)];
        [sAmbiguousWidth addCharactersInRange:NSMakeRange(0x26c6, 0x26cd - 0x26c6 + 1)];
        [sAmbiguousWidth addCharactersInRange:NSMakeRange(0x26cf, 0x26d3 - 0x26cf + 1)];
        [sAmbiguousWidth addCharactersInRange:NSMakeRange(0x26d5, 0x26e1 - 0x26d5 + 1)];
        [sAmbiguousWidth addCharactersInRange:NSMakeRange(0x26e8, 0x26e9 - 0x26e8 + 1)];
        [sAmbiguousWidth addCharactersInRange:NSMakeRange(0x26eb, 0x26f1 - 0x26eb + 1)];
        [sAmbiguousWidth addCharactersInRange:NSMakeRange(0x26f6, 0x26f9 - 0x26f6 + 1)];
        [sAmbiguousWidth addCharactersInRange:NSMakeRange(0x26fb, 0x26fc - 0x26fb + 1)];
        [sAmbiguousWidth addCharactersInRange:NSMakeRange(0x26fe, 0x26ff - 0x26fe + 1)];
        [sAmbiguousWidth addCharactersInRange:NSMakeRange(0x2776, 0x277f - 0x2776 + 1)];
        [sAmbiguousWidth addCharactersInRange:NSMakeRange(0x2b56, 0x2b59 - 0x2b56 + 1)];
        [sAmbiguousWidth addCharactersInRange:NSMakeRange(0x3248, 0x324f - 0x3248 + 1)];
        [sAmbiguousWidth addCharactersInRange:NSMakeRange(0xe000, 0xf8ff - 0xe000 + 1)];
        [sAmbiguousWidth addCharactersInRange:NSMakeRange(0xfe00, 0xfe0f - 0xfe00 + 1)];
        [sAmbiguousWidth addCharactersInRange:NSMakeRange(0x1f100, 0x1f10a - 0x1f100 + 1)];
        [sAmbiguousWidth addCharactersInRange:NSMakeRange(0x1f110, 0x1f12d - 0x1f110 + 1)];
        [sAmbiguousWidth addCharactersInRange:NSMakeRange(0x1f130, 0x1f169 - 0x1f130 + 1)];
        [sAmbiguousWidth addCharactersInRange:NSMakeRange(0x1f170, 0x1f18d - 0x1f170 + 1)];
        [sAmbiguousWidth addCharactersInRange:NSMakeRange(0x1f18f, 0x1f190 - 0x1f18f + 1)];
        [sAmbiguousWidth addCharactersInRange:NSMakeRange(0x1f19b, 0x1f1ac - 0x1f19b + 1)];
        [sAmbiguousWidth addCharactersInRange:NSMakeRange(0xe0100, 0xe01ef - 0xe0100 + 1)];
        [sAmbiguousWidth addCharactersInRange:NSMakeRange(0xf0000, 0xffffd - 0xf0000 + 1)];
        [sAmbiguousWidth addCharactersInRange:NSMakeRange(0x100000, 0x10fffd - 0x100000 + 1)];

        [sAmbiguousWidth addCharactersInRange:NSMakeRange(0xa1, 1)];
        [sAmbiguousWidth addCharactersInRange:NSMakeRange(0xa4, 1)];
        [sAmbiguousWidth addCharactersInRange:NSMakeRange(0xaa, 1)];
        [sAmbiguousWidth addCharactersInRange:NSMakeRange(0xc6, 1)];
        [sAmbiguousWidth addCharactersInRange:NSMakeRange(0xd0, 1)];
        [sAmbiguousWidth addCharactersInRange:NSMakeRange(0xe6, 1)];
        [sAmbiguousWidth addCharactersInRange:NSMakeRange(0xf0, 1)];
        [sAmbiguousWidth addCharactersInRange:NSMakeRange(0xfc, 1)];
        [sAmbiguousWidth addCharactersInRange:NSMakeRange(0xfe, 1)];
        [sAmbiguousWidth addCharactersInRange:NSMakeRange(0x101, 1)];
        [sAmbiguousWidth addCharactersInRange:NSMakeRange(0x111, 1)];
        [sAmbiguousWidth addCharactersInRange:NSMakeRange(0x113, 1)];
        [sAmbiguousWidth addCharactersInRange:NSMakeRange(0x11b, 1)];
        [sAmbiguousWidth addCharactersInRange:NSMakeRange(0x12b, 1)];
        [sAmbiguousWidth addCharactersInRange:NSMakeRange(0x138, 1)];
        [sAmbiguousWidth addCharactersInRange:NSMakeRange(0x144, 1)];
        [sAmbiguousWidth addCharactersInRange:NSMakeRange(0x14d, 1)];
        [sAmbiguousWidth addCharactersInRange:NSMakeRange(0x16b, 1)];
        [sAmbiguousWidth addCharactersInRange:NSMakeRange(0x1ce, 1)];
        [sAmbiguousWidth addCharactersInRange:NSMakeRange(0x1d0, 1)];
        [sAmbiguousWidth addCharactersInRange:NSMakeRange(0x1d2, 1)];
        [sAmbiguousWidth addCharactersInRange:NSMakeRange(0x1d4, 1)];
        [sAmbiguousWidth addCharactersInRange:NSMakeRange(0x1d6, 1)];
        [sAmbiguousWidth addCharactersInRange:NSMakeRange(0x1d8, 1)];
        [sAmbiguousWidth addCharactersInRange:NSMakeRange(0x1da, 1)];
        [sAmbiguousWidth addCharactersInRange:NSMakeRange(0x1dc, 1)];
        [sAmbiguousWidth addCharactersInRange:NSMakeRange(0x251, 1)];
        [sAmbiguousWidth addCharactersInRange:NSMakeRange(0x261, 1)];
        [sAmbiguousWidth addCharactersInRange:NSMakeRange(0x2c4, 1)];
        [sAmbiguousWidth addCharactersInRange:NSMakeRange(0x2c7, 1)];
        [sAmbiguousWidth addCharactersInRange:NSMakeRange(0x2cd, 1)];
        [sAmbiguousWidth addCharactersInRange:NSMakeRange(0x2d0, 1)];
        [sAmbiguousWidth addCharactersInRange:NSMakeRange(0x2dd, 1)];
        [sAmbiguousWidth addCharactersInRange:NSMakeRange(0x2df, 1)];
        [sAmbiguousWidth addCharactersInRange:NSMakeRange(0x401, 1)];
        [sAmbiguousWidth addCharactersInRange:NSMakeRange(0x451, 1)];
        [sAmbiguousWidth addCharactersInRange:NSMakeRange(0x2010, 1)];
        [sAmbiguousWidth addCharactersInRange:NSMakeRange(0x2030, 1)];
        [sAmbiguousWidth addCharactersInRange:NSMakeRange(0x2035, 1)];
        [sAmbiguousWidth addCharactersInRange:NSMakeRange(0x203b, 1)];
        [sAmbiguousWidth addCharactersInRange:NSMakeRange(0x203e, 1)];
        [sAmbiguousWidth addCharactersInRange:NSMakeRange(0x2074, 1)];
        [sAmbiguousWidth addCharactersInRange:NSMakeRange(0x207f, 1)];
        [sAmbiguousWidth addCharactersInRange:NSMakeRange(0x20ac, 1)];
        [sAmbiguousWidth addCharactersInRange:NSMakeRange(0x2103, 1)];
        [sAmbiguousWidth addCharactersInRange:NSMakeRange(0x2105, 1)];
        [sAmbiguousWidth addCharactersInRange:NSMakeRange(0x2109, 1)];
        [sAmbiguousWidth addCharactersInRange:NSMakeRange(0x2113, 1)];
        [sAmbiguousWidth addCharactersInRange:NSMakeRange(0x2116, 1)];
        [sAmbiguousWidth addCharactersInRange:NSMakeRange(0x2126, 1)];
        [sAmbiguousWidth addCharactersInRange:NSMakeRange(0x212b, 1)];
        [sAmbiguousWidth addCharactersInRange:NSMakeRange(0x2189, 1)];
        [sAmbiguousWidth addCharactersInRange:NSMakeRange(0x21d2, 1)];
        [sAmbiguousWidth addCharactersInRange:NSMakeRange(0x21d4, 1)];
        [sAmbiguousWidth addCharactersInRange:NSMakeRange(0x21e7, 1)];
        [sAmbiguousWidth addCharactersInRange:NSMakeRange(0x2200, 1)];
        [sAmbiguousWidth addCharactersInRange:NSMakeRange(0x220b, 1)];
        [sAmbiguousWidth addCharactersInRange:NSMakeRange(0x220f, 1)];
        [sAmbiguousWidth addCharactersInRange:NSMakeRange(0x2211, 1)];
        [sAmbiguousWidth addCharactersInRange:NSMakeRange(0x2215, 1)];
        [sAmbiguousWidth addCharactersInRange:NSMakeRange(0x221a, 1)];
        [sAmbiguousWidth addCharactersInRange:NSMakeRange(0x2223, 1)];
        [sAmbiguousWidth addCharactersInRange:NSMakeRange(0x2225, 1)];
        [sAmbiguousWidth addCharactersInRange:NSMakeRange(0x222e, 1)];
        [sAmbiguousWidth addCharactersInRange:NSMakeRange(0x2248, 1)];
        [sAmbiguousWidth addCharactersInRange:NSMakeRange(0x224c, 1)];
        [sAmbiguousWidth addCharactersInRange:NSMakeRange(0x2252, 1)];
        [sAmbiguousWidth addCharactersInRange:NSMakeRange(0x2295, 1)];
        [sAmbiguousWidth addCharactersInRange:NSMakeRange(0x2299, 1)];
        [sAmbiguousWidth addCharactersInRange:NSMakeRange(0x22a5, 1)];
        [sAmbiguousWidth addCharactersInRange:NSMakeRange(0x22bf, 1)];
        [sAmbiguousWidth addCharactersInRange:NSMakeRange(0x2312, 1)];
        [sAmbiguousWidth addCharactersInRange:NSMakeRange(0x25cb, 1)];
        [sAmbiguousWidth addCharactersInRange:NSMakeRange(0x25ef, 1)];
        [sAmbiguousWidth addCharactersInRange:NSMakeRange(0x2609, 1)];
        [sAmbiguousWidth addCharactersInRange:NSMakeRange(0x261c, 1)];
        [sAmbiguousWidth addCharactersInRange:NSMakeRange(0x261e, 1)];
        [sAmbiguousWidth addCharactersInRange:NSMakeRange(0x2640, 1)];
        [sAmbiguousWidth addCharactersInRange:NSMakeRange(0x2642, 1)];
        [sAmbiguousWidth addCharactersInRange:NSMakeRange(0x266f, 1)];
        [sAmbiguousWidth addCharactersInRange:NSMakeRange(0x26bf, 1)];
        [sAmbiguousWidth addCharactersInRange:NSMakeRange(0x26e3, 1)];
        [sAmbiguousWidth addCharactersInRange:NSMakeRange(0x26f4, 1)];
        [sAmbiguousWidth addCharactersInRange:NSMakeRange(0x273d, 1)];
        [sAmbiguousWidth addCharactersInRange:NSMakeRange(0xfffd, 1)];
    });
    return sAmbiguousWidth;
}

+ (instancetype)zeroWidthSpaceCharacterSet {
    static dispatch_once_t onceToken;
    static NSCharacterSet *characterSet;
    dispatch_once(&onceToken, ^{
        NSString *string =
            @"\ufeff"  // zero width no-break space
            @"\u200b"  // zero width space
            @"\u200c"  // zero width non-joiner
            @"\u200d";  // zero width joiner
        characterSet = [[NSCharacterSet characterSetWithCharactersInString:string] retain];
    });
    return characterSet;
}

@end
