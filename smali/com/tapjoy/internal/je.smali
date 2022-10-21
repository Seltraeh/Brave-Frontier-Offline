.class final Lcom/tapjoy/internal/je;
.super Lcom/tapjoy/internal/iy;
.source "SourceFile"


# instance fields
.field final transient f:[[B

.field final transient g:[I


# direct methods
.method constructor <init>(Lcom/tapjoy/internal/iv;I)V
    .locals 7

    const/4 v0, 0x0

    .line 56
    invoke-direct {p0, v0}, Lcom/tapjoy/internal/iy;-><init>([B)V

    .line 57
    iget-wide v1, p1, Lcom/tapjoy/internal/iv;->b:J

    int-to-long v5, p2

    const-wide/16 v3, 0x0

    invoke-static/range {v1 .. v6}, Lcom/tapjoy/internal/ji;->a(JJJ)V

    .line 62
    iget-object v0, p1, Lcom/tapjoy/internal/iv;->a:Lcom/tapjoy/internal/jc;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, p2, :cond_1

    .line 63
    iget v4, v0, Lcom/tapjoy/internal/jc;->c:I

    iget v5, v0, Lcom/tapjoy/internal/jc;->b:I

    if-eq v4, v5, :cond_0

    sub-int/2addr v4, v5

    add-int/2addr v2, v4

    add-int/lit8 v3, v3, 0x1

    .line 62
    iget-object v0, v0, Lcom/tapjoy/internal/jc;->f:Lcom/tapjoy/internal/jc;

    goto :goto_0

    .line 64
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    const-string p2, "s.limit == s.pos"

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 71
    :cond_1
    new-array v0, v3, [[B

    iput-object v0, p0, Lcom/tapjoy/internal/je;->f:[[B

    mul-int/lit8 v3, v3, 0x2

    .line 72
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/tapjoy/internal/je;->g:[I

    .line 75
    iget-object p1, p1, Lcom/tapjoy/internal/iv;->a:Lcom/tapjoy/internal/jc;

    const/4 v0, 0x0

    :goto_1
    if-ge v1, p2, :cond_3

    .line 76
    iget-object v2, p0, Lcom/tapjoy/internal/je;->f:[[B

    iget-object v3, p1, Lcom/tapjoy/internal/jc;->a:[B

    aput-object v3, v2, v0

    .line 77
    iget v2, p1, Lcom/tapjoy/internal/jc;->c:I

    iget v3, p1, Lcom/tapjoy/internal/jc;->b:I

    sub-int/2addr v2, v3

    add-int/2addr v1, v2

    if-le v1, p2, :cond_2

    move v1, p2

    .line 81
    :cond_2
    iget-object v2, p0, Lcom/tapjoy/internal/je;->g:[I

    aput v1, v2, v0

    .line 82
    iget-object v3, p0, Lcom/tapjoy/internal/je;->f:[[B

    array-length v3, v3

    add-int/2addr v3, v0

    iget v4, p1, Lcom/tapjoy/internal/jc;->b:I

    aput v4, v2, v3

    const/4 v2, 0x1

    .line 83
    iput-boolean v2, p1, Lcom/tapjoy/internal/jc;->d:Z

    add-int/lit8 v0, v0, 0x1

    .line 75
    iget-object p1, p1, Lcom/tapjoy/internal/jc;->f:Lcom/tapjoy/internal/jc;

    goto :goto_1

    :cond_3
    return-void
.end method

.method private b(I)I
    .locals 3

    .line 139
    iget-object v0, p0, Lcom/tapjoy/internal/je;->g:[I

    iget-object v1, p0, Lcom/tapjoy/internal/je;->f:[[B

    array-length v1, v1

    add-int/lit8 p1, p1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, p1}, Ljava/util/Arrays;->binarySearch([IIII)I

    move-result p1

    if-ltz p1, :cond_0

    return p1

    :cond_0
    xor-int/lit8 p1, p1, -0x1

    return p1
.end method

.method private e()Lcom/tapjoy/internal/iy;
    .locals 2

    .line 240
    new-instance v0, Lcom/tapjoy/internal/iy;

    invoke-virtual {p0}, Lcom/tapjoy/internal/je;->d()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tapjoy/internal/iy;-><init>([B)V

    return-object v0
.end method


# virtual methods
.method public final a(I)B
    .locals 7

    .line 129
    iget-object v0, p0, Lcom/tapjoy/internal/je;->g:[I

    iget-object v1, p0, Lcom/tapjoy/internal/je;->f:[[B

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    int-to-long v1, v0

    int-to-long v3, p1

    const-wide/16 v5, 0x1

    invoke-static/range {v1 .. v6}, Lcom/tapjoy/internal/ji;->a(JJJ)V

    .line 130
    invoke-direct {p0, p1}, Lcom/tapjoy/internal/je;->b(I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 131
    :cond_0
    iget-object v1, p0, Lcom/tapjoy/internal/je;->g:[I

    add-int/lit8 v2, v0, -0x1

    aget v1, v1, v2

    .line 132
    :goto_0
    iget-object v2, p0, Lcom/tapjoy/internal/je;->g:[I

    iget-object v3, p0, Lcom/tapjoy/internal/je;->f:[[B

    array-length v4, v3

    add-int/2addr v4, v0

    aget v2, v2, v4

    .line 133
    aget-object v0, v3, v0

    sub-int/2addr p1, v1

    add-int/2addr p1, v2

    aget-byte p1, v0, p1

    return p1
.end method

.method public final a(II)Lcom/tapjoy/internal/iy;
    .locals 1

    .line 125
    invoke-direct {p0}, Lcom/tapjoy/internal/je;->e()Lcom/tapjoy/internal/iy;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/tapjoy/internal/iy;->a(II)Lcom/tapjoy/internal/iy;

    move-result-object p1

    return-object p1
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    .line 89
    invoke-direct {p0}, Lcom/tapjoy/internal/je;->e()Lcom/tapjoy/internal/iy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/internal/iy;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final a(Lcom/tapjoy/internal/iv;)V
    .locals 8

    .line 177
    iget-object v0, p0, Lcom/tapjoy/internal/je;->f:[[B

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 178
    iget-object v3, p0, Lcom/tapjoy/internal/je;->g:[I

    add-int v4, v0, v1

    aget v4, v3, v4

    .line 179
    aget v3, v3, v1

    .line 180
    new-instance v5, Lcom/tapjoy/internal/jc;

    iget-object v6, p0, Lcom/tapjoy/internal/je;->f:[[B

    aget-object v6, v6, v1

    add-int v7, v4, v3

    sub-int/2addr v7, v2

    invoke-direct {v5, v6, v4, v7}, Lcom/tapjoy/internal/jc;-><init>([BII)V

    .line 182
    iget-object v2, p1, Lcom/tapjoy/internal/iv;->a:Lcom/tapjoy/internal/jc;

    if-nez v2, :cond_0

    .line 183
    iput-object v5, v5, Lcom/tapjoy/internal/jc;->g:Lcom/tapjoy/internal/jc;

    iput-object v5, v5, Lcom/tapjoy/internal/jc;->f:Lcom/tapjoy/internal/jc;

    iput-object v5, p1, Lcom/tapjoy/internal/iv;->a:Lcom/tapjoy/internal/jc;

    goto :goto_1

    .line 185
    :cond_0
    iget-object v2, v2, Lcom/tapjoy/internal/jc;->g:Lcom/tapjoy/internal/jc;

    invoke-virtual {v2, v5}, Lcom/tapjoy/internal/jc;->a(Lcom/tapjoy/internal/jc;)Lcom/tapjoy/internal/jc;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    move v2, v3

    goto :goto_0

    .line 189
    :cond_1
    iget-wide v0, p1, Lcom/tapjoy/internal/iv;->b:J

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p1, Lcom/tapjoy/internal/iv;->b:J

    return-void
.end method

.method public final a(I[BII)Z
    .locals 7

    const/4 v0, 0x0

    if-ltz p1, :cond_4

    .line 211
    invoke-virtual {p0}, Lcom/tapjoy/internal/je;->c()I

    move-result v1

    sub-int/2addr v1, p4

    if-gt p1, v1, :cond_4

    if-ltz p3, :cond_4

    array-length v1, p2

    sub-int/2addr v1, p4

    if-le p3, v1, :cond_0

    goto :goto_2

    .line 216
    :cond_0
    invoke-direct {p0, p1}, Lcom/tapjoy/internal/je;->b(I)I

    move-result v1

    :goto_0
    if-lez p4, :cond_3

    if-nez v1, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    .line 217
    :cond_1
    iget-object v2, p0, Lcom/tapjoy/internal/je;->g:[I

    add-int/lit8 v3, v1, -0x1

    aget v2, v2, v3

    .line 218
    :goto_1
    iget-object v3, p0, Lcom/tapjoy/internal/je;->g:[I

    aget v3, v3, v1

    sub-int/2addr v3, v2

    add-int/2addr v3, v2

    sub-int/2addr v3, p1

    .line 219
    invoke-static {p4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 220
    iget-object v4, p0, Lcom/tapjoy/internal/je;->g:[I

    iget-object v5, p0, Lcom/tapjoy/internal/je;->f:[[B

    array-length v6, v5

    add-int/2addr v6, v1

    aget v4, v4, v6

    sub-int v2, p1, v2

    add-int/2addr v2, v4

    .line 222
    aget-object v4, v5, v1

    invoke-static {v4, v2, p2, p3, v3}, Lcom/tapjoy/internal/ji;->a([BI[BII)Z

    move-result v2

    if-nez v2, :cond_2

    return v0

    :cond_2
    add-int/2addr p1, v3

    add-int/2addr p3, v3

    sub-int/2addr p4, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x1

    return p1

    :cond_4
    :goto_2
    return v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .line 97
    invoke-direct {p0}, Lcom/tapjoy/internal/je;->e()Lcom/tapjoy/internal/iy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/internal/iy;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final c()I
    .locals 2

    .line 144
    iget-object v0, p0, Lcom/tapjoy/internal/je;->g:[I

    iget-object v1, p0, Lcom/tapjoy/internal/je;->f:[[B

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    return v0
.end method

.method public final d()[B
    .locals 8

    .line 148
    iget-object v0, p0, Lcom/tapjoy/internal/je;->g:[I

    iget-object v1, p0, Lcom/tapjoy/internal/je;->f:[[B

    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    aget v0, v0, v2

    new-array v0, v0, [B

    .line 150
    array-length v1, v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 151
    iget-object v4, p0, Lcom/tapjoy/internal/je;->g:[I

    add-int v5, v1, v2

    aget v5, v4, v5

    .line 152
    aget v4, v4, v2

    .line 153
    iget-object v6, p0, Lcom/tapjoy/internal/je;->f:[[B

    aget-object v6, v6, v2

    sub-int v7, v4, v3

    invoke-static {v6, v5, v0, v3, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v2, v2, 0x1

    move v3, v4

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 11

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 249
    :cond_0
    instance-of v1, p1, Lcom/tapjoy/internal/iy;

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    check-cast p1, Lcom/tapjoy/internal/iy;

    .line 250
    invoke-virtual {p1}, Lcom/tapjoy/internal/iy;->c()I

    move-result v1

    invoke-virtual {p0}, Lcom/tapjoy/internal/je;->c()I

    move-result v3

    if-ne v1, v3, :cond_5

    .line 251
    invoke-virtual {p0}, Lcom/tapjoy/internal/je;->c()I

    move-result v1

    .line 1194
    invoke-virtual {p0}, Lcom/tapjoy/internal/je;->c()I

    move-result v3

    sub-int/2addr v3, v1

    if-gez v3, :cond_1

    :goto_0
    const/4 p1, 0x0

    goto :goto_3

    .line 1196
    :cond_1
    invoke-direct {p0, v2}, Lcom/tapjoy/internal/je;->b(I)I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_1
    if-lez v1, :cond_4

    if-nez v3, :cond_2

    const/4 v6, 0x0

    goto :goto_2

    .line 1197
    :cond_2
    iget-object v6, p0, Lcom/tapjoy/internal/je;->g:[I

    add-int/lit8 v7, v3, -0x1

    aget v6, v6, v7

    .line 1198
    :goto_2
    iget-object v7, p0, Lcom/tapjoy/internal/je;->g:[I

    aget v7, v7, v3

    sub-int/2addr v7, v6

    add-int/2addr v7, v6

    sub-int/2addr v7, v4

    .line 1199
    invoke-static {v1, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 1200
    iget-object v8, p0, Lcom/tapjoy/internal/je;->g:[I

    iget-object v9, p0, Lcom/tapjoy/internal/je;->f:[[B

    array-length v10, v9

    add-int/2addr v10, v3

    aget v8, v8, v10

    sub-int v6, v4, v6

    add-int/2addr v6, v8

    .line 1202
    aget-object v8, v9, v3

    invoke-virtual {p1, v5, v8, v6, v7}, Lcom/tapjoy/internal/iy;->a(I[BII)Z

    move-result v6

    if-nez v6, :cond_3

    goto :goto_0

    :cond_3
    add-int/2addr v4, v7

    add-int/2addr v5, v7

    sub-int/2addr v1, v7

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    const/4 p1, 0x1

    :goto_3
    if-eqz p1, :cond_5

    return v0

    :cond_5
    return v2
.end method

.method public final hashCode()I
    .locals 8

    .line 255
    iget v0, p0, Lcom/tapjoy/internal/iy;->d:I

    if-eqz v0, :cond_0

    return v0

    .line 261
    :cond_0
    iget-object v0, p0, Lcom/tapjoy/internal/je;->f:[[B

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    :goto_0
    if-ge v1, v0, :cond_2

    .line 262
    iget-object v4, p0, Lcom/tapjoy/internal/je;->f:[[B

    aget-object v4, v4, v1

    .line 263
    iget-object v5, p0, Lcom/tapjoy/internal/je;->g:[I

    add-int v6, v0, v1

    aget v6, v5, v6

    .line 264
    aget v5, v5, v1

    sub-int v2, v5, v2

    add-int/2addr v2, v6

    :goto_1
    if-ge v6, v2, :cond_1

    mul-int/lit8 v3, v3, 0x1f

    .line 267
    aget-byte v7, v4, v6

    add-int/2addr v3, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    move v2, v5

    goto :goto_0

    .line 271
    :cond_2
    iput v3, p0, Lcom/tapjoy/internal/iy;->d:I

    return v3
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 275
    invoke-direct {p0}, Lcom/tapjoy/internal/je;->e()Lcom/tapjoy/internal/iy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/internal/iy;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
