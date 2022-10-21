.class public final Lcom/tapjoy/internal/ik;
.super Landroid/widget/ImageView;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tapjoy/internal/ik$a;,
        Lcom/tapjoy/internal/ik$b;
    }
.end annotation


# instance fields
.field private a:Lcom/tapjoy/internal/ig;

.field private b:Landroid/graphics/Bitmap;

.field private final c:Landroid/os/Handler;

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Ljava/lang/Thread;

.field private h:Lcom/tapjoy/internal/ik$b;

.field private i:J

.field private j:Lcom/tapjoy/internal/ik$a;

.field private final k:Ljava/lang/Runnable;

.field private final l:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 52
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 19
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/tapjoy/internal/ik;->c:Landroid/os/Handler;

    const/4 p1, 0x0

    .line 24
    iput-object p1, p0, Lcom/tapjoy/internal/ik;->h:Lcom/tapjoy/internal/ik$b;

    const-wide/16 v0, -0x1

    .line 25
    iput-wide v0, p0, Lcom/tapjoy/internal/ik;->i:J

    .line 26
    iput-object p1, p0, Lcom/tapjoy/internal/ik;->j:Lcom/tapjoy/internal/ik$a;

    .line 28
    new-instance p1, Lcom/tapjoy/internal/ik$1;

    invoke-direct {p1, p0}, Lcom/tapjoy/internal/ik$1;-><init>(Lcom/tapjoy/internal/ik;)V

    iput-object p1, p0, Lcom/tapjoy/internal/ik;->k:Ljava/lang/Runnable;

    .line 37
    new-instance p1, Lcom/tapjoy/internal/ik$2;

    invoke-direct {p1, p0}, Lcom/tapjoy/internal/ik$2;-><init>(Lcom/tapjoy/internal/ik;)V

    iput-object p1, p0, Lcom/tapjoy/internal/ik;->l:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic a(Lcom/tapjoy/internal/ik;)Landroid/graphics/Bitmap;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/tapjoy/internal/ik;->b:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic b(Lcom/tapjoy/internal/ik;)Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lcom/tapjoy/internal/ik;->b:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic c(Lcom/tapjoy/internal/ik;)Lcom/tapjoy/internal/ig;
    .locals 1

    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lcom/tapjoy/internal/ik;->a:Lcom/tapjoy/internal/ig;

    return-object v0
.end method

.method static synthetic d(Lcom/tapjoy/internal/ik;)Ljava/lang/Thread;
    .locals 1

    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lcom/tapjoy/internal/ik;->g:Ljava/lang/Thread;

    return-object v0
.end method

.method private d()V
    .locals 2

    .line 122
    iget-object v0, p0, Lcom/tapjoy/internal/ik;->a:Lcom/tapjoy/internal/ig;

    .line 1294
    iget v1, v0, Lcom/tapjoy/internal/ig;->a:I

    if-nez v1, :cond_0

    return-void

    .line 123
    :cond_0
    invoke-virtual {v0}, Lcom/tapjoy/internal/ig;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/tapjoy/internal/ik;->d:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 124
    iput-boolean v0, p0, Lcom/tapjoy/internal/ik;->e:Z

    .line 125
    invoke-direct {p0}, Lcom/tapjoy/internal/ik;->f()V

    :cond_1
    return-void
.end method

.method private e()Z
    .locals 1

    .line 143
    iget-boolean v0, p0, Lcom/tapjoy/internal/ik;->d:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/tapjoy/internal/ik;->e:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/tapjoy/internal/ik;->a:Lcom/tapjoy/internal/ig;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tapjoy/internal/ik;->g:Ljava/lang/Thread;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic e(Lcom/tapjoy/internal/ik;)Z
    .locals 1

    const/4 v0, 0x0

    .line 14
    iput-boolean v0, p0, Lcom/tapjoy/internal/ik;->f:Z

    return v0
.end method

.method private f()V
    .locals 1

    .line 237
    invoke-direct {p0}, Lcom/tapjoy/internal/ik;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 238
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/tapjoy/internal/ik;->g:Ljava/lang/Thread;

    .line 239
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x1

    .line 104
    iput-boolean v0, p0, Lcom/tapjoy/internal/ik;->d:Z

    .line 105
    invoke-direct {p0}, Lcom/tapjoy/internal/ik;->f()V

    return-void
