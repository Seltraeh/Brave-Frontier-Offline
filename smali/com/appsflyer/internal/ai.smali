.class public Lcom/appsflyer/internal/ai;
.super Ljava/io/FilterInputStream;
.source ""


# instance fields
.field private ı:S

.field private ǃ:[B

.field private ɩ:[J

.field private ɹ:I

.field private final Ι:I

.field private ι:[J

.field private І:I

.field private і:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;IISII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 57
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    const p1, 0x7fffffff

    .line 34
    iput p1, p0, Lcom/appsflyer/internal/ai;->І:I

    const/4 p1, 0x4

    .line 58
    invoke-static {p4, p1}, Ljava/lang/Math;->max(II)I

    move-result p4

    const/16 v0, 0x8

    invoke-static {p4, v0}, Ljava/lang/Math;->min(II)I

    move-result p4

    iput p4, p0, Lcom/appsflyer/internal/ai;->Ι:I

    .line 60
    new-array v0, p4, [B

    iput-object v0, p0, Lcom/appsflyer/internal/ai;->ǃ:[B

    new-array v0, p1, [J

    .line 61
    iput-object v0, p0, Lcom/appsflyer/internal/ai;->ɩ:[J

    new-array p1, p1, [J

    .line 62
    iput-object p1, p0, Lcom/appsflyer/internal/ai;->ι:[J

    .line 64
    iput p4, p0, Lcom/appsflyer/internal/ai;->і:I

    .line 65
    iput p4, p0, Lcom/appsflyer/internal/ai;->ɹ:I

    xor-int p1, p2, p6

    xor-int p2, p4, p6

    .line 67
    invoke-static {p1, p2}, Lcom/appsflyer/internal/ae;->ǃ(II)[J

    move-result-object p1

    iput-object p1, p0, Lcom/appsflyer/internal/ai;->ɩ:[J

    xor-int p1, p3, p6

    xor-int p2, p5, p6

    .line 69
    invoke-static {p1, p2}, Lcom/appsflyer/internal/ae;->ǃ(II)[J

    move-result-object p1

    iput-object p1, p0, Lcom/appsflyer/internal/ai;->ι:[J

    return-void
.end method

.method private ǃ()V
    .locals 8

    .line 154
    iget-object v0, p0, Lcom/appsflyer/internal/ai;->ɩ:[J

    iget-object v1, p0, Lcom/appsflyer/internal/ai;->ι:[J

    iget-short v2, p0, Lcom/appsflyer/internal/ai;->ı:S

    invoke-static {v0, v1, v2}, Lcom/appsflyer/internal/ae;->ι([J[JI)V

    const/4 v0, 0x0

    .line 155
    :goto_0
    iget v1, p0, Lcom/appsflyer/internal/ai;->Ι:I

    if-ge v0, v1, :cond_0

    .line 157
    iget-object v1, p0, Lcom/appsflyer/internal/ai;->ǃ:[B

    aget-byte v2, v1, v0

    int-to-long v2, v2

    iget-object v4, p0, Lcom/appsflyer/internal/ai;->ɩ:[J

    iget-short v5, p0, Lcom/appsflyer/internal/ai;->ı:S

    aget-wide v5, v4, v5

    shl-int/lit8 v4, v0, 0x3

    shr-long v4, v5, v4

    const-wide/16 v6, 0xff

    and-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v3, v2

    int-to-byte v2, v3

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 159
    :cond_0
    iget-short v0, p0, Lcom/appsflyer/internal/ai;->ı:S

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0x4

    int-to-short v0, v0

    iput-short v0, p0, Lcom/appsflyer/internal/ai;->ı:S

    return-void
.end method

.method private Ι()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 170
    iget v0, p0, Lcom/appsflyer/internal/ai;->І:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    .line 172
    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    iput v0, p0, Lcom/appsflyer/internal/ai;->І:I

    .line 175
    :cond_0
    iget v0, p0, Lcom/appsflyer/internal/ai;->і:I

    iget v1, p0, Lcom/appsflyer/internal/ai;->Ι:I

    if-ne v0, v1, :cond_6

    .line 178
    iget-object v0, p0, Lcom/appsflyer/internal/ai;->ǃ:[B

    iget v1, p0, Lcom/appsflyer/internal/ai;->І:I

    int-to-byte v2, v1

    const/4 v3, 0x0

    aput-byte v2, v0, v3

    const-string v0, "unexpected block size"

    if-ltz v1, :cond_5

    const/4 v1, 0x1

    .line 192
    :cond_1
    iget-object v2, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    iget-object v4, p0, Lcom/appsflyer/internal/ai;->ǃ:[B

    iget v5, p0, Lcom/appsflyer/internal/ai;->Ι:I

    sub-int/2addr v5, v1

    invoke-virtual {v2, v4, v1, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    if-lez v2, :cond_2

    add-int/2addr v1, v2

    .line 205
    iget v2, p0, Lcom/appsflyer/internal/ai;->Ι:I

    if-lt v1, v2, :cond_1

    .line 209
    :cond_2
    iget v2, p0, Lcom/appsflyer/internal/ai;->Ι:I

    if-lt v1, v2, :cond_4

    .line 215
    invoke-direct {p0}, Lcom/appsflyer/internal/ai;->ǃ()V

    .line 218
    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    iput v0, p0, Lcom/appsflyer/internal/ai;->І:I

    .line 221
    iput v3, p0, Lcom/appsflyer/internal/ai;->і:I

    if-gez v0, :cond_3

    .line 225
    iget v0, p0, Lcom/appsflyer/internal/ai;->Ι:I

    iget-object v1, p0, Lcom/appsflyer/internal/ai;->ǃ:[B

    add-int/lit8 v2, v0, -0x1

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    sub-int/2addr v0, v1

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/appsflyer/internal/ai;->Ι:I

    :goto_0
    iput v0, p0, Lcom/appsflyer/internal/ai;->ɹ:I

    goto :goto_1

    .line 211
    :cond_4
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 184
    :cond_5
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 230
    :cond_6
    :goto_1
    iget v0, p0, Lcom/appsflyer/internal/ai;->ɹ:I

    return v0
.end method


# virtual methods
.method public available()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 135
    invoke-direct {p0}, Lcom/appsflyer/internal/ai;->Ι()I

    .line 136
    iget v0, p0, Lcom/appsflyer/internal/ai;->ɹ:I

    iget v1, p0, Lcom/appsflyer/internal/ai;->і:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public markSupported()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 81
    invoke-direct {p0}, Lcom/appsflyer/internal/ai;->Ι()I

    .line 84
    iget v0, p0, Lcom/appsflyer/internal/ai;->і:I

    iget v1, p0, Lcom/appsflyer/internal/ai;->ɹ:I

    if-lt v0, v1, :cond_0

    const/4 v0, -0x1

    return v0

    .line 90
    :cond_0
    iget-object v1, p0, Lcom/appsflyer/internal/ai;->ǃ:[B

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/appsflyer/internal/ai;->і:I

    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public read([BII)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    add-int v0, p2, p3

    move v1, p2

    :goto_0
    if-ge v1, v0, :cond_2

    .line 104
    invoke-direct {p0}, Lcom/appsflyer/internal/ai;->Ι()I

    .line 107
    iget v2, p0, Lcom/appsflyer/internal/ai;->і:I

    iget v3, p0, Lcom/appsflyer/internal/ai;->ɹ:I

    if-lt v2, v3, :cond_1

    if-ne v1, p2, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    sub-int/2addr v0, v1

    sub-int/2addr p3, v0

    return p3

    :cond_1
    add-int/lit8 v3, v1, 0x1

    .line 113
    iget-object v4, p0, Lcom/appsflyer/internal/ai;->ǃ:[B

    add-int/lit8 v5, v2, 0x1

    iput v5, p0, Lcom/appsflyer/internal/ai;->і:I

    aget-byte v2, v4, v2

    aput-byte v2, p1, v1

    move v1, v3

    goto :goto_0

    :cond_2
    return p3
.end method

.method public skip(J)J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    :goto_0
    cmp-long v2, v0, p1

    if-gez v2, :cond_0

    .line 124
    invoke-virtual {p0}, Lcom/appsflyer/internal/ai;->read()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    goto :goto_0

    :cond_0
    return-wide v0
.end method
