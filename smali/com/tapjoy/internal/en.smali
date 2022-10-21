.class public final Lcom/tapjoy/internal/en;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Lcom/tapjoy/internal/ix;

.field public b:Lcom/tapjoy/internal/ej;

.field private c:J

.field private d:J

.field private e:I

.field private f:I

.field private g:I

.field private h:J


# direct methods
.method public constructor <init>(Lcom/tapjoy/internal/ix;)V
    .locals 2

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 65
    iput-wide v0, p0, Lcom/tapjoy/internal/en;->c:J

    const-wide v0, 0x7fffffffffffffffL

    .line 67
    iput-wide v0, p0, Lcom/tapjoy/internal/en;->d:J

    const/4 v0, 0x2

    .line 71
    iput v0, p0, Lcom/tapjoy/internal/en;->f:I

    const/4 v0, -0x1

    .line 73
    iput v0, p0, Lcom/tapjoy/internal/en;->g:I

    const-wide/16 v0, -0x1

    .line 75
    iput-wide v0, p0, Lcom/tapjoy/internal/en;->h:J

    .line 80
    iput-object p1, p0, Lcom/tapjoy/internal/en;->a:Lcom/tapjoy/internal/ix;

    return-void
.end method

.method private a(I)V
    .locals 5

    .line 217
    :goto_0
    iget-wide v0, p0, Lcom/tapjoy/internal/en;->c:J

    iget-wide v2, p0, Lcom/tapjoy/internal/en;->d:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_8

    iget-object v0, p0, Lcom/tapjoy/internal/en;->a:Lcom/tapjoy/internal/ix;

    invoke-interface {v0}, Lcom/tapjoy/internal/ix;->b()Z

    move-result v0

    if-nez v0, :cond_8

    .line 218
    invoke-direct {p0}, Lcom/tapjoy/internal/en;->h()I

    move-result v0

    if-eqz v0, :cond_7

    shr-int/lit8 v1, v0, 0x3

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_6

    const/4 v2, 0x1

    if-eq v0, v2, :cond_5

    const/4 v2, 0x2

    if-eq v0, v2, :cond_4

    const/4 v2, 0x3

    if-eq v0, v2, :cond_3

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 243
    iput v1, p0, Lcom/tapjoy/internal/en;->f:I

    .line 244
    invoke-virtual {p0}, Lcom/tapjoy/internal/en;->e()I

    goto :goto_0

    .line 247
    :cond_0
    new-instance p1, Ljava/net/ProtocolException;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Unexpected field encoding: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    if-ne v1, p1, :cond_2

    return-void

    .line 228
    :cond_2
    new-instance p1, Ljava/net/ProtocolException;

    const-string v0, "Unexpected end group"

    invoke-direct {p1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 224
    :cond_3
    invoke-direct {p0, v1}, Lcom/tapjoy/internal/en;->a(I)V

    goto :goto_0

    .line 230
    :cond_4
    invoke-direct {p0}, Lcom/tapjoy/internal/en;->h()I

    move-result v0

    .line 231
    iget-wide v1, p0, Lcom/tapjoy/internal/en;->c:J

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/tapjoy/internal/en;->c:J

    .line 232
    iget-object v0, p0, Lcom/tapjoy/internal/en;->a:Lcom/tapjoy/internal/ix;

    invoke-interface {v0, v3, v4}, Lcom/tapjoy/internal/ix;->d(J)V

    goto :goto_0

    .line 239
    :cond_5
    iput v2, p0, Lcom/tapjoy/internal/en;->f:I

    .line 240
    invoke-virtual {p0}, Lcom/tapjoy/internal/en;->f()J

    goto :goto_0

    :cond_6
    const/4 v0, 0x0

    .line 235
    iput v0, p0, Lcom/tapjoy/internal/en;->f:I

    .line 236
    invoke-virtual {p0}, Lcom/tapjoy/internal/en;->d()J

    goto :goto_0

    .line 219
    :cond_7
    new-instance p1, Ljava/net/ProtocolException;

    const-string v0, "Unexpected tag 0"

    invoke-direct {p1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 250
    :cond_8
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method private b(I)V
    .locals 6

    .line 366
    iget v0, p0, Lcom/tapjoy/internal/en;->f:I

    const/4 v1, 0x6

    if-ne v0, p1, :cond_0

    .line 367
    iput v1, p0, Lcom/tapjoy/internal/en;->f:I

    return-void

    .line 369
    :cond_0
    iget-wide v2, p0, Lcom/tapjoy/internal/en;->c:J

    iget-wide v4, p0, Lcom/tapjoy/internal/en;->d:J

    cmp-long p1, v2, v4

    if-gtz p1, :cond_2

    cmp-long p1, v2, v4

    if-nez p1, :cond_1

    .line 373
    iget-wide v2, p0, Lcom/tapjoy/internal/en;->h:J

    iput-wide v2, p0, Lcom/tapjoy/internal/en;->d:J

    const-wide/16 v2, -0x1

    .line 374
    iput-wide v2, p0, Lcom/tapjoy/internal/en;->h:J

    .line 375
    iput v1, p0, Lcom/tapjoy/internal/en;->f:I

    return-void

    :cond_1
    const/4 p1, 0x7

    .line 377
    iput p1, p0, Lcom/tapjoy/internal/en;->f:I

    return-void

    .line 370
    :cond_2
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Expected to end at "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/tapjoy/internal/en;->d:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " but was "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/tapjoy/internal/en;->c:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private h()I
    .locals 6

    .line 282
    iget-wide v0, p0, Lcom/tapjoy/internal/en;->c:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/tapjoy/internal/en;->c:J

    .line 283
    iget-object v0, p0, Lcom/tapjoy/internal/en;->a:Lcom/tapjoy/internal/ix;

    invoke-interface {v0}, Lcom/tapjoy/internal/ix;->d()B

    move-result v0

    if-ltz v0, :cond_0

    return v0

    :cond_0
    and-int/lit8 v0, v0, 0x7f

    .line 288
    iget-wide v4, p0, Lcom/tapjoy/internal/en;->c:J

    add-long/2addr v4, v2

    iput-wide v4, p0, Lcom/tapjoy/internal/en;->c:J

    .line 289
    iget-object v1, p0, Lcom/tapjoy/internal/en;->a:Lcom/tapjoy/internal/ix;

    invoke-interface {v1}, Lcom/tapjoy/internal/ix;->d()B

    move-result v1

    if-ltz v1, :cond_1

    shl-int/lit8 v1, v1, 0x7

    :goto_0
    or-int/2addr v0, v1

    goto :goto_2

    :cond_1
    and-int/lit8 v1, v1, 0x7f

    shl-int/lit8 v1, v1, 0x7

    or-int/2addr v0, v1

    .line 293
    iget-wide v4, p0, Lcom/tapjoy/internal/en;->c:J

    add-long/2addr v4, v2

    iput-wide v4, p0, Lcom/tapjoy/internal/en;->c:J

    .line 294
    iget-object v1, p0, Lcom/tapjoy/internal/en;->a:Lcom/tapjoy/internal/ix;

    invoke-interface {v1}, Lcom/tapjoy/internal/ix;->d()B

    move-result v1

    if-ltz v1, :cond_2

    shl-int/lit8 v1, v1, 0xe

    goto :goto_0

    :cond_2
    and-int/lit8 v1, v1, 0x7f

    shl-int/lit8 v1, v1, 0xe

    or-int/2addr v0, v1

    .line 298
    iget-wide v4, p0, Lcom/tapjoy/internal/en;->c:J

    add-long/2addr v4, v2

    iput-wide v4, p0, Lcom/tapjoy/internal/en;->c:J

    .line 299
    iget-object v1, p0, Lcom/tapjoy/internal/en;->a:Lcom/tapjoy/internal/ix;

    invoke-interface {v1}, Lcom/tapjoy/internal/ix;->d()B

    move-result v1

    if-ltz v1, :cond_3

    shl-int/lit8 v1, v1, 0x15

    goto :goto_0

    :cond_3
    and-int/lit8 v1, v1, 0x7f

    shl-int/lit8 v1, v1, 0x15

    or-int/2addr v0, v1

    .line 303
    iget-wide v4, p0, Lcom/tapjoy/internal/en;->c:J

    add-long/2addr v4, v2

    iput-wide v4, p0, Lcom/tapjoy/internal/en;->c:J

    .line 304
    iget-object v1, p0, Lcom/tapjoy/internal/en;->a:Lcom/tapjoy/internal/ix;

    invoke-interface {v1}, Lcom/tapjoy/internal/ix;->d()B

    move-result v1

    shl-int/lit8 v4, v1, 0x1c

    or-int/2addr v0, v4

    if-gez v1, :cond_6

    const/4 v1, 0x0

    :goto_1
    const/4 v4, 0x5

    if-ge v1, v4, :cond_5

    .line 308
    iget-wide v4, p0, Lcom/tapjoy/internal/en;->c:J

    add-long/2addr v4, v2

    iput-wide v4, p0, Lcom/tapjoy/internal/en;->c:J

    .line 309
    iget-object v4, p0, Lcom/tapjoy/internal/en;->a:Lcom/tapjoy/internal/ix;

    invoke-interface {v4}, Lcom/tapjoy/internal/ix;->d()B

    move-result v4

    if-ltz v4, :cond_4

    return v0

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 313
    :cond_5
    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "Malformed VARINT"

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    :goto_2
    return v0
.end method


# virtual methods
.method public final a()J
    .locals 4

    .line 89
    iget v0, p0, Lcom/tapjoy/internal/en;->f:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 92
    iget v0, p0, Lcom/tapjoy/internal/en;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tapjoy/internal/en;->e:I

    const/16 v1, 0x41

    if-gt v0, v1, :cond_0

    .line 97
    iget-wide v0, p0, Lcom/tapjoy/internal/en;->h:J

    const-wide/16 v2, -0x1

    .line 98
    iput-wide v2, p0, Lcom/tapjoy/internal/en;->h:J

    const/4 v2, 0x6

    .line 99
    iput v2, p0, Lcom/tapjoy/internal/en;->f:I

    return-wide v0

    .line 93
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Wire recursion limit exceeded"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 90
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unexpected call to beginMessage()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a(J)V
    .locals 6

    .line 110
    iget v0, p0, Lcom/tapjoy/internal/en;->f:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_3

    .line 113
    iget v0, p0, Lcom/tapjoy/internal/en;->e:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/tapjoy/internal/en;->e:I

    if-ltz v0, :cond_2

    iget-wide v1, p0, Lcom/tapjoy/internal/en;->h:J

    const-wide/16 v3, -0x1

    cmp-long v5, v1, v3

    if-nez v5, :cond_2

    .line 116
    iget-wide v1, p0, Lcom/tapjoy/internal/en;->c:J

    iget-wide v3, p0, Lcom/tapjoy/internal/en;->d:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    .line 117
    :cond_0
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Expected to end at "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/tapjoy/internal/en;->d:J

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " but was "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/tapjoy/internal/en;->c:J

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 119
    :cond_1
    :goto_0
    iput-wide p1, p0, Lcom/tapjoy/internal/en;->d:J

    return-void

    .line 114
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "No corresponding call to beginMessage()"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 111
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Unexpected call to endMessage()"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final b()I
    .locals 7

    .line 128
    iget v0, p0, Lcom/tapjoy/internal/en;->f:I

    const/4 v1, 0x7

    const/4 v2, 0x2

    if-ne v0, v1, :cond_0

    .line 129
    iput v2, p0, Lcom/tapjoy/internal/en;->f:I

    .line 130
    iget v0, p0, Lcom/tapjoy/internal/en;->g:I

    return v0

    :cond_0
    const/4 v1, 0x6

    if-ne v0, v1, :cond_c

    .line 135
    :goto_0
    iget-wide v0, p0, Lcom/tapjoy/internal/en;->c:J

    iget-wide v3, p0, Lcom/tapjoy/internal/en;->d:J

    cmp-long v5, v0, v3

    if-gez v5, :cond_b

    iget-object v0, p0, Lcom/tapjoy/internal/en;->a:Lcom/tapjoy/internal/ix;

    invoke-interface {v0}, Lcom/tapjoy/internal/ix;->b()Z

    move-result v0

    if-nez v0, :cond_b

    .line 136
    invoke-direct {p0}, Lcom/tapjoy/internal/en;->h()I

    move-result v0

    if-eqz v0, :cond_a

    shr-int/lit8 v1, v0, 0x3

    .line 139
    iput v1, p0, Lcom/tapjoy/internal/en;->g:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_9

    const/4 v3, 0x1

    if-eq v0, v3, :cond_8

    if-eq v0, v2, :cond_4

    const/4 v3, 0x3

    if-eq v0, v3, :cond_3

    const/4 v2, 0x4

    if-eq v0, v2, :cond_2

    const/4 v2, 0x5

    if-ne v0, v2, :cond_1

    .line 172
    sget-object v0, Lcom/tapjoy/internal/ej;->d:Lcom/tapjoy/internal/ej;

    iput-object v0, p0, Lcom/tapjoy/internal/en;->b:Lcom/tapjoy/internal/ej;

    .line 173
    iput v2, p0, Lcom/tapjoy/internal/en;->f:I

    return v1

    .line 177
    :cond_1
    new-instance v1, Ljava/net/ProtocolException;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "Unexpected field encoding: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 147
    :cond_2
    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "Unexpected end group"

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 143
    :cond_3
    invoke-direct {p0, v1}, Lcom/tapjoy/internal/en;->a(I)V

    goto :goto_0

    .line 150
    :cond_4
    sget-object v0, Lcom/tapjoy/internal/ej;->c:Lcom/tapjoy/internal/ej;

    iput-object v0, p0, Lcom/tapjoy/internal/en;->b:Lcom/tapjoy/internal/ej;

    .line 151
    iput v2, p0, Lcom/tapjoy/internal/en;->f:I

    .line 152
    invoke-direct {p0}, Lcom/tapjoy/internal/en;->h()I

    move-result v0

    if-ltz v0, :cond_7

    .line 154
    iget-wide v1, p0, Lcom/tapjoy/internal/en;->h:J

    const-wide/16 v3, -0x1

    cmp-long v5, v1, v3

    if-nez v5, :cond_6

    .line 156
    iget-wide v1, p0, Lcom/tapjoy/internal/en;->d:J

    iput-wide v1, p0, Lcom/tapjoy/internal/en;->h:J

    .line 157
    iget-wide v3, p0, Lcom/tapjoy/internal/en;->c:J

    int-to-long v5, v0

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/tapjoy/internal/en;->d:J

    cmp-long v0, v3, v1

    if-gtz v0, :cond_5

    .line 159
    iget v0, p0, Lcom/tapjoy/internal/en;->g:I

    return v0

    .line 158
    :cond_5
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 154
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 153
    :cond_7
    new-instance v1, Ljava/net/ProtocolException;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "Negative length: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 167
    :cond_8
    sget-object v0, Lcom/tapjoy/internal/ej;->b:Lcom/tapjoy/internal/ej;

    iput-object v0, p0, Lcom/tapjoy/internal/en;->b:Lcom/tapjoy/internal/ej;

    .line 168
    iput v3, p0, Lcom/tapjoy/internal/en;->f:I

    return v1

    .line 162
    :cond_9
    sget-object v0, Lcom/tapjoy/internal/ej;->a:Lcom/tapjoy/internal/ej;

    iput-object v0, p0, Lcom/tapjoy/internal/en;->b:Lcom/tapjoy/internal/ej;

    const/4 v0, 0x0

    .line 163
    iput v0, p0, Lcom/tapjoy/internal/en;->f:I

    return v1

    .line 137
    :cond_a
    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "Unexpected tag 0"

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    const/4 v0, -0x1

    return v0

    .line 132
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unexpected call to nextTag()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public final c()I
    .locals 3

    .line 273
    iget v0, p0, Lcom/tapjoy/internal/en;->f:I

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 274
    :cond_0
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected VARINT or LENGTH_DELIMITED but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/tapjoy/internal/en;->f:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 276
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/tapjoy/internal/en;->h()I

    move-result v0

    const/4 v1, 0x0

    .line 277
    invoke-direct {p0, v1}, Lcom/tapjoy/internal/en;->b(I)V

    return v0
.end method

.method public final d()J
    .locals 8

    .line 323
    iget v0, p0, Lcom/tapjoy/internal/en;->f:I

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 324
    :cond_0
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected VARINT or LENGTH_DELIMITED but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/tapjoy/internal/en;->f:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1
    const/16 v4, 0x40

    if-ge v3, v4, :cond_3

    .line 329
    iget-wide v4, p0, Lcom/tapjoy/internal/en;->c:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/tapjoy/internal/en;->c:J

    .line 330
    iget-object v4, p0, Lcom/tapjoy/internal/en;->a:Lcom/tapjoy/internal/ix;

    invoke-interface {v4}, Lcom/tapjoy/internal/ix;->d()B

    move-result v4

    and-int/lit8 v5, v4, 0x7f

    int-to-long v5, v5

    shl-long/2addr v5, v3

    or-long/2addr v0, v5

    and-int/lit16 v4, v4, 0x80

    if-nez v4, :cond_2

    .line 333
    invoke-direct {p0, v2}, Lcom/tapjoy/internal/en;->b(I)V

    return-wide v0

    :cond_2
    add-int/lit8 v3, v3, 0x7

    goto :goto_1

    .line 338
    :cond_3
    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "WireInput encountered a malformed varint"

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method public final e()I
    .locals 6

    .line 343
    iget v0, p0, Lcom/tapjoy/internal/en;->f:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 344
    :cond_0
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected FIXED32 or LENGTH_DELIMITED but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/tapjoy/internal/en;->f:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 346
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/tapjoy/internal/en;->a:Lcom/tapjoy/internal/ix;

    const-wide/16 v2, 0x4

    invoke-interface {v0, v2, v3}, Lcom/tapjoy/internal/ix;->a(J)V

    .line 347
    iget-wide v4, p0, Lcom/tapjoy/internal/en;->c:J

    add-long/2addr v4, v2

    iput-wide v4, p0, Lcom/tapjoy/internal/en;->c:J

    .line 348
    iget-object v0, p0, Lcom/tapjoy/internal/en;->a:Lcom/tapjoy/internal/ix;

    invoke-interface {v0}, Lcom/tapjoy/internal/ix;->f()I

    move-result v0

    .line 349
    invoke-direct {p0, v1}, Lcom/tapjoy/internal/en;->b(I)V

    return v0
.end method

.method public final f()J
    .locals 6

    .line 355
    iget v0, p0, Lcom/tapjoy/internal/en;->f:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 356
    :cond_0
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected FIXED64 or LENGTH_DELIMITED but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/tapjoy/internal/en;->f:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 358
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/tapjoy/internal/en;->a:Lcom/tapjoy/internal/ix;

    const-wide/16 v2, 0x8

    invoke-interface {v0, v2, v3}, Lcom/tapjoy/internal/ix;->a(J)V

    .line 359
    iget-wide v4, p0, Lcom/tapjoy/internal/en;->c:J

    add-long/2addr v4, v2

    iput-wide v4, p0, Lcom/tapjoy/internal/en;->c:J

    .line 360
    iget-object v0, p0, Lcom/tapjoy/internal/en;->a:Lcom/tapjoy/internal/ix;

    invoke-interface {v0}, Lcom/tapjoy/internal/ix;->g()J

    move-result-wide v2

    .line 361
    invoke-direct {p0, v1}, Lcom/tapjoy/internal/en;->b(I)V

    return-wide v2
.end method

.method final g()J
    .locals 4

    .line 383
    iget v0, p0, Lcom/tapjoy/internal/en;->f:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 386
    iget-wide v0, p0, Lcom/tapjoy/internal/en;->d:J

    iget-wide v2, p0, Lcom/tapjoy/internal/en;->c:J

    sub-long/2addr v0, v2

    .line 387
    iget-object v2, p0, Lcom/tapjoy/internal/en;->a:Lcom/tapjoy/internal/ix;

    invoke-interface {v2, v0, v1}, Lcom/tapjoy/internal/ix;->a(J)V

    const/4 v2, 0x6

    .line 388
    iput v2, p0, Lcom/tapjoy/internal/en;->f:I

    .line 390
    iget-wide v2, p0, Lcom/tapjoy/internal/en;->d:J

    iput-wide v2, p0, Lcom/tapjoy/internal/en;->c:J

    .line 391
    iget-wide v2, p0, Lcom/tapjoy/internal/en;->h:J

    iput-wide v2, p0, Lcom/tapjoy/internal/en;->d:J

    const-wide/16 v2, -0x1

    .line 392
    iput-wide v2, p0, Lcom/tapjoy/internal/en;->h:J

    return-wide v0

    .line 384
    :cond_0
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected LENGTH_DELIMITED but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/tapjoy/internal/en;->f:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
