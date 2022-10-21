.class public Lcom/google/ads/conversiontracking/e$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/conversiontracking/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field protected a:J

.field final synthetic b:Lcom/google/ads/conversiontracking/e;


# direct methods
.method public constructor <init>(Lcom/google/ads/conversiontracking/e;)V
    .locals 2

    .line 142
    iput-object p1, p0, Lcom/google/ads/conversiontracking/e$b;->b:Lcom/google/ads/conversiontracking/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 147
    iput-wide v0, p0, Lcom/google/ads/conversiontracking/e$b;->a:J

    return-void
.end method

.method private a()V
    .locals 5

    .line 197
    iget-wide v0, p0, Lcom/google/ads/conversiontracking/e$b;->a:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const-wide/16 v0, 0x3e8

    .line 198
    iput-wide v0, p0, Lcom/google/ads/conversiontracking/e$b;->a:J

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x2

    mul-long v0, v0, v2

    const-wide/32 v2, 0xea60

    .line 200
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/ads/conversiontracking/e$b;->a:J

    :goto_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/4 v0, 0x0

    .line 152
    :try_start_0
    iget-object v1, p0, Lcom/google/ads/conversiontracking/e$b;->b:Lcom/google/ads/conversiontracking/e;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/google/ads/conversiontracking/e;->b(Lcom/google/ads/conversiontracking/e;Z)Z

    .line 155
    :goto_0
    iget-object v1, p0, Lcom/google/ads/conversiontracking/e$b;->b:Lcom/google/ads/conversiontracking/e;

    invoke-static {v1}, Lcom/google/ads/conversiontracking/e;->a(Lcom/google/ads/conversiontracking/e;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    :goto_1
    :try_start_1
    iget-object v3, p0, Lcom/google/ads/conversiontracking/e$b;->b:Lcom/google/ads/conversiontracking/e;

    invoke-static {v3}, Lcom/google/ads/conversiontracking/e;->f(Lcom/google/ads/conversiontracking/e;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 157
    iget-object v3, p0, Lcom/google/ads/conversiontracking/e$b;->b:Lcom/google/ads/conversiontracking/e;

    invoke-static {v3, v0}, Lcom/google/ads/conversiontracking/e;->a(Lcom/google/ads/conversiontracking/e;Z)Z

    .line 158
    iget-object v3, p0, Lcom/google/ads/conversiontracking/e$b;->b:Lcom/google/ads/conversiontracking/e;

    invoke-static {v3}, Lcom/google/ads/conversiontracking/e;->a(Lcom/google/ads/conversiontracking/e;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V

    goto :goto_1

    .line 160
    :cond_0
    iget-object v3, p0, Lcom/google/ads/conversiontracking/e$b;->b:Lcom/google/ads/conversiontracking/e;

    invoke-static {v3, v2}, Lcom/google/ads/conversiontracking/e;->a(Lcom/google/ads/conversiontracking/e;Z)Z

    .line 161
    iget-object v3, p0, Lcom/google/ads/conversiontracking/e$b;->b:Lcom/google/ads/conversiontracking/e;

    invoke-static {v3}, Lcom/google/ads/conversiontracking/e;->f(Lcom/google/ads/conversiontracking/e;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/ads/conversiontracking/d;

    .line 162
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v3, :cond_1

    goto :goto_0

    .line 167
    :cond_1
    :try_start_2
    iget-object v1, p0, Lcom/google/ads/conversiontracking/e$b;->b:Lcom/google/ads/conversiontracking/e;

    .line 168
    invoke-static {v1}, Lcom/google/ads/conversiontracking/e;->c(Lcom/google/ads/conversiontracking/e;)Landroid/content/Context;

    move-result-object v1

    iget-object v4, v3, Lcom/google/ads/conversiontracking/d;->e:Ljava/lang/String;

    iget-object v5, v3, Lcom/google/ads/conversiontracking/d;->f:Ljava/lang/String;

    iget-boolean v6, v3, Lcom/google/ads/conversiontracking/d;->b:Z

    .line 167
    invoke-static {v1, v4, v5, v6}, Lcom/google/ads/conversiontracking/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_2

    .line 170
    iget-object v1, p0, Lcom/google/ads/conversiontracking/e$b;->b:Lcom/google/ads/conversiontracking/e;

    invoke-static {v1}, Lcom/google/ads/conversiontracking/e;->e(Lcom/google/ads/conversiontracking/e;)Lcom/google/ads/conversiontracking/f;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/google/ads/conversiontracking/f;->a(Lcom/google/ads/conversiontracking/d;)V

    goto :goto_0

    .line 173
    :cond_2
    iget-object v1, p0, Lcom/google/ads/conversiontracking/e$b;->b:Lcom/google/ads/conversiontracking/e;

    invoke-virtual {v1, v3}, Lcom/google/ads/conversiontracking/e;->a(Lcom/google/ads/conversiontracking/d;)I

    move-result v1

    const/4 v4, 0x2

    const-wide/16 v5, 0x0

    if-ne v1, v4, :cond_3

    .line 175
    iget-object v1, p0, Lcom/google/ads/conversiontracking/e$b;->b:Lcom/google/ads/conversiontracking/e;

    invoke-static {v1}, Lcom/google/ads/conversiontracking/e;->e(Lcom/google/ads/conversiontracking/e;)Lcom/google/ads/conversiontracking/f;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/google/ads/conversiontracking/f;->a(Lcom/google/ads/conversiontracking/d;)V

    .line 176
    iput-wide v5, p0, Lcom/google/ads/conversiontracking/e$b;->a:J

    goto :goto_0

    :cond_3
    if-nez v1, :cond_4

    .line 178
    iget-object v1, p0, Lcom/google/ads/conversiontracking/e$b;->b:Lcom/google/ads/conversiontracking/e;

    invoke-static {v1}, Lcom/google/ads/conversiontracking/e;->e(Lcom/google/ads/conversiontracking/e;)Lcom/google/ads/conversiontracking/f;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/google/ads/conversiontracking/f;->c(Lcom/google/ads/conversiontracking/d;)V

    .line 180
    invoke-direct {p0}, Lcom/google/ads/conversiontracking/e$b;->a()V

    .line 181
    iget-wide v3, p0, Lcom/google/ads/conversiontracking/e$b;->a:J

    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_0

    .line 183
    :cond_4
    iget-object v1, p0, Lcom/google/ads/conversiontracking/e$b;->b:Lcom/google/ads/conversiontracking/e;

    invoke-static {v1}, Lcom/google/ads/conversiontracking/e;->e(Lcom/google/ads/conversiontracking/e;)Lcom/google/ads/conversiontracking/f;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/google/ads/conversiontracking/f;->c(Lcom/google/ads/conversiontracking/d;)V

    .line 184
    iput-wide v5, p0, Lcom/google/ads/conversiontracking/e$b;->a:J
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    :catchall_0
    move-exception v2

    .line 162
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    const-string v1, "GoogleConversionReporter"

    const-string v2, "Dispatch thread is interrupted."

    .line 188
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    iget-object v1, p0, Lcom/google/ads/conversiontracking/e$b;->b:Lcom/google/ads/conversiontracking/e;

    invoke-static {v1, v0}, Lcom/google/ads/conversiontracking/e;->b(Lcom/google/ads/conversiontracking/e;Z)Z

    return-void
.end method
