.class public final Lcom/tapjoy/internal/eo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Lcom/tapjoy/internal/iw;


# direct methods
.method public constructor <init>(Lcom/tapjoy/internal/iw;)V
    .locals 0

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 190
    iput-object p1, p0, Lcom/tapjoy/internal/eo;->a:Lcom/tapjoy/internal/iw;

    return-void
.end method

.method static a(I)I
    .locals 1

    and-int/lit8 v0, p0, -0x80

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    and-int/lit16 v0, p0, -0x4000

    if-nez v0, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    const/high16 v0, -0x200000

    and-int/2addr v0, p0

    if-nez v0, :cond_2

    const/4 p0, 0x3

    return p0

    :cond_2
    const/high16 v0, -0x10000000

    and-int/2addr p0, v0

    if-nez p0, :cond_3

    const/4 p0, 0x4

    return p0

    :cond_3
    const/4 p0, 0x5

    return p0
.end method

.method static a(ILcom/tapjoy/internal/ej;)I
    .locals 0

    shl-int/lit8 p0, p0, 0x3

    .line 63
    iget p1, p1, Lcom/tapjoy/internal/ej;->e:I

    or-int/2addr p0, p1

    return p0
.end method

.method static a(J)I
    .locals 5

    const-wide/16 v0, -0x80

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const-wide/16 v0, -0x4000

    and-long/2addr v0, p0

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    const-wide/32 v0, -0x200000

    and-long/2addr v0, p0

    cmp-long v4, v0, v2

    if-nez v4, :cond_2

    const/4 p0, 0x3

    return p0

    :cond_2
    const-wide/32 v0, -0x10000000

    and-long/2addr v0, p0

    cmp-long v4, v0, v2

    if-nez v4, :cond_3

    const/4 p0, 0x4

    return p0

    :cond_3
    const-wide v0, -0x800000000L

    and-long/2addr v0, p0

    cmp-long v4, v0, v2

    if-nez v4, :cond_4

    const/4 p0, 0x5

    return p0

    :cond_4
    const-wide v0, -0x40000000000L

    and-long/2addr v0, p0

    cmp-long v4, v0, v2

    if-nez v4, :cond_5

    const/4 p0, 0x6

    return p0

    :cond_5
    const-wide/high16 v0, -0x2000000000000L

    and-long/2addr v0, p0

    cmp-long v4, v0, v2

    if-nez v4, :cond_6

    const/4 p0, 0x7

    return p0

    :cond_6
    const-wide/high16 v0, -0x100000000000000L

    and-long/2addr v0, p0

    cmp-long v4, v0, v2

    if-nez v4, :cond_7

    const/16 p0, 0x8

    return p0

    :cond_7
    const-wide/high16 v0, -0x8000000000000000L

    and-long/2addr p0, v0

    cmp-long v0, p0, v2

    if-nez v0, :cond_8

    const/16 p0, 0x9

    return p0

    :cond_8
    const/16 p0, 0xa

    return p0
.end method

.method static b(I)I
    .locals 1

    shl-int/lit8 v0, p0, 0x1

    shr-int/lit8 p0, p0, 0x1f

    xor-int/2addr p0, v0

    return p0
.end method

.method static b(J)J
    .locals 3

    const/4 v0, 0x1

    shl-long v0, p0, v0

    const/16 v2, 0x3f

    shr-long/2addr p0, v2

    xor-long/2addr p0, v0

    return-wide p0
.end method


# virtual methods
.method public final a(Lcom/tapjoy/internal/iy;)V
    .locals 1

    .line 194
    iget-object v0, p0, Lcom/tapjoy/internal/eo;->a:Lcom/tapjoy/internal/iw;

    invoke-interface {v0, p1}, Lcom/tapjoy/internal/iw;->b(Lcom/tapjoy/internal/iy;)Lcom/tapjoy/internal/iw;

    return-void
.end method

.method public final c(I)V
    .locals 2

    :goto_0
    and-int/lit8 v0, p1, -0x80

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/tapjoy/internal/eo;->a:Lcom/tapjoy/internal/iw;

    and-int/lit8 v1, p1, 0x7f

    or-int/lit16 v1, v1, 0x80

    invoke-interface {v0, v1}, Lcom/tapjoy/internal/iw;->e(I)Lcom/tapjoy/internal/iw;

    ushr-int/lit8 p1, p1, 0x7

    goto :goto_0

    .line 225
    :cond_0
    iget-object v0, p0, Lcom/tapjoy/internal/eo;->a:Lcom/tapjoy/internal/iw;

    invoke-interface {v0, p1}, Lcom/tapjoy/internal/iw;->e(I)Lcom/tapjoy/internal/iw;

    return-void
.end method

.method public final c(J)V
    .locals 5

    :goto_0
    const-wide/16 v0, -0x80

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 231
    iget-object v0, p0, Lcom/tapjoy/internal/eo;->a:Lcom/tapjoy/internal/iw;

    long-to-int v1, p1

    and-int/lit8 v1, v1, 0x7f

    or-int/lit16 v1, v1, 0x80

    invoke-interface {v0, v1}, Lcom/tapjoy/internal/iw;->e(I)Lcom/tapjoy/internal/iw;

    const/4 v0, 0x7

    ushr-long/2addr p1, v0

    goto :goto_0

    .line 234
    :cond_0
    iget-object v0, p0, Lcom/tapjoy/internal/eo;->a:Lcom/tapjoy/internal/iw;

    long-to-int p2, p1

    invoke-interface {v0, p2}, Lcom/tapjoy/internal/iw;->e(I)Lcom/tapjoy/internal/iw;

    return-void
.end method

.method public final d(I)V
    .locals 1

    .line 239
    iget-object v0, p0, Lcom/tapjoy/internal/eo;->a:Lcom/tapjoy/internal/iw;

    invoke-interface {v0, p1}, Lcom/tapjoy/internal/iw;->d(I)Lcom/tapjoy/internal/iw;

    return-void
.end method

.method public final d(J)V
    .locals 1

    .line 244
    iget-object v0, p0, Lcom/tapjoy/internal/eo;->a:Lcom/tapjoy/internal/iw;

    invoke-interface {v0, p1, p2}, Lcom/tapjoy/internal/iw;->f(J)Lcom/tapjoy/internal/iw;

    return-void
.end method
