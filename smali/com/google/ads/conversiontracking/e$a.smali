.class Lcom/google/ads/conversiontracking/e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/conversiontracking/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/google/ads/conversiontracking/e;


# direct methods
.method private constructor <init>(Lcom/google/ads/conversiontracking/e;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/google/ads/conversiontracking/e$a;->a:Lcom/google/ads/conversiontracking/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/ads/conversiontracking/e;Lcom/google/ads/conversiontracking/e$1;)V
    .locals 0

    .line 115
    invoke-direct {p0, p1}, Lcom/google/ads/conversiontracking/e$a;-><init>(Lcom/google/ads/conversiontracking/e;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 118
    iget-object v0, p0, Lcom/google/ads/conversiontracking/e$a;->a:Lcom/google/ads/conversiontracking/e;

    invoke-static {v0}, Lcom/google/ads/conversiontracking/e;->a(Lcom/google/ads/conversiontracking/e;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 126
    :try_start_0
    iget-object v1, p0, Lcom/google/ads/conversiontracking/e$a;->a:Lcom/google/ads/conversiontracking/e;

    invoke-static {v1}, Lcom/google/ads/conversiontracking/e;->b(Lcom/google/ads/conversiontracking/e;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/ads/conversiontracking/e$a;->a:Lcom/google/ads/conversiontracking/e;

    .line 127
    invoke-static {v1}, Lcom/google/ads/conversiontracking/e;->c(Lcom/google/ads/conversiontracking/e;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/ads/conversiontracking/g;->d(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/ads/conversiontracking/e$a;->a:Lcom/google/ads/conversiontracking/e;

    .line 128
    invoke-static {v1}, Lcom/google/ads/conversiontracking/e;->d(Lcom/google/ads/conversiontracking/e;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 131
    :cond_0
    iget-object v1, p0, Lcom/google/ads/conversiontracking/e$a;->a:Lcom/google/ads/conversiontracking/e;

    invoke-static {v1}, Lcom/google/ads/conversiontracking/e;->f(Lcom/google/ads/conversiontracking/e;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/google/ads/conversiontracking/e$a;->a:Lcom/google/ads/conversiontracking/e;

    invoke-static {v2}, Lcom/google/ads/conversiontracking/e;->e(Lcom/google/ads/conversiontracking/e;)Lcom/google/ads/conversiontracking/f;

    move-result-object v2

    const-wide/16 v3, 0x64

    invoke-virtual {v2, v3, v4}, Lcom/google/ads/conversiontracking/f;->a(J)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 132
    iget-object v1, p0, Lcom/google/ads/conversiontracking/e$a;->a:Lcom/google/ads/conversiontracking/e;

    invoke-static {v1}, Lcom/google/ads/conversiontracking/e;->c(Lcom/google/ads/conversiontracking/e;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/ads/conversiontracking/g;->c(Landroid/content/Context;)V

    .line 133
    iget-object v1, p0, Lcom/google/ads/conversiontracking/e$a;->a:Lcom/google/ads/conversiontracking/e;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/google/ads/conversiontracking/e;->a(Lcom/google/ads/conversiontracking/e;Z)Z

    .line 134
    iget-object v1, p0, Lcom/google/ads/conversiontracking/e$a;->a:Lcom/google/ads/conversiontracking/e;

    invoke-static {v1}, Lcom/google/ads/conversiontracking/e;->a(Lcom/google/ads/conversiontracking/e;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 135
    monitor-exit v0

    return-void

    .line 129
    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    .line 135
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
