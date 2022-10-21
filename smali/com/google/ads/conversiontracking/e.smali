.class public Lcom/google/ads/conversiontracking/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ads/conversiontracking/e$b;,
        Lcom/google/ads/conversiontracking/e$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/Object;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/ads/conversiontracking/d;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/content/Context;

.field private d:Z

.field private e:Z

.field private f:Lcom/google/ads/conversiontracking/f;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 10

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/ads/conversiontracking/e;->a:Ljava/lang/Object;

    const/4 v0, 0x1

    .line 37
    iput-boolean v0, p0, Lcom/google/ads/conversiontracking/e;->d:Z

    const/4 v1, 0x0

    .line 39
    iput-boolean v1, p0, Lcom/google/ads/conversiontracking/e;->e:Z

    .line 43
    iput-object p1, p0, Lcom/google/ads/conversiontracking/e;->c:Landroid/content/Context;

    .line 44
    new-instance v1, Lcom/google/ads/conversiontracking/f;

    invoke-direct {v1, p1}, Lcom/google/ads/conversiontracking/f;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/ads/conversiontracking/e;->f:Lcom/google/ads/conversiontracking/f;

    .line 45
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/google/ads/conversiontracking/e;->b:Ljava/util/List;

    .line 46
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/google/ads/conversiontracking/e$b;

    invoke-direct {v2, p0}, Lcom/google/ads/conversiontracking/e$b;-><init>(Lcom/google/ads/conversiontracking/e;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 47
    new-instance v3, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-direct {v3, v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    .line 48
    invoke-static {p1}, Lcom/google/ads/conversiontracking/g;->b(Landroid/content/Context;)J

    move-result-wide v0

    .line 49
    invoke-static {}, Lcom/google/ads/conversiontracking/g;->a()J

    move-result-wide v4

    const-wide/32 v6, 0x493e0

    add-long/2addr v0, v6

    sub-long/2addr v0, v4

    .line 51
    new-instance v4, Lcom/google/ads/conversiontracking/e$a;

    const/4 p1, 0x0

    invoke-direct {v4, p0, p1}, Lcom/google/ads/conversiontracking/e$a;-><init>(Lcom/google/ads/conversiontracking/e;Lcom/google/ads/conversiontracking/e$1;)V

    const-wide/16 v5, 0x0

    cmp-long p1, v0, v5

    if-lez p1, :cond_0

    move-wide v5, v0

    :cond_0
    const-wide/32 v7, 0x493e0

    sget-object v9, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual/range {v3 .. v9}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method static synthetic a(Lcom/google/ads/conversiontracking/e;)Ljava/lang/Object;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/google/ads/conversiontracking/e;->a:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic a(Lcom/google/ads/conversiontracking/e;Z)Z
    .locals 0

    .line 24
    iput-boolean p1, p0, Lcom/google/ads/conversiontracking/e;->d:Z

    return p1
.end method

.method private b(Lcom/google/ads/conversiontracking/d;)V
    .locals 2

    .line 254
    iget-boolean v0, p1, Lcom/google/ads/conversiontracking/d;->b:Z

    if-nez v0, :cond_0

    iget-boolean v0, p1, Lcom/google/ads/conversiontracking/d;->a:Z

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/google/ads/conversiontracking/e;->c:Landroid/content/Context;

    iget-object v1, p1, Lcom/google/ads/conversiontracking/d;->e:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/ads/conversiontracking/d;->f:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/google/ads/conversiontracking/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/google/ads/conversiontracking/e;)Z
    .locals 0

    .line 24
    iget-boolean p0, p0, Lcom/google/ads/conversiontracking/e;->e:Z

    return p0
.end method

.method static synthetic b(Lcom/google/ads/conversiontracking/e;Z)Z
    .locals 0

    .line 24
    iput-boolean p1, p0, Lcom/google/ads/conversiontracking/e;->e:Z

    return p1
.end method

.method static synthetic c(Lcom/google/ads/conversiontracking/e;)Landroid/content/Context;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/google/ads/conversiontracking/e;->c:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic d(Lcom/google/ads/conversiontracking/e;)Z
    .locals 0

    .line 24
    iget-boolean p0, p0, Lcom/google/ads/conversiontracking/e;->d:Z

    return p0
.end method

.method static synthetic e(Lcom/google/ads/conversiontracking/e;)Lcom/google/ads/conversiontracking/f;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/google/ads/conversiontracking/e;->f:Lcom/google/ads/conversiontracking/f;

    return-object p0
.end method

.method static synthetic f(Lcom/google/ads/conversiontracking/e;)Ljava/util/List;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/google/ads/conversiontracking/e;->b:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method protected a(Lcom/google/ads/conversiontracking/d;)I
    .locals 7

    const-string v0, "GoogleConversionReporter"

    const-string v1, "http.agent"

    .line 212
    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/ads/conversiontracking/e;->c:Landroid/content/Context;

    .line 211
    invoke-static {v1, v2}, Landroid/net/http/AndroidHttpClient;->newInstance(Ljava/lang/String;Landroid/content/Context;)Landroid/net/http/AndroidHttpClient;

    move-result-object v1

    const/4 v2, 0x0

    :try_start_0
    const-string v3, "Pinging: "

    .line 215
    iget-object v4, p1, Lcom/google/ads/conversiontracking/d;->g:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v3, v4

    :goto_0
    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    new-instance v3, Lorg/apache/http/client/methods/HttpGet;

    iget-object v4, p1, Lcom/google/ads/conversiontracking/d;->g:Ljava/lang/String;

    invoke-direct {v3, v4}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 217
    :try_start_1
    invoke-virtual {v1, v3}, Landroid/net/http/AndroidHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    .line 218
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v4

    .line 219
    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v6, 0x21

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "Receive response code "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 223
    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->consumeContent()V

    :cond_1
    const/16 v2, 0xc8

    const/4 v5, 0x2

    if-ne v4, v2, :cond_2

    const/4 v2, 0x2

    goto :goto_1

    :cond_2
    const/4 v2, 0x1

    :goto_1
    if-ne v2, v5, :cond_3

    .line 231
    invoke-direct {p0, p1}, Lcom/google/ads/conversiontracking/e;->b(Lcom/google/ads/conversiontracking/d;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 245
    :cond_3
    invoke-virtual {v1}, Landroid/net/http/AndroidHttpClient;->close()V

    return v2

    :catch_0
    move-exception p1

    move-object v2, v3

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_1
    move-exception p1

    :goto_2
    :try_start_2
    const-string v3, "Error sending ping"

    .line 235
    invoke-static {v0, v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_4

    .line 238
    :try_start_3
    invoke-interface {v2}, Lorg/apache/http/client/methods/HttpUriRequest;->abort()V
    :try_end_3
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catch_2
    :cond_4
    const/4 p1, 0x0

    .line 245
    invoke-virtual {v1}, Landroid/net/http/AndroidHttpClient;->close()V

    return p1

    :goto_3
    invoke-virtual {v1}, Landroid/net/http/AndroidHttpClient;->close()V

    throw p1
.end method

.method protected a(Ljava/lang/Runnable;)V
    .locals 1

    .line 108
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/google/ads/conversiontracking/g$c;ZZZ)V
    .locals 1

    .line 85
    new-instance v0, Lcom/google/ads/conversiontracking/d;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/google/ads/conversiontracking/d;-><init>(Ljava/lang/String;Lcom/google/ads/conversiontracking/g$c;ZZ)V

    .line 87
    iget-object p1, p0, Lcom/google/ads/conversiontracking/e;->a:Ljava/lang/Object;

    monitor-enter p1

    if-nez p5, :cond_0

    .line 89
    :try_start_0
    new-instance p2, Lcom/google/ads/conversiontracking/e$1;

    invoke-direct {p2, p0, v0}, Lcom/google/ads/conversiontracking/e$1;-><init>(Lcom/google/ads/conversiontracking/e;Lcom/google/ads/conversiontracking/d;)V

    invoke-virtual {p0, p2}, Lcom/google/ads/conversiontracking/e;->a(Ljava/lang/Runnable;)V

    .line 95
    monitor-exit p1

    return-void

    .line 98
    :cond_0
    iget-object p2, p0, Lcom/google/ads/conversiontracking/e;->f:Lcom/google/ads/conversiontracking/f;

    invoke-virtual {p2, v0}, Lcom/google/ads/conversiontracking/f;->b(Lcom/google/ads/conversiontracking/d;)V

    .line 99
    iget-boolean p2, p0, Lcom/google/ads/conversiontracking/e;->e:Z

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/google/ads/conversiontracking/e;->c:Landroid/content/Context;

    invoke-static {p2}, Lcom/google/ads/conversiontracking/g;->d(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 100
    iget-object p2, p0, Lcom/google/ads/conversiontracking/e;->b:Ljava/util/List;

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p2, 0x1

    .line 101
    iput-boolean p2, p0, Lcom/google/ads/conversiontracking/e;->d:Z

    .line 102
    iget-object p2, p0, Lcom/google/ads/conversiontracking/e;->a:Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/Object;->notify()V

    .line 104
    :cond_1
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method
