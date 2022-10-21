.class final Lcom/tapjoy/internal/jc;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:[B

.field b:I

.field c:I

.field d:Z

.field e:Z

.field f:Lcom/tapjoy/internal/jc;

.field g:Lcom/tapjoy/internal/jc;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x2000

    new-array v0, v0, [B

    .line 61
    iput-object v0, p0, Lcom/tapjoy/internal/jc;->a:[B

    const/4 v0, 0x1

    .line 62
    iput-boolean v0, p0, Lcom/tapjoy/internal/jc;->e:Z

    const/4 v0, 0x0

    .line 63
    iput-boolean v0, p0, Lcom/tapjoy/internal/jc;->d:Z

    return-void
.end method

.method constructor <init>(Lcom/tapjoy/internal/jc;)V
    .locals 3

    .line 67
    iget-object v0, p1, Lcom/tapjoy/internal/jc;->a:[B

    iget v1, p1, Lcom/tapjoy/internal/jc;->b:I

    iget v2, p1, Lcom/tapjoy/internal/jc;->c:I

    invoke-direct {p0, v0, v1, v2}, Lcom/tapjoy/internal/jc;-><init>([BII)V

    const/4 v0, 0x1

    .line 68
    iput-boolean v0, p1, Lcom/tapjoy/internal/jc;->d:Z

    return-void
.end method

.method constructor <init>([BII)V
    .locals 0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Lcom/tapjoy/internal/jc;->a:[B

    .line 73
    iput p2, p0, Lcom/tapjoy/internal/jc;->b:I

    .line 74
    iput p3, p0, Lcom/tapjoy/internal/jc;->c:I

    const/4 p1, 0x0

    .line 75
    iput-boolean p1, p0, Lcom/tapjoy/internal/jc;->e:Z

    const/4 p1, 0x1

    .line 76
    iput-boolean p1, p0, Lcom/tapjoy/internal/jc;->d:Z

    return-void
.end method


# virtual methods
.method public final a()Lcom/tapjoy/internal/jc;
    .locals 4

    .line 84
    iget-object v0, p0, Lcom/tapjoy/internal/jc;->f:Lcom/tapjoy/internal/jc;

    const/4 v1, 0x0

    if-eq v0, p0, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 85
    :goto_0
    iget-object v2, p0, Lcom/tapjoy/internal/jc;->g:Lcom/tapjoy/internal/jc;

    iget-object v3, p0, Lcom/tapjoy/internal/jc;->f:Lcom/tapjoy/internal/jc;

    iput-object v3, v2, Lcom/tapjoy/internal/jc;->f:Lcom/tapjoy/internal/jc;

    .line 86
    iget-object v3, p0, Lcom/tapjoy/internal/jc;->f:Lcom/tapjoy/internal/jc;

    iput-object v2, v3, Lcom/tapjoy/internal/jc;->g:Lcom/tapjoy/internal/jc;

    .line 87
    iput-object v1, p0, Lcom/tapjoy/internal/jc;->f:Lcom/tapjoy/internal/jc;

    .line 88
    iput-object v1, p0, Lcom/tapjoy/internal/jc;->g:Lcom/tapjoy/internal/jc;

    return-object v0
.end method

.method public final a(Lcom/tapjoy/internal/jc;)Lcom/tapjoy/internal/jc;
    .locals 1

    .line 97
    iput-object p0, p1, Lcom/tapjoy/internal/jc;->g:Lcom/tapjoy/internal/jc;

    .line 98
    iget-object v0, p0, Lcom/tapjoy/internal/jc;->f:Lcom/tapjoy/internal/jc;

    iput-object v0, p1, Lcom/tapjoy/internal/jc;->f:Lcom/tapjoy/internal/jc;

    .line 99
    iget-object v0, p0, Lcom/tapjoy/internal/jc;->f:Lcom/tapjoy/internal/jc;

    iput-object p1, v0, Lcom/tapjoy/internal/jc;->g:Lcom/tapjoy/internal/jc;

    .line 100
    iput-object p1, p0, Lcom/tapjoy/internal/jc;->f:Lcom/tapjoy/internal/jc;

    return-object p1
.end method

.method public final a(Lcom/tapjoy/internal/jc;I)V
    .locals 4

    .line 151
    iget-boolean v0, p1, Lcom/tapjoy/internal/jc;->e:Z

    if-eqz v0, :cond_3

    .line 152
    iget v0, p1, Lcom/tapjoy/internal/jc;->c:I

    add-int v1, v0, p2

    const/16 v2, 0x2000

    if-le v1, v2, :cond_2

    .line 154
    iget-boolean v1, p1, Lcom/tapjoy/internal/jc;->d:Z

    if-nez v1, :cond_1

    add-int v1, v0, p2

    .line 155
    iget v3, p1, Lcom/tapjoy/internal/jc;->b:I

    sub-int/2addr v1, v3

    if-gt v1, v2, :cond_0

    .line 156
    iget-object v1, p1, Lcom/tapjoy/internal/jc;->a:[B

    sub-int/2addr v0, v3

    const/4 v2, 0x0

    invoke-static {v1, v3, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 157
    iget v0, p1, Lcom/tapjoy/internal/jc;->c:I

    iget v1, p1, Lcom/tapjoy/internal/jc;->b:I

    sub-int/2addr v0, v1

    iput v0, p1, Lcom/tapjoy/internal/jc;->c:I

    .line 158
    iput v2, p1, Lcom/tapjoy/internal/jc;->b:I

    goto :goto_0

    .line 155
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 154
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 161
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/tapjoy/internal/jc;->a:[B

    iget v1, p0, Lcom/tapjoy/internal/jc;->b:I

    iget-object v2, p1, Lcom/tapjoy/internal/jc;->a:[B

    iget v3, p1, Lcom/tapjoy/internal/jc;->c:I

    invoke-static {v0, v1, v2, v3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 162
    iget v0, p1, Lcom/tapjoy/internal/jc;->c:I

    add-int/2addr v0, p2

    iput v0, p1, Lcom/tapjoy/internal/jc;->c:I

    .line 163
    iget p1, p0, Lcom/tapjoy/internal/jc;->b:I

    add-int/2addr p1, p2

    iput p1, p0, Lcom/tapjoy/internal/jc;->b:I

    return-void

    .line 151
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method
