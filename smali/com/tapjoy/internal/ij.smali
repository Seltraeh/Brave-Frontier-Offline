.class public final Lcom/tapjoy/internal/ij;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:[B

.field private b:Ljava/nio/ByteBuffer;

.field private c:Lcom/tapjoy/internal/ii;

.field private d:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x100

    new-array v0, v0, [B

    .line 43
    iput-object v0, p0, Lcom/tapjoy/internal/ij;->a:[B

    const/4 v0, 0x0

    .line 47
    iput v0, p0, Lcom/tapjoy/internal/ij;->d:I

    return-void
.end method

.method private a(Ljava/nio/ByteBuffer;)Lcom/tapjoy/internal/ij;
    .locals 2

    const/4 v0, 0x0

    .line 1073
    iput-object v0, p0, Lcom/tapjoy/internal/ij;->b:Ljava/nio/ByteBuffer;

    .line 1074
    iget-object v0, p0, Lcom/tapjoy/internal/ij;->a:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 1075
    new-instance v0, Lcom/tapjoy/internal/ii;

    invoke-direct {v0}, Lcom/tapjoy/internal/ii;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/internal/ij;->c:Lcom/tapjoy/internal/ii;

    .line 1076
    iput v1, p0, Lcom/tapjoy/internal/ij;->d:I

    .line 51
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/tapjoy/internal/ij;->b:Ljava/nio/ByteBuffer;

    .line 52
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 53
    iget-object p1, p0, Lcom/tapjoy/internal/ij;->b:Ljava/nio/ByteBuffer;

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method private a(I)[I
    .locals 9

    mul-int/lit8 v0, p1, 0x3

    .line 324
    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 327
    :try_start_0
    iget-object v2, p0, Lcom/tapjoy/internal/ij;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    const/16 v2, 0x100

    new-array v1, v2, [I

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, p1, :cond_0

    add-int/lit8 v4, v3, 0x1

    .line 335
    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v5, v4, 0x1

    .line 336
    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v6, v5, 0x1

    .line 337
    aget-byte v5, v0, v5

    and-int/lit16 v5, v5, 0xff

    add-int/lit8 v7, v2, 0x1

    const/high16 v8, -0x1000000

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v3, v8

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v3, v4

    or-int/2addr v3, v5

    .line 338
    aput v3, v1, v2
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v6

    move v2, v7

    goto :goto_0

    .line 342
    :catch_0
    iget-object p1, p0, Lcom/tapjoy/internal/ij;->c:Lcom/tapjoy/internal/ii;

    const/4 v0, 0x1

    iput v0, p1, Lcom/tapjoy/internal/ii;->b:I

    :cond_0
    return-object v1
.end method

.method private b()V
    .locals 0

    .line 114
    invoke-direct {p0}, Lcom/tapjoy/internal/ij;->c()V

    return-void
.end method

.method private c()V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_a

    .line 123
    invoke-direct {p0}, Lcom/tapjoy/internal/ij;->l()Z

    move-result v3

    if-nez v3, :cond_a

    iget-object v3, p0, Lcom/tapjoy/internal/ij;->c:Lcom/tapjoy/internal/ii;

    iget v3, v3, Lcom/tapjoy/internal/ii;->c:I

    const v4, 0x7fffffff

    if-gt v3, v4, :cond_a

    .line 124
    invoke-direct {p0}, Lcom/tapjoy/internal/ij;->k()I

    move-result v3

    const/16 v4, 0x21

    if-eq v3, v4, :cond_3

    const/16 v4, 0x2c

    if-eq v3, v4, :cond_1

    const/16 v4, 0x3b

    if-eq v3, v4, :cond_0

    .line 182
    iget-object v3, p0, Lcom/tapjoy/internal/ij;->c:Lcom/tapjoy/internal/ii;

    iput v1, v3, Lcom/tapjoy/internal/ii;->b:I

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    goto :goto_0

    .line 133
    :cond_1
    iget-object v3, p0, Lcom/tapjoy/internal/ij;->c:Lcom/tapjoy/internal/ii;

    iget-object v4, v3, Lcom/tapjoy/internal/ii;->d:Lcom/tapjoy/internal/ih;

    if-nez v4, :cond_2

    .line 134
    new-instance v4, Lcom/tapjoy/internal/ih;

    invoke-direct {v4}, Lcom/tapjoy/internal/ih;-><init>()V

    iput-object v4, v3, Lcom/tapjoy/internal/ii;->d:Lcom/tapjoy/internal/ih;

    .line 136
    :cond_2
    invoke-direct {p0}, Lcom/tapjoy/internal/ij;->e()V

    goto :goto_0

    .line 140
    :cond_3
    invoke-direct {p0}, Lcom/tapjoy/internal/ij;->k()I

    move-result v3

    if-eq v3, v1, :cond_9

    const/16 v4, 0xf9

    if-eq v3, v4, :cond_8

    const/16 v4, 0xfe

    if-eq v3, v4, :cond_7

    const/16 v4, 0xff

    if-eq v3, v4, :cond_4

    .line 172
    invoke-direct {p0}, Lcom/tapjoy/internal/ij;->i()V

    goto :goto_0

    .line 150
    :cond_4
    invoke-direct {p0}, Lcom/tapjoy/internal/ij;->j()I

    const-string v3, ""

    const/4 v4, 0x0

    :goto_1
    const/16 v5, 0xb

    if-ge v4, v5, :cond_5

    .line 153
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/tapjoy/internal/ij;->a:[B

    aget-byte v3, v3, v4

    int-to-char v3, v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_5
    const-string v4, "NETSCAPE2.0"

    .line 155
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 156
    invoke-direct {p0}, Lcom/tapjoy/internal/ij;->f()V

    goto :goto_0

    .line 159
    :cond_6
    invoke-direct {p0}, Lcom/tapjoy/internal/ij;->i()V

    goto :goto_0

    .line 164
    :cond_7
    invoke-direct {p0}, Lcom/tapjoy/internal/ij;->i()V

    goto/16 :goto_0

    .line 145
    :cond_8
    iget-object v3, p0, Lcom/tapjoy/internal/ij;->c:Lcom/tapjoy/internal/ii;

    new-instance v4, Lcom/tapjoy/internal/ih;

    invoke-direct {v4}, Lcom/tapjoy/internal/ih;-><init>()V

    iput-object v4, v3, Lcom/tapjoy/internal/ii;->d:Lcom/tapjoy/internal/ih;

    .line 146
    invoke-direct {p0}, Lcom/tapjoy/internal/ij;->d()V

    goto/16 :goto_0

    .line 168
    :cond_9
    invoke-direct {p0}, Lcom/tapjoy/internal/ij;->i()V

    goto/16 :goto_0

    :cond_a
    return-void
.end method

.method private d()V
    .locals 5

    .line 192
    invoke-direct {p0}, Lcom/tapjoy/internal/ij;->k()I

    .line 194
    invoke-direct {p0}, Lcom/tapjoy/internal/ij;->k()I

    move-result v0

    .line 196
    iget-object v1, p0, Lcom/tapjoy/internal/ij;->c:Lcom/tapjoy/internal/ii;

    iget-object v1, v1, Lcom/tapjoy/internal/ii;->d:Lcom/tapjoy/internal/ih;

    and-int/lit8 v2, v0, 0x1c

    const/4 v3, 0x2

    shr-int/2addr v2, v3

    iput v2, v1, Lcom/tapjoy/internal/ih;->g:I

    const/4 v4, 0x1

    if-nez v2, :cond_0

    .line 199
    iput v4, v1, Lcom/tapjoy/internal/ih;->g:I

    .line 201
    :cond_0
    iget-object v1, p0, Lcom/tapjoy/internal/ij;->c:Lcom/tapjoy/internal/ii;

    iget-object v1, v1, Lcom/tapjoy/internal/ii;->d:Lcom/tapjoy/internal/ih;

    and-int/2addr v0, v4

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    iput-boolean v4, v1, Lcom/tapjoy/internal/ih;->f:Z

    .line 1416
    iget-object v0, p0, Lcom/tapjoy/internal/ij;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    const/16 v1, 0xa

    if-ge v0, v3, :cond_2

    const/16 v0, 0xa

    .line 208
    :cond_2
    iget-object v2, p0, Lcom/tapjoy/internal/ij;->c:Lcom/tapjoy/internal/ii;

    iget-object v2, v2, Lcom/tapjoy/internal/ii;->d:Lcom/tapjoy/internal/ih;

    mul-int/lit8 v0, v0, 0xa

    iput v0, v2, Lcom/tapjoy/internal/ih;->i:I

    .line 210
    invoke-direct {p0}, Lcom/tapjoy/internal/ij;->k()I

    move-result v0

    iput v0, v2, Lcom/tapjoy/internal/ih;->h:I

    .line 212
    invoke-direct {p0}, Lcom/tapjoy/internal/ij;->k()I

    return-void
.end method

.method private e()V
    .locals 8

    .line 220
    iget-object v0, p0, Lcom/tapjoy/internal/ij;->c:Lcom/tapjoy/internal/ii;

    iget-object v0, v0, Lcom/tapjoy/internal/ii;->d:Lcom/tapjoy/internal/ih;

    .line 2416
    iget-object v1, p0, Lcom/tapjoy/internal/ij;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    .line 220
    iput v1, v0, Lcom/tapjoy/internal/ih;->a:I

    .line 221
    iget-object v0, p0, Lcom/tapjoy/internal/ij;->c:Lcom/tapjoy/internal/ii;

    iget-object v0, v0, Lcom/tapjoy/internal/ii;->d:Lcom/tapjoy/internal/ih;

    .line 3416
    iget-object v1, p0, Lcom/tapjoy/internal/ij;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    .line 221
    iput v1, v0, Lcom/tapjoy/internal/ih;->b:I

    .line 222
    iget-object v0, p0, Lcom/tapjoy/internal/ij;->c:Lcom/tapjoy/internal/ii;

    iget-object v0, v0, Lcom/tapjoy/internal/ii;->d:Lcom/tapjoy/internal/ih;

    .line 4416
    iget-object v1, p0, Lcom/tapjoy/internal/ij;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    .line 222
    iput v1, v0, Lcom/tapjoy/internal/ih;->c:I

    .line 223
    iget-object v0, p0, Lcom/tapjoy/internal/ij;->c:Lcom/tapjoy/internal/ii;

    iget-object v0, v0, Lcom/tapjoy/internal/ii;->d:Lcom/tapjoy/internal/ih;

    .line 5416
    iget-object v1, p0, Lcom/tapjoy/internal/ij;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    .line 223
    iput v1, v0, Lcom/tapjoy/internal/ih;->d:I

    .line 225
    invoke-direct {p0}, Lcom/tapjoy/internal/ij;->k()I

    move-result v0

    and-int/lit16 v1, v0, 0x80

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    and-int/lit8 v6, v0, 0x7

    add-int/2addr v6, v3

    int-to-double v6, v6

    .line 228
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-int v4, v4

    .line 232
    iget-object v5, p0, Lcom/tapjoy/internal/ij;->c:Lcom/tapjoy/internal/ii;

    iget-object v5, v5, Lcom/tapjoy/internal/ii;->d:Lcom/tapjoy/internal/ih;

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    :cond_1
    iput-boolean v2, v5, Lcom/tapjoy/internal/ih;->e:Z

    if-eqz v1, :cond_2

    .line 235
    iget-object v0, p0, Lcom/tapjoy/internal/ij;->c:Lcom/tapjoy/internal/ii;

    iget-object v0, v0, Lcom/tapjoy/internal/ii;->d:Lcom/tapjoy/internal/ih;

    invoke-direct {p0, v4}, Lcom/tapjoy/internal/ij;->a(I)[I

    move-result-object v1

    iput-object v1, v0, Lcom/tapjoy/internal/ih;->k:[I

    goto :goto_1

    .line 238
    :cond_2
    iget-object v0, p0, Lcom/tapjoy/internal/ij;->c:Lcom/tapjoy/internal/ii;

    iget-object v0, v0, Lcom/tapjoy/internal/ii;->d:Lcom/tapjoy/internal/ih;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/tapjoy/internal/ih;->k:[I

    .line 242
    :goto_1
    iget-object v0, p0, Lcom/tapjoy/internal/ij;->c:Lcom/tapjoy/internal/ii;

    iget-object v0, v0, Lcom/tapjoy/internal/ii;->d:Lcom/tapjoy/internal/ih;

    iget-object v1, p0, Lcom/tapjoy/internal/ij;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    iput v1, v0, Lcom/tapjoy/internal/ih;->j:I

    .line 245
    invoke-direct {p0}, Lcom/tapjoy/internal/ij;->h()V

    .line 247
    invoke-direct {p0}, Lcom/tapjoy/internal/ij;->l()Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    .line 251
    :cond_3
    iget-object v0, p0, Lcom/tapjoy/internal/ij;->c:Lcom/tapjoy/internal/ii;

    iget v1, v0, Lcom/tapjoy/internal/ii;->c:I

    add-int/2addr v1, v3

    iput v1, v0, Lcom/tapjoy/internal/ii;->c:I

    .line 253
    iget-object v1, v0, Lcom/tapjoy/internal/ii;->e:Ljava/util/List;

    iget-object v0, v0, Lcom/tapjoy/internal/ii;->d:Lcom/tapjoy/internal/ih;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private f()V
    .locals 3

    .line 261
    :cond_0
    invoke-direct {p0}, Lcom/tapjoy/internal/ij;->j()I

    .line 262
    iget-object v0, p0, Lcom/tapjoy/internal/ij;->a:[B

    const/4 v1, 0x0

    aget-byte v1, v0, v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 264
    aget-byte v1, v0, v2

    and-int/lit16 v1, v1, 0xff

    const/4 v2, 0x2

    .line 265
    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    .line 266
    iget-object v2, p0, Lcom/tapjoy/internal/ij;->c:Lcom/tapjoy/internal/ii;

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v0, v1

    iput v0, v2, Lcom/tapjoy/internal/ii;->m:I

    if-nez v0, :cond_1

    const/4 v0, -0x1

    .line 268
    iput v0, v2, Lcom/tapjoy/internal/ii;->m:I

    .line 271
    :cond_1
    iget v0, p0, Lcom/tapjoy/internal/ij;->d:I

    if-lez v0, :cond_2

    invoke-direct {p0}, Lcom/tapjoy/internal/ij;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    return-void
.end method

.method private g()V
    .locals 5

    const/4 v0, 0x0

    const-string v1, ""

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x6

    if-ge v2, v3, :cond_0

    .line 281
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/tapjoy/internal/ij;->k()I

    move-result v1

    int-to-char v1, v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const-string v2, "GIF"

    .line 283
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    .line 284
    iget-object v0, p0, Lcom/tapjoy/internal/ij;->c:Lcom/tapjoy/internal/ii;

    iput v2, v0, Lcom/tapjoy/internal/ii;->b:I

    return-void

    .line 6299
    :cond_1
    iget-object v1, p0, Lcom/tapjoy/internal/ij;->c:Lcom/tapjoy/internal/ii;

    .line 6416
    iget-object v3, p0, Lcom/tapjoy/internal/ij;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v3

    .line 6299
    iput v3, v1, Lcom/tapjoy/internal/ii;->f:I

    .line 6300
    iget-object v1, p0, Lcom/tapjoy/internal/ij;->c:Lcom/tapjoy/internal/ii;

    .line 7416
    iget-object v3, p0, Lcom/tapjoy/internal/ij;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v3

    .line 6300
    iput v3, v1, Lcom/tapjoy/internal/ii;->g:I

    .line 6302
    invoke-direct {p0}, Lcom/tapjoy/internal/ij;->k()I

    move-result v1

    .line 6304
    iget-object v3, p0, Lcom/tapjoy/internal/ij;->c:Lcom/tapjoy/internal/ii;

    and-int/lit16 v4, v1, 0x80

    if-eqz v4, :cond_2

    const/4 v0, 0x1

    :cond_2
    iput-boolean v0, v3, Lcom/tapjoy/internal/ii;->h:Z

    .line 6308
    iget-object v0, p0, Lcom/tapjoy/internal/ij;->c:Lcom/tapjoy/internal/ii;

    const/4 v2, 0x2

    and-int/lit8 v1, v1, 0x7

    shl-int v1, v2, v1

    iput v1, v0, Lcom/tapjoy/internal/ii;->i:I

    .line 6310
    invoke-direct {p0}, Lcom/tapjoy/internal/ij;->k()I

    move-result v1

    iput v1, v0, Lcom/tapjoy/internal/ii;->j:I

    .line 6312
    iget-object v0, p0, Lcom/tapjoy/internal/ij;->c:Lcom/tapjoy/internal/ii;

    invoke-direct {p0}, Lcom/tapjoy/internal/ij;->k()I

    move-result v1

    iput v1, v0, Lcom/tapjoy/internal/ii;->k:I

    .line 288
    iget-object v0, p0, Lcom/tapjoy/internal/ij;->c:Lcom/tapjoy/internal/ii;

    iget-boolean v0, v0, Lcom/tapjoy/internal/ii;->h:Z

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/tapjoy/internal/ij;->l()Z

    move-result v0

    if-nez v0, :cond_3

    .line 289
    iget-object v0, p0, Lcom/tapjoy/internal/ij;->c:Lcom/tapjoy/internal/ii;

    iget v1, v0, Lcom/tapjoy/internal/ii;->i:I

    invoke-direct {p0, v1}, Lcom/tapjoy/internal/ij;->a(I)[I

    move-result-object v1

    iput-object v1, v0, Lcom/tapjoy/internal/ii;->a:[I

    .line 290
    iget-object v0, p0, Lcom/tapjoy/internal/ij;->c:Lcom/tapjoy/internal/ii;

    iget-object v1, v0, Lcom/tapjoy/internal/ii;->a:[I

    iget v2, v0, Lcom/tapjoy/internal/ii;->j:I

    aget v1, v1, v2

    iput v1, v0, Lcom/tapjoy/internal/ii;->l:I

    :cond_3
    return-void
.end method

.method private h()V
    .locals 0

    .line 353
    invoke-direct {p0}, Lcom/tapjoy/internal/ij;->k()I

    .line 355
    invoke-direct {p0}, Lcom/tapjoy/internal/ij;->i()V

    return-void
.end method

.method private i()V
    .locals 3

    .line 365
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/tapjoy/internal/ij;->k()I

    move-result v0

    .line 366
    iget-object v1, p0, Lcom/tapjoy/internal/ij;->b:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lcom/tapjoy/internal/ij;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    if-gtz v0, :cond_0

    :catch_0
    return-void
.end method

.method private j()I
    .locals 4

    .line 378
    invoke-direct {p0}, Lcom/tapjoy/internal/ij;->k()I

    move-result v0

    iput v0, p0, Lcom/tapjoy/internal/ij;->d:I

    const/4 v1, 0x0

    if-lez v0, :cond_0

    .line 383
    :goto_0
    :try_start_0
    iget v0, p0, Lcom/tapjoy/internal/ij;->d:I

    if-ge v1, v0, :cond_0

    .line 384
    iget v0, p0, Lcom/tapjoy/internal/ij;->d:I

    sub-int/2addr v0, v1

    .line 385
    iget-object v2, p0, Lcom/tapjoy/internal/ij;->b:Ljava/nio/ByteBuffer;

    iget-object v3, p0, Lcom/tapjoy/internal/ij;->a:[B

    invoke-virtual {v2, v3, v1, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr v1, v0

    goto :goto_0

    .line 392
    :catch_0
    iget-object v0, p0, Lcom/tapjoy/internal/ij;->c:Lcom/tapjoy/internal/ii;

    const/4 v2, 0x1

    iput v2, v0, Lcom/tapjoy/internal/ii;->b:I

    :cond_0
    return v1
.end method

.method private k()I
    .locals 2

    .line 404
    :try_start_0
    iget-object v0, p0, Lcom/tapjoy/internal/ij;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit16 v0, v0, 0xff

    goto :goto_0

    .line 406
    :catch_0
    iget-object v0, p0, Lcom/tapjoy/internal/ij;->c:Lcom/tapjoy/internal/ii;

    const/4 v1, 0x1

    iput v1, v0, Lcom/tapjoy/internal/ii;->b:I

    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private l()Z
    .locals 1

    .line 420
    iget-object v0, p0, Lcom/tapjoy/internal/ij;->c:Lcom/tapjoy/internal/ii;

    iget v0, v0, Lcom/tapjoy/internal/ii;->b:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final a()Lcom/tapjoy/internal/ii;
    .locals 2

    .line 80
    iget-object v0, p0, Lcom/tapjoy/internal/ij;->b:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_2

    .line 83
    invoke-direct {p0}, Lcom/tapjoy/internal/ij;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/tapjoy/internal/ij;->c:Lcom/tapjoy/internal/ii;

    return-object v0

    .line 87
    :cond_0
    invoke-direct {p0}, Lcom/tapjoy/internal/ij;->g()V

    .line 88
    invoke-direct {p0}, Lcom/tapjoy/internal/ij;->l()Z

    move-result v0

    if-nez v0, :cond_1

    .line 89
    invoke-direct {p0}, Lcom/tapjoy/internal/ij;->b()V

    .line 90
    iget-object v0, p0, Lcom/tapjoy/internal/ij;->c:Lcom/tapjoy/internal/ii;

    iget v1, v0, Lcom/tapjoy/internal/ii;->c:I

    if-gez v1, :cond_1

    const/4 v1, 0x1

    .line 91
    iput v1, v0, Lcom/tapjoy/internal/ii;->b:I

    .line 95
    :cond_1
    iget-object v0, p0, Lcom/tapjoy/internal/ij;->c:Lcom/tapjoy/internal/ii;

    return-object v0

    .line 81
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You must call setData() before parseHeader()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a([B)Lcom/tapjoy/internal/ij;
    .locals 1

    if-eqz p1, :cond_0

    .line 59
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/tapjoy/internal/ij;->a(Ljava/nio/ByteBuffer;)Lcom/tapjoy/internal/ij;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 61
    iput-object p1, p0, Lcom/tapjoy/internal/ij;->b:Ljava/nio/ByteBuffer;

    .line 62
    iget-object p1, p0, Lcom/tapjoy/internal/ij;->c:Lcom/tapjoy/internal/ii;

    const/4 v0, 0x2

    iput v0, p1, Lcom/tapjoy/internal/ii;->b:I

    :goto_0
    return-object p0
.end method
