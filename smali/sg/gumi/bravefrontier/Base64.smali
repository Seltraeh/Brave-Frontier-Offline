.class public Lsg/gumi/bravefrontier/Base64;
.super Ljava/lang/Object;
.source "Base64.java"


# static fields
.field private static final CA:[C

.field private static final IA:[I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-string v0, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    .line 75
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lsg/gumi/bravefrontier/Base64;->CA:[C

    const/16 v0, 0x100

    new-array v0, v0, [I

    .line 76
    sput-object v0, Lsg/gumi/bravefrontier/Base64;->IA:[I

    const/4 v1, -0x1

    .line 78
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 79
    sget-object v0, Lsg/gumi/bravefrontier/Base64;->CA:[C

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 80
    sget-object v3, Lsg/gumi/bravefrontier/Base64;->IA:[I

    sget-object v4, Lsg/gumi/bravefrontier/Base64;->CA:[C

    aget-char v4, v4, v2

    aput v2, v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 81
    :cond_0
    sget-object v0, Lsg/gumi/bravefrontier/Base64;->IA:[I

    const/16 v2, 0x3d

    aput v1, v0, v2

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final decode(Ljava/lang/String;)[B
    .locals 10

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 465
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    new-array p0, v0, [B

    return-object p0

    :cond_1
    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1
    if-ge v2, v1, :cond_3

    .line 473
    sget-object v4, Lsg/gumi/bravefrontier/Base64;->IA:[I

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    aget v4, v4, v5

    if-gez v4, :cond_2

    add-int/lit8 v3, v3, 0x1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    sub-int v2, v1, v3

    .line 477
    rem-int/lit8 v3, v2, 0x4

    if-eqz v3, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const/4 v3, 0x0

    :cond_5
    :goto_2
    const/4 v4, 0x1

    if-le v1, v4, :cond_6

    .line 482
    sget-object v5, Lsg/gumi/bravefrontier/Base64;->IA:[I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    aget v5, v5, v6

    if-gtz v5, :cond_6

    .line 483
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x3d

    if-ne v4, v5, :cond_5

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_6
    mul-int/lit8 v2, v2, 0x6

    shr-int/lit8 v1, v2, 0x3

    sub-int/2addr v1, v3

    .line 488
    new-array v2, v1, [B

    const/4 v3, 0x0

    const/4 v5, 0x0

    :cond_7
    :goto_3
    if-ge v3, v1, :cond_b

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_4
    const/4 v8, 0x4

    if-ge v6, v8, :cond_9

    .line 494
    sget-object v8, Lsg/gumi/bravefrontier/Base64;->IA:[I

    add-int/lit8 v9, v5, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    aget v5, v8, v5

    if-ltz v5, :cond_8

    mul-int/lit8 v8, v6, 0x6

    rsub-int/lit8 v8, v8, 0x12

    shl-int/2addr v5, v8

    or-int/2addr v7, v5

    goto :goto_5

    :cond_8
    add-int/lit8 v6, v6, -0x1

    :goto_5
    add-int/2addr v6, v4

    move v5, v9

    goto :goto_4

    :cond_9
    add-int/lit8 v6, v3, 0x1

    shr-int/lit8 v8, v7, 0x10

    int-to-byte v8, v8

    .line 501
    aput-byte v8, v2, v3

    if-ge v6, v1, :cond_a

    add-int/lit8 v3, v6, 0x1

    shr-int/lit8 v8, v7, 0x8

    int-to-byte v8, v8

    .line 503
    aput-byte v8, v2, v6

    if-ge v3, v1, :cond_7

    add-int/lit8 v6, v3, 0x1

    int-to-byte v7, v7

    .line 505
    aput-byte v7, v2, v3

    :cond_a
    move v3, v6

    goto :goto_3

    :cond_b
    return-object v2
.end method

.method public static final decode([B)[B
    .locals 10

    .line 326
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 332
    sget-object v4, Lsg/gumi/bravefrontier/Base64;->IA:[I

    aget-byte v5, p0, v2

    and-int/lit16 v5, v5, 0xff

    aget v4, v4, v5

    if-gez v4, :cond_0

    add-int/lit8 v3, v3, 0x1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    sub-int v2, v0, v3

    .line 336
    rem-int/lit8 v3, v2, 0x4

    if-eqz v3, :cond_2

    const/4 p0, 0x0

    return-object p0

    :cond_2
    const/4 v3, 0x0

    :cond_3
    :goto_1
    const/4 v4, 0x1

    if-le v0, v4, :cond_4

    .line 340
    sget-object v5, Lsg/gumi/bravefrontier/Base64;->IA:[I

    add-int/lit8 v0, v0, -0x1

    aget-byte v6, p0, v0

    and-int/lit16 v6, v6, 0xff

    aget v5, v5, v6

    if-gtz v5, :cond_4

    .line 341
    aget-byte v4, p0, v0

    const/16 v5, 0x3d

    if-ne v4, v5, :cond_3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    mul-int/lit8 v2, v2, 0x6

    shr-int/lit8 v0, v2, 0x3

    sub-int/2addr v0, v3

    .line 346
    new-array v2, v0, [B

    const/4 v3, 0x0

    const/4 v5, 0x0

    :cond_5
    :goto_2
    if-ge v3, v0, :cond_9

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_3
    const/4 v8, 0x4

    if-ge v6, v8, :cond_7

    .line 352
    sget-object v8, Lsg/gumi/bravefrontier/Base64;->IA:[I

    add-int/lit8 v9, v5, 0x1

    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    aget v5, v8, v5

    if-ltz v5, :cond_6

    mul-int/lit8 v8, v6, 0x6

    rsub-int/lit8 v8, v8, 0x12

    shl-int/2addr v5, v8

    or-int/2addr v7, v5

    goto :goto_4

    :cond_6
    add-int/lit8 v6, v6, -0x1

    :goto_4
    add-int/2addr v6, v4

    move v5, v9

    goto :goto_3

    :cond_7
    add-int/lit8 v6, v3, 0x1

    shr-int/lit8 v8, v7, 0x10

    int-to-byte v8, v8

    .line 360
    aput-byte v8, v2, v3

    if-ge v6, v0, :cond_8

    add-int/lit8 v3, v6, 0x1

    shr-int/lit8 v8, v7, 0x8

    int-to-byte v8, v8

    .line 362
    aput-byte v8, v2, v6

    if-ge v3, v0, :cond_5

    add-int/lit8 v6, v3, 0x1

    int-to-byte v7, v7

    .line 364
    aput-byte v7, v2, v3

    :cond_8
    move v3, v6

    goto :goto_2

    :cond_9
    return-object v2
.end method

.method public static final decode([C)[B
    .locals 10

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 150
    array-length v1, p0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    new-array p0, v0, [B

    return-object p0

    :cond_1
    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1
    if-ge v2, v1, :cond_3

    .line 158
    sget-object v4, Lsg/gumi/bravefrontier/Base64;->IA:[I

    aget-char v5, p0, v2

    aget v4, v4, v5

    if-gez v4, :cond_2

    add-int/lit8 v3, v3, 0x1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    sub-int v2, v1, v3

    .line 162
    rem-int/lit8 v3, v2, 0x4

    if-eqz v3, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const/4 v3, 0x0

    :cond_5
    :goto_2
    const/4 v4, 0x1

    if-le v1, v4, :cond_6

    .line 166
    sget-object v5, Lsg/gumi/bravefrontier/Base64;->IA:[I

    add-int/lit8 v1, v1, -0x1

    aget-char v6, p0, v1

    aget v5, v5, v6

    if-gtz v5, :cond_6

    .line 167
    aget-char v4, p0, v1

    const/16 v5, 0x3d

    if-ne v4, v5, :cond_5

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_6
    mul-int/lit8 v2, v2, 0x6

    shr-int/lit8 v1, v2, 0x3

    sub-int/2addr v1, v3

    .line 172
    new-array v2, v1, [B

    const/4 v3, 0x0

    const/4 v5, 0x0

    :cond_7
    :goto_3
    if-ge v3, v1, :cond_b

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_4
    const/4 v8, 0x4

    if-ge v6, v8, :cond_9

    .line 178
    sget-object v8, Lsg/gumi/bravefrontier/Base64;->IA:[I

    add-int/lit8 v9, v5, 0x1

    aget-char v5, p0, v5

    aget v5, v8, v5

    if-ltz v5, :cond_8

    mul-int/lit8 v8, v6, 0x6

    rsub-int/lit8 v8, v8, 0x12

    shl-int/2addr v5, v8

    or-int/2addr v7, v5

    goto :goto_5

    :cond_8
    add-int/lit8 v6, v6, -0x1

    :goto_5
    add-int/2addr v6, v4

    move v5, v9

    goto :goto_4

    :cond_9
    add-int/lit8 v6, v3, 0x1

    shr-int/lit8 v8, v7, 0x10

    int-to-byte v8, v8

    .line 185
    aput-byte v8, v2, v3

    if-ge v6, v1, :cond_a

    add-int/lit8 v3, v6, 0x1

    shr-int/lit8 v8, v7, 0x8

    int-to-byte v8, v8

    .line 187
    aput-byte v8, v2, v6

    if-ge v3, v1, :cond_7

    add-int/lit8 v6, v3, 0x1

    int-to-byte v7, v7

    .line 189
    aput-byte v7, v2, v3

    :cond_a
    move v3, v6

    goto :goto_3

    :cond_b
    return-object v2
.end method

.method public static final decodeFast(Ljava/lang/String;)[B
    .locals 14

    .line 523
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-array p0, v1, [B

    return-object p0

    :cond_0
    add-int/lit8 v2, v0, -0x1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    .line 530
    sget-object v4, Lsg/gumi/bravefrontier/Base64;->IA:[I

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    and-int/lit16 v5, v5, 0xff

    aget v4, v4, v5

    if-gez v4, :cond_1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-lez v2, :cond_2

    .line 534
    sget-object v4, Lsg/gumi/bravefrontier/Base64;->IA:[I

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    and-int/lit16 v5, v5, 0xff

    aget v4, v4, v5

    if-gez v4, :cond_2

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 538
    :cond_2
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x3d

    const/4 v6, 0x1

    if-ne v4, v5, :cond_4

    add-int/lit8 v4, v2, -0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v5, :cond_3

    const/4 v4, 0x2

    goto :goto_2

    :cond_3
    const/4 v4, 0x1

    goto :goto_2

    :cond_4
    const/4 v4, 0x0

    :goto_2
    sub-int v5, v2, v3

    add-int/2addr v5, v6

    const/16 v7, 0x4c

    if-le v0, v7, :cond_6

    .line 540
    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v7, 0xd

    if-ne v0, v7, :cond_5

    div-int/lit8 v0, v5, 0x4e

    goto :goto_3

    :cond_5
    const/4 v0, 0x0

    :goto_3
    shl-int/2addr v0, v6

    goto :goto_4

    :cond_6
    const/4 v0, 0x0

    :goto_4
    sub-int/2addr v5, v0

    mul-int/lit8 v5, v5, 0x6

    shr-int/lit8 v5, v5, 0x3

    sub-int/2addr v5, v4

    .line 543
    new-array v7, v5, [B

    .line 547
    div-int/lit8 v8, v5, 0x3

    mul-int/lit8 v8, v8, 0x3

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_5
    if-ge v9, v8, :cond_8

    .line 549
    sget-object v11, Lsg/gumi/bravefrontier/Base64;->IA:[I

    add-int/lit8 v12, v3, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    aget v3, v11, v3

    shl-int/lit8 v3, v3, 0x12

    sget-object v11, Lsg/gumi/bravefrontier/Base64;->IA:[I

    add-int/lit8 v13, v12, 0x1

    invoke-virtual {p0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    aget v11, v11, v12

    shl-int/lit8 v11, v11, 0xc

    or-int/2addr v3, v11

    sget-object v11, Lsg/gumi/bravefrontier/Base64;->IA:[I

    add-int/lit8 v12, v13, 0x1

    invoke-virtual {p0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    aget v11, v11, v13

    shl-int/lit8 v11, v11, 0x6

    or-int/2addr v3, v11

    sget-object v11, Lsg/gumi/bravefrontier/Base64;->IA:[I

    add-int/lit8 v13, v12, 0x1

    invoke-virtual {p0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    aget v11, v11, v12

    or-int/2addr v3, v11

    add-int/lit8 v11, v9, 0x1

    shr-int/lit8 v12, v3, 0x10

    int-to-byte v12, v12

    .line 552
    aput-byte v12, v7, v9

    add-int/lit8 v9, v11, 0x1

    shr-int/lit8 v12, v3, 0x8

    int-to-byte v12, v12

    .line 553
    aput-byte v12, v7, v11

    add-int/lit8 v11, v9, 0x1

    int-to-byte v3, v3

    .line 554
    aput-byte v3, v7, v9

    if-lez v0, :cond_7

    add-int/lit8 v10, v10, 0x1

    const/16 v3, 0x13

    if-ne v10, v3, :cond_7

    add-int/lit8 v13, v13, 0x2

    move v3, v13

    const/4 v10, 0x0

    goto :goto_6

    :cond_7
    move v3, v13

    :goto_6
    move v9, v11

    goto :goto_5

    :cond_8
    if-ge v9, v5, :cond_a

    const/4 v0, 0x0

    :goto_7
    sub-int v8, v2, v4

    if-gt v3, v8, :cond_9

    .line 567
    sget-object v8, Lsg/gumi/bravefrontier/Base64;->IA:[I

    add-int/lit8 v10, v3, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    aget v3, v8, v3

    mul-int/lit8 v8, v0, 0x6

    rsub-int/lit8 v8, v8, 0x12

    shl-int/2addr v3, v8

    or-int/2addr v1, v3

    add-int/2addr v0, v6

    move v3, v10

    goto :goto_7

    :cond_9
    const/16 p0, 0x10

    :goto_8
    if-ge v9, v5, :cond_a

    add-int/lit8 v0, v9, 0x1

    shr-int v2, v1, p0

    int-to-byte v2, v2

    .line 570
    aput-byte v2, v7, v9

    add-int/lit8 p0, p0, -0x8

    move v9, v0

    goto :goto_8

    :cond_a
    return-object v7
.end method

.method public static final decodeFast([B)[B
    .locals 14

    .line 384
    array-length v0, p0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-array p0, v1, [B

    return-object p0

    :cond_0
    add-int/lit8 v2, v0, -0x1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    .line 391
    sget-object v4, Lsg/gumi/bravefrontier/Base64;->IA:[I

    aget-byte v5, p0, v3

    and-int/lit16 v5, v5, 0xff

    aget v4, v4, v5

    if-gez v4, :cond_1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-lez v2, :cond_2

    .line 395
    sget-object v4, Lsg/gumi/bravefrontier/Base64;->IA:[I

    aget-byte v5, p0, v2

    and-int/lit16 v5, v5, 0xff

    aget v4, v4, v5

    if-gez v4, :cond_2

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 399
    :cond_2
    aget-byte v4, p0, v2

    const/16 v5, 0x3d

    const/4 v6, 0x1

    if-ne v4, v5, :cond_4

    add-int/lit8 v4, v2, -0x1

    aget-byte v4, p0, v4

    if-ne v4, v5, :cond_3

    const/4 v4, 0x2

    goto :goto_2

    :cond_3
    const/4 v4, 0x1

    goto :goto_2

    :cond_4
    const/4 v4, 0x0

    :goto_2
    sub-int v5, v2, v3

    add-int/2addr v5, v6

    const/16 v7, 0x4c

    if-le v0, v7, :cond_6

    .line 401
    aget-byte v0, p0, v7

    const/16 v7, 0xd

    if-ne v0, v7, :cond_5

    div-int/lit8 v0, v5, 0x4e

    goto :goto_3

    :cond_5
    const/4 v0, 0x0

    :goto_3
    shl-int/2addr v0, v6

    goto :goto_4

    :cond_6
    const/4 v0, 0x0

    :goto_4
    sub-int/2addr v5, v0

    mul-int/lit8 v5, v5, 0x6

    shr-int/lit8 v5, v5, 0x3

    sub-int/2addr v5, v4

    .line 404
    new-array v7, v5, [B

    .line 408
    div-int/lit8 v8, v5, 0x3

    mul-int/lit8 v8, v8, 0x3

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_5
    if-ge v9, v8, :cond_8

    .line 410
    sget-object v11, Lsg/gumi/bravefrontier/Base64;->IA:[I

    add-int/lit8 v12, v3, 0x1

    aget-byte v3, p0, v3

    aget v3, v11, v3

    shl-int/lit8 v3, v3, 0x12

    add-int/lit8 v13, v12, 0x1

    aget-byte v12, p0, v12

    aget v12, v11, v12

    shl-int/lit8 v12, v12, 0xc

    or-int/2addr v3, v12

    add-int/lit8 v12, v13, 0x1

    aget-byte v13, p0, v13

    aget v13, v11, v13

    shl-int/lit8 v13, v13, 0x6

    or-int/2addr v3, v13

    add-int/lit8 v13, v12, 0x1

    aget-byte v12, p0, v12

    aget v11, v11, v12

    or-int/2addr v3, v11

    add-int/lit8 v11, v9, 0x1

    shr-int/lit8 v12, v3, 0x10

    int-to-byte v12, v12

    .line 413
    aput-byte v12, v7, v9

    add-int/lit8 v9, v11, 0x1

    shr-int/lit8 v12, v3, 0x8

    int-to-byte v12, v12

    .line 414
    aput-byte v12, v7, v11

    add-int/lit8 v11, v9, 0x1

    int-to-byte v3, v3

    .line 415
    aput-byte v3, v7, v9

    if-lez v0, :cond_7

    add-int/lit8 v10, v10, 0x1

    const/16 v3, 0x13

    if-ne v10, v3, :cond_7

    add-int/lit8 v13, v13, 0x2

    move v3, v13

    const/4 v10, 0x0

    goto :goto_6

    :cond_7
    move v3, v13

    :goto_6
    move v9, v11

    goto :goto_5

    :cond_8
    if-ge v9, v5, :cond_a

    const/4 v0, 0x0

    :goto_7
    sub-int v8, v2, v4

    if-gt v3, v8, :cond_9

    .line 428
    sget-object v8, Lsg/gumi/bravefrontier/Base64;->IA:[I

    add-int/lit8 v10, v3, 0x1

    aget-byte v3, p0, v3

    aget v3, v8, v3

    mul-int/lit8 v8, v0, 0x6

    rsub-int/lit8 v8, v8, 0x12

    shl-int/2addr v3, v8

    or-int/2addr v1, v3

    add-int/2addr v0, v6

    move v3, v10

    goto :goto_7

    :cond_9
    const/16 p0, 0x10

    :goto_8
    if-ge v9, v5, :cond_a

    add-int/lit8 v0, v9, 0x1

    shr-int v2, v1, p0

    int-to-byte v2, v2

    .line 431
    aput-byte v2, v7, v9

    add-int/lit8 p0, p0, -0x8

    move v9, v0

    goto :goto_8

    :cond_a
    return-object v7
.end method

.method public static final decodeFast([C)[B
    .locals 14

    .line 207
    array-length v0, p0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-array p0, v1, [B

    return-object p0

    :cond_0
    add-int/lit8 v2, v0, -0x1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    .line 214
    sget-object v4, Lsg/gumi/bravefrontier/Base64;->IA:[I

    aget-char v5, p0, v3

    aget v4, v4, v5

    if-gez v4, :cond_1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-lez v2, :cond_2

    .line 218
    sget-object v4, Lsg/gumi/bravefrontier/Base64;->IA:[I

    aget-char v5, p0, v2

    aget v4, v4, v5

    if-gez v4, :cond_2

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 222
    :cond_2
    aget-char v4, p0, v2

    const/16 v5, 0x3d

    const/4 v6, 0x1

    if-ne v4, v5, :cond_4

    add-int/lit8 v4, v2, -0x1

    aget-char v4, p0, v4

    if-ne v4, v5, :cond_3

    const/4 v4, 0x2

    goto :goto_2

    :cond_3
    const/4 v4, 0x1

    goto :goto_2

    :cond_4
    const/4 v4, 0x0

    :goto_2
    sub-int v5, v2, v3

    add-int/2addr v5, v6

    const/16 v7, 0x4c

    if-le v0, v7, :cond_6

    .line 224
    aget-char v0, p0, v7

    const/16 v7, 0xd

    if-ne v0, v7, :cond_5

    div-int/lit8 v0, v5, 0x4e

    goto :goto_3

    :cond_5
    const/4 v0, 0x0

    :goto_3
    shl-int/2addr v0, v6

    goto :goto_4

    :cond_6
    const/4 v0, 0x0

    :goto_4
    sub-int/2addr v5, v0

    mul-int/lit8 v5, v5, 0x6

    shr-int/lit8 v5, v5, 0x3

    sub-int/2addr v5, v4

    .line 227
    new-array v7, v5, [B

    .line 231
    div-int/lit8 v8, v5, 0x3

    mul-int/lit8 v8, v8, 0x3

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_5
    if-ge v9, v8, :cond_8

    .line 233
    sget-object v11, Lsg/gumi/bravefrontier/Base64;->IA:[I

    add-int/lit8 v12, v3, 0x1

    aget-char v3, p0, v3

    aget v3, v11, v3

    shl-int/lit8 v3, v3, 0x12

    add-int/lit8 v13, v12, 0x1

    aget-char v12, p0, v12

    aget v12, v11, v12

    shl-int/lit8 v12, v12, 0xc

    or-int/2addr v3, v12

    add-int/lit8 v12, v13, 0x1

    aget-char v13, p0, v13

    aget v13, v11, v13

    shl-int/lit8 v13, v13, 0x6

    or-int/2addr v3, v13

    add-int/lit8 v13, v12, 0x1

    aget-char v12, p0, v12

    aget v11, v11, v12

    or-int/2addr v3, v11

    add-int/lit8 v11, v9, 0x1

    shr-int/lit8 v12, v3, 0x10

    int-to-byte v12, v12

    .line 236
    aput-byte v12, v7, v9

    add-int/lit8 v9, v11, 0x1

    shr-int/lit8 v12, v3, 0x8

    int-to-byte v12, v12

    .line 237
    aput-byte v12, v7, v11

    add-int/lit8 v11, v9, 0x1

    int-to-byte v3, v3

    .line 238
    aput-byte v3, v7, v9

    if-lez v0, :cond_7

    add-int/lit8 v10, v10, 0x1

    const/16 v3, 0x13

    if-ne v10, v3, :cond_7

    add-int/lit8 v13, v13, 0x2

    move v3, v13

    const/4 v10, 0x0

    goto :goto_6

    :cond_7
    move v3, v13

    :goto_6
    move v9, v11

    goto :goto_5

    :cond_8
    if-ge v9, v5, :cond_a

    const/4 v0, 0x0

    :goto_7
    sub-int v8, v2, v4

    if-gt v3, v8, :cond_9

    .line 251
    sget-object v8, Lsg/gumi/bravefrontier/Base64;->IA:[I

    add-int/lit8 v10, v3, 0x1

    aget-char v3, p0, v3

    aget v3, v8, v3

    mul-int/lit8 v8, v0, 0x6

    rsub-int/lit8 v8, v8, 0x12

    shl-int/2addr v3, v8

    or-int/2addr v1, v3

    add-int/2addr v0, v6

    move v3, v10

    goto :goto_7

    :cond_9
    const/16 p0, 0x10

    :goto_8
    if-ge v9, v5, :cond_a

    add-int/lit8 v0, v9, 0x1

    shr-int v2, v1, p0

    int-to-byte v2, v2

    .line 254
    aput-byte v2, v7, v9

    add-int/lit8 p0, p0, -0x8

    move v9, v0

    goto :goto_8

    :cond_a
    return-object v7
.end method

.method public static final encodeToByte([BZ)[B
    .locals 16

    move-object/from16 v0, p0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 274
    array-length v2, v0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_1

    new-array v0, v1, [B

    return-object v0

    .line 278
    :cond_1
    div-int/lit8 v3, v2, 0x3

    mul-int/lit8 v3, v3, 0x3

    add-int/lit8 v4, v2, -0x1

    .line 279
    div-int/lit8 v5, v4, 0x3

    add-int/lit8 v5, v5, 0x1

    const/4 v6, 0x2

    shl-int/2addr v5, v6

    if-eqz p1, :cond_2

    add-int/lit8 v7, v5, -0x1

    .line 280
    div-int/lit8 v7, v7, 0x4c

    shl-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_2
    const/4 v7, 0x0

    :goto_1
    add-int/2addr v5, v7

    .line 281
    new-array v7, v5, [B

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_2
    const/16 v11, 0xa

    if-ge v8, v3, :cond_4

    add-int/lit8 v12, v8, 0x1

    .line 286
    aget-byte v8, v0, v8

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x10

    add-int/lit8 v13, v12, 0x1

    aget-byte v12, v0, v12

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x8

    or-int/2addr v8, v12

    add-int/lit8 v12, v13, 0x1

    aget-byte v13, v0, v13

    and-int/lit16 v13, v13, 0xff

    or-int/2addr v8, v13

    add-int/lit8 v13, v9, 0x1

    .line 289
    sget-object v14, Lsg/gumi/bravefrontier/Base64;->CA:[C

    ushr-int/lit8 v15, v8, 0x12

    and-int/lit8 v15, v15, 0x3f

    aget-char v15, v14, v15

    int-to-byte v15, v15

    aput-byte v15, v7, v9

    add-int/lit8 v9, v13, 0x1

    ushr-int/lit8 v15, v8, 0xc

    and-int/lit8 v15, v15, 0x3f

    .line 290
    aget-char v15, v14, v15

    int-to-byte v15, v15

    aput-byte v15, v7, v13

    add-int/lit8 v13, v9, 0x1

    ushr-int/lit8 v15, v8, 0x6

    and-int/lit8 v15, v15, 0x3f

    .line 291
    aget-char v15, v14, v15

    int-to-byte v15, v15

    aput-byte v15, v7, v9

    add-int/lit8 v9, v13, 0x1

    and-int/lit8 v8, v8, 0x3f

    .line 292
    aget-char v8, v14, v8

    int-to-byte v8, v8

    aput-byte v8, v7, v13

    if-eqz p1, :cond_3

    add-int/lit8 v10, v10, 0x1

    const/16 v8, 0x13

    if-ne v10, v8, :cond_3

    add-int/lit8 v8, v5, -0x2

    if-ge v9, v8, :cond_3

    add-int/lit8 v8, v9, 0x1

    const/16 v10, 0xd

    .line 296
    aput-byte v10, v7, v9

    add-int/lit8 v9, v8, 0x1

    .line 297
    aput-byte v11, v7, v8

    const/4 v10, 0x0

    :cond_3
    move v8, v12

    goto :goto_2

    :cond_4
    sub-int/2addr v2, v3

    if-lez v2, :cond_7

    .line 306
    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/2addr v3, v11

    if-ne v2, v6, :cond_5

    aget-byte v0, v0, v4

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v1, v0, 0x2

    :cond_5
    or-int v0, v3, v1

    add-int/lit8 v1, v5, -0x4

    .line 309
    sget-object v3, Lsg/gumi/bravefrontier/Base64;->CA:[C

    shr-int/lit8 v4, v0, 0xc

    aget-char v4, v3, v4

    int-to-byte v4, v4

    aput-byte v4, v7, v1

    add-int/lit8 v1, v5, -0x3

    ushr-int/lit8 v4, v0, 0x6

    and-int/lit8 v4, v4, 0x3f

    .line 310
    aget-char v4, v3, v4

    int-to-byte v4, v4

    aput-byte v4, v7, v1

    add-int/lit8 v1, v5, -0x2

    const/16 v4, 0x3d

    if-ne v2, v6, :cond_6

    and-int/lit8 v0, v0, 0x3f

    .line 311
    aget-char v0, v3, v0

    int-to-byte v0, v0

    goto :goto_3

    :cond_6
    const/16 v0, 0x3d

    :goto_3
    aput-byte v0, v7, v1

    add-int/lit8 v5, v5, -0x1

    .line 312
    aput-byte v4, v7, v5

    :cond_7
    return-object v7
.end method

.method public static final encodeToChar([BZ)[C
    .locals 16

    move-object/from16 v0, p0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 98
    array-length v2, v0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_1

    new-array v0, v1, [C

    return-object v0

    .line 102
    :cond_1
    div-int/lit8 v3, v2, 0x3

    mul-int/lit8 v3, v3, 0x3

    add-int/lit8 v4, v2, -0x1

    .line 103
    div-int/lit8 v5, v4, 0x3

    add-int/lit8 v5, v5, 0x1

    const/4 v6, 0x2

    shl-int/2addr v5, v6

    if-eqz p1, :cond_2

    add-int/lit8 v7, v5, -0x1

    .line 104
    div-int/lit8 v7, v7, 0x4c

    shl-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_2
    const/4 v7, 0x0

    :goto_1
    add-int/2addr v5, v7

    .line 105
    new-array v7, v5, [C

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_2
    const/16 v11, 0xa

    if-ge v8, v3, :cond_4

    add-int/lit8 v12, v8, 0x1

    .line 110
    aget-byte v8, v0, v8

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x10

    add-int/lit8 v13, v12, 0x1

    aget-byte v12, v0, v12

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x8

    or-int/2addr v8, v12

    add-int/lit8 v12, v13, 0x1

    aget-byte v13, v0, v13

    and-int/lit16 v13, v13, 0xff

    or-int/2addr v8, v13

    add-int/lit8 v13, v9, 0x1

    .line 113
    sget-object v14, Lsg/gumi/bravefrontier/Base64;->CA:[C

    ushr-int/lit8 v15, v8, 0x12

    and-int/lit8 v15, v15, 0x3f

    aget-char v15, v14, v15

    aput-char v15, v7, v9

    add-int/lit8 v9, v13, 0x1

    ushr-int/lit8 v15, v8, 0xc

    and-int/lit8 v15, v15, 0x3f

    .line 114
    aget-char v15, v14, v15

    aput-char v15, v7, v13

    add-int/lit8 v13, v9, 0x1

    ushr-int/lit8 v15, v8, 0x6

    and-int/lit8 v15, v15, 0x3f

    .line 115
    aget-char v15, v14, v15

    aput-char v15, v7, v9

    add-int/lit8 v9, v13, 0x1

    and-int/lit8 v8, v8, 0x3f

    .line 116
    aget-char v8, v14, v8

    aput-char v8, v7, v13

    if-eqz p1, :cond_3

    add-int/lit8 v10, v10, 0x1

    const/16 v8, 0x13

    if-ne v10, v8, :cond_3

    add-int/lit8 v8, v5, -0x2

    if-ge v9, v8, :cond_3

    add-int/lit8 v8, v9, 0x1

    const/16 v10, 0xd

    .line 120
    aput-char v10, v7, v9

    add-int/lit8 v9, v8, 0x1

    .line 121
    aput-char v11, v7, v8

    const/4 v10, 0x0

    :cond_3
    move v8, v12

    goto :goto_2

    :cond_4
    sub-int/2addr v2, v3

    if-lez v2, :cond_7

    .line 130
    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/2addr v3, v11

    if-ne v2, v6, :cond_5

    aget-byte v0, v0, v4

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v1, v0, 0x2

    :cond_5
    or-int v0, v3, v1

    add-int/lit8 v1, v5, -0x4

    .line 133
    sget-object v3, Lsg/gumi/bravefrontier/Base64;->CA:[C

    shr-int/lit8 v4, v0, 0xc

    aget-char v4, v3, v4

    aput-char v4, v7, v1

    add-int/lit8 v1, v5, -0x3

    ushr-int/lit8 v4, v0, 0x6

    and-int/lit8 v4, v4, 0x3f

    .line 134
    aget-char v4, v3, v4

    aput-char v4, v7, v1

    add-int/lit8 v1, v5, -0x2

    const/16 v4, 0x3d

    if-ne v2, v6, :cond_6

    and-int/lit8 v0, v0, 0x3f

    .line 135
    aget-char v0, v3, v0

    goto :goto_3

    :cond_6
    const/16 v0, 0x3d

    :goto_3
    aput-char v0, v7, v1

    add-int/lit8 v5, v5, -0x1

    .line 136
    aput-char v4, v7, v5

    :cond_7
    return-object v7
.end method

.method public static final encodeToString([BZ)Ljava/lang/String;
    .locals 1

    .line 451
    new-instance v0, Ljava/lang/String;

    invoke-static {p0, p1}, Lsg/gumi/bravefrontier/Base64;->encodeToChar([BZ)[C

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method