.end method

.method public final a(Lcom/tapjoy/internal/ii;[B)V
    .locals 2

    .line 57
    :try_start_0
    new-instance v0, Lcom/tapjoy/internal/ig;

    new-instance v1, Lcom/tapjoy/internal/il;

    invoke-direct {v1}, Lcom/tapjoy/internal/il;-><init>()V

    invoke-static {p2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-direct {v0, v1, p1, p2}, Lcom/tapjoy/internal/ig;-><init>(Lcom/tapjoy/internal/ig$a;Lcom/tapjoy/internal/ii;Ljava/nio/ByteBuffer;)V

    iput-object v0, p0, Lcom/tapjoy/internal/ik;->a:Lcom/tapjoy/internal/ig;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    iget-boolean p1, p0, Lcom/tapjoy/internal/ik;->d:Z

    if-eqz p1, :cond_0

    .line 65
    invoke-direct {p0}, Lcom/tapjoy/internal/ik;->f()V

    return-void

    .line 67
    :cond_0
    invoke-direct {p0}, Lcom/tapjoy/internal/ik;->d()V

    return-void

    :catch_0
    const/4 p1, 0x0

    .line 59
    iput-object p1, p0, Lcom/tapjoy/internal/ik;->a:Lcom/tapjoy/internal/ig;

    return-void
.end method

.method public final b()V
    .locals 1

    const/4 v0, 0x0

    .line 113
    iput-boolean v0, p0, Lcom/tapjoy/internal/ik;->d:Z

    .line 115
    iget-object v0, p0, Lcom/tapjoy/internal/ik;->g:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 116
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    const/4 v0, 0x0

    .line 117
    iput-object v0, p0, Lcom/tapjoy/internal/ik;->g:Ljava/lang/Thread;

    :cond_0
    return-void
.end method

.method public final c()V
    .locals 2

    const/4 v0, 0x0

    .line 135
    iput-boolean v0, p0, Lcom/tapjoy/internal/ik;->d:Z

    .line 136
    iput-boolean v0, p0, Lcom/tapjoy/internal/ik;->e:Z

    const/4 v0, 0x1

    .line 137
    iput-boolean v0, p0, Lcom/tapjoy/internal/ik;->f:Z

    .line 138
    invoke-virtual {p0}, Lcom/tapjoy/internal/ik;->b()V

    .line 139
    iget-object v0, p0, Lcom/tapjoy/internal/ik;->c:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tapjoy/internal/ik;->l:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final getFramesDisplayDuration()J
    .locals 2

    .line 89
    iget-wide v0, p0, Lcom/tapjoy/internal/ik;->i:J

    return-wide v0
.end method

.method public final getGifHeight()I
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/tapjoy/internal/ik;->a:Lcom/tapjoy/internal/ig;

    .line 2214
    iget-object v0, v0, Lcom/tapjoy/internal/ig;->c:Lcom/tapjoy/internal/ii;

    iget v0, v0, Lcom/tapjoy/internal/ii;->g:I

    return v0
.end method

.method public final getGifWidth()I
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/tapjoy/internal/ik;->a:Lcom/tapjoy/internal/ig;

    .line 2210
    iget-object v0, v0, Lcom/tapjoy/internal/ig;->c:Lcom/tapjoy/internal/ii;

    iget v0, v0, Lcom/tapjoy/internal/ii;->f:I

    return v0
.end method

.method public final getOnAnimationStop()Lcom/tapjoy/internal/ik$a;
    .locals 1

    .line 219
    iget-object v0, p0, Lcom/tapjoy/internal/ik;->j:Lcom/tapjoy/internal/ik$a;

    return-object v0
.end method

.method public final getOnFrameAvailable()Lcom/tapjoy/internal/ik$b;
    .locals 1

    .line 207
    iget-object v0, p0, Lcom/tapjoy/internal/ik;->h:Lcom/tapjoy/internal/ik$b;

    return-object v0
.end method

.method protected final onDetachedFromWindow()V
    .locals 0

    .line 232
    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    .line 233
    invoke-virtual {p0}, Lcom/tapjoy/internal/ik;->c()V

    return-void
.end method

.method public final run()V
    .locals 9

    .line 156
    :cond_0
    iget-boolean v0, p0, Lcom/tapjoy/internal/ik;->d:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/tapjoy/internal/ik;->e:Z

    if-eqz v0, :cond_d

    .line 159
    :cond_1
    iget-object v0, p0, Lcom/tapjoy/internal/ik;->a:Lcom/tapjoy/internal/ig;

    .line 2238
    iget-object v1, v0, Lcom/tapjoy/internal/ig;->c:Lcom/tapjoy/internal/ii;

    iget v1, v1, Lcom/tapjoy/internal/ii;->c:I

    const/4 v2, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-gtz v1, :cond_2

    :goto_0
    const/4 v3, 0x0

    goto :goto_1

    .line 2242
    :cond_2
    iget v5, v0, Lcom/tapjoy/internal/ig;->a:I

    add-int/lit8 v1, v1, -0x1

    if-ne v5, v1, :cond_3

    .line 2243
    iget v1, v0, Lcom/tapjoy/internal/ig;->b:I

    add-int/2addr v1, v3

    iput v1, v0, Lcom/tapjoy/internal/ig;->b:I

    .line 2246
    :cond_3
    iget-object v1, v0, Lcom/tapjoy/internal/ig;->c:Lcom/tapjoy/internal/ii;

    iget v1, v1, Lcom/tapjoy/internal/ii;->m:I

    if-eq v1, v2, :cond_4

    iget v5, v0, Lcom/tapjoy/internal/ig;->b:I

    if-le v5, v1, :cond_4

    goto :goto_0

    .line 2250
    :cond_4
    iget v1, v0, Lcom/tapjoy/internal/ig;->a:I

    add-int/2addr v1, v3

    iget-object v5, v0, Lcom/tapjoy/internal/ig;->c:Lcom/tapjoy/internal/ii;

    iget v5, v5, Lcom/tapjoy/internal/ii;->c:I

    rem-int/2addr v1, v5

    iput v1, v0, Lcom/tapjoy/internal/ig;->a:I

    :goto_1
    const-wide/16 v0, 0x0

    .line 164
    :try_start_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    .line 165
    iget-object v7, p0, Lcom/tapjoy/internal/ik;->a:Lcom/tapjoy/internal/ig;

    invoke-virtual {v7}, Lcom/tapjoy/internal/ig;->b()Landroid/graphics/Bitmap;

    move-result-object v7

    iput-object v7, p0, Lcom/tapjoy/internal/ik;->b:Landroid/graphics/Bitmap;

    .line 166
    iget-object v7, p0, Lcom/tapjoy/internal/ik;->h:Lcom/tapjoy/internal/ik$b;

    if-eqz v7, :cond_5

    .line 167
    iget-object v7, p0, Lcom/tapjoy/internal/ik;->h:Lcom/tapjoy/internal/ik$b;

    invoke-interface {v7}, Lcom/tapjoy/internal/ik$b;->a()Landroid/graphics/Bitmap;

    move-result-object v7

    iput-object v7, p0, Lcom/tapjoy/internal/ik;->b:Landroid/graphics/Bitmap;

    .line 169
    :cond_5
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v7

    sub-long/2addr v7, v5

    const-wide/32 v5, 0xf4240

    div-long/2addr v7, v5
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 170
    :try_start_1
    iget-object v5, p0, Lcom/tapjoy/internal/ik;->c:Landroid/os/Handler;

    iget-object v6, p0, Lcom/tapjoy/internal/ik;->k:Ljava/lang/Runnable;

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    nop

    goto :goto_2

    :catch_1
    move-wide v7, v0

    .line 177
    :goto_2
    iput-boolean v4, p0, Lcom/tapjoy/internal/ik;->e:Z

    .line 178
    iget-boolean v5, p0, Lcom/tapjoy/internal/ik;->d:Z

    if-eqz v5, :cond_c

    if-nez v3, :cond_6

    goto :goto_6

    .line 183
    :cond_6
    :try_start_2
    iget-object v3, p0, Lcom/tapjoy/internal/ik;->a:Lcom/tapjoy/internal/ig;

    .line 3272
    iget-object v5, v3, Lcom/tapjoy/internal/ig;->c:Lcom/tapjoy/internal/ii;

    iget v5, v5, Lcom/tapjoy/internal/ii;->c:I

    if-lez v5, :cond_9

    iget v5, v3, Lcom/tapjoy/internal/ig;->a:I

    if-gez v5, :cond_7

    goto :goto_3

    .line 3276
    :cond_7
    iget v4, v3, Lcom/tapjoy/internal/ig;->a:I

    if-ltz v4, :cond_8

    .line 4262
    iget-object v5, v3, Lcom/tapjoy/internal/ig;->c:Lcom/tapjoy/internal/ii;

    iget v5, v5, Lcom/tapjoy/internal/ii;->c:I

    if-ge v4, v5, :cond_8

    .line 4263
    iget-object v2, v3, Lcom/tapjoy/internal/ig;->c:Lcom/tapjoy/internal/ii;

    iget-object v2, v2, Lcom/tapjoy/internal/ii;->e:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tapjoy/internal/ih;

    iget v2, v2, Lcom/tapjoy/internal/ih;->i:I

    :cond_8
    move v4, v2

    :cond_9
    :goto_3
    int-to-long v2, v4

    sub-long/2addr v2, v7

    long-to-int v3, v2

    if-lez v3, :cond_b

    .line 189
    iget-wide v4, p0, Lcom/tapjoy/internal/ik;->i:J

    cmp-long v2, v4, v0

    if-lez v2, :cond_a

    iget-wide v0, p0, Lcom/tapjoy/internal/ik;->i:J

    goto :goto_4

    :cond_a
    int-to-long v0, v3

    :goto_4
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_5

    :catch_2
    nop

    .line 194
    :cond_b
    :goto_5
    iget-boolean v0, p0, Lcom/tapjoy/internal/ik;->d:Z

    if-nez v0, :cond_0

    goto :goto_7

    .line 179
    :cond_c
    :goto_6
    iput-boolean v4, p0, Lcom/tapjoy/internal/ik;->d:Z

    .line 196
    :cond_d
    :goto_7
    iget-boolean v0, p0, Lcom/tapjoy/internal/ik;->f:Z

    if-eqz v0, :cond_e

    .line 197
    iget-object v0, p0, Lcom/tapjoy/internal/ik;->c:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tapjoy/internal/ik;->l:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_e
    const/4 v0, 0x0

    .line 199
    iput-object v0, p0, Lcom/tapjoy/internal/ik;->g:Ljava/lang/Thread;

    return-void
.end method

.method public final setBytes([B)V
    .locals 1

    .line 72
    new-instance v0, Lcom/tapjoy/internal/ig;

    invoke-direct {v0}, Lcom/tapjoy/internal/ig;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/internal/ik;->a:Lcom/tapjoy/internal/ig;

    .line 74
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/tapjoy/internal/ig;->a([B)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    iget-boolean p1, p0, Lcom/tapjoy/internal/ik;->d:Z

    if-eqz p1, :cond_0

    .line 82
    invoke-direct {p0}, Lcom/tapjoy/internal/ik;->f()V

    return-void

    .line 84
    :cond_0
    invoke-direct {p0}, Lcom/tapjoy/internal/ik;->d()V

    return-void

    :catch_0
    const/4 p1, 0x0

    .line 76
    iput-object p1, p0, Lcom/tapjoy/internal/ik;->a:Lcom/tapjoy/internal/ig;

    return-void
.end method

.method public final setFramesDisplayDuration(J)V
    .locals 0

    .line 100
    iput-wide p1, p0, Lcom/tapjoy/internal/ik;->i:J

    return-void
.end method

.method public final setOnAnimationStop(Lcom/tapjoy/internal/ik$a;)V
    .locals 0

    .line 223
    iput-object p1, p0, Lcom/tapjoy/internal/ik;->j:Lcom/tapjoy/internal/ik$a;

    return-void
.end method

.method public final setOnFrameAvailable(Lcom/tapjoy/internal/ik$b;)V
    .locals 0

    .line 211
    iput-object p1, p0, Lcom/tapjoy/internal/ik;->h:Lcom/tapjoy/internal/ik$b;

    return-void
.end method
