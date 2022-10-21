.class public Lcom/google/ads/conversiontracking/DoubleClickAudienceReporter;
.super Lcom/google/ads/conversiontracking/GoogleConversionReporter;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Ljava/lang/String;

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 28
    invoke-direct {p0}, Lcom/google/ads/conversiontracking/GoogleConversionReporter;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/google/ads/conversiontracking/DoubleClickAudienceReporter;->a:Landroid/content/Context;

    .line 30
    iput-object p2, p0, Lcom/google/ads/conversiontracking/DoubleClickAudienceReporter;->b:Ljava/lang/String;

    .line 31
    iput-object p3, p0, Lcom/google/ads/conversiontracking/DoubleClickAudienceReporter;->c:Ljava/util/Map;

    return-void
.end method

.method public static reportActivity(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 70
    new-instance v0, Lcom/google/ads/conversiontracking/DoubleClickAudienceReporter;

    .line 71
    invoke-static {p0}, Lcom/google/ads/conversiontracking/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    .line 72
    invoke-static {p1}, Lcom/google/ads/conversiontracking/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p0, p1, p2}, Lcom/google/ads/conversiontracking/DoubleClickAudienceReporter;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 73
    invoke-virtual {v0}, Lcom/google/ads/conversiontracking/DoubleClickAudienceReporter;->report()V

    return-void
.end method


# virtual methods
.method public report()V
    .locals 9

    .line 39
    iget-object v0, p0, Lcom/google/ads/conversiontracking/DoubleClickAudienceReporter;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "GoogleConversionReporter"

    if-eqz v0, :cond_0

    const-string v0, "Error sending activity ping with empty ad unit id."

    .line 40
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 44
    :cond_0
    :try_start_0
    new-instance v0, Lcom/google/ads/conversiontracking/g$c;

    invoke-direct {v0}, Lcom/google/ads/conversiontracking/g$c;-><init>()V

    sget-object v2, Lcom/google/ads/conversiontracking/g$d;->a:Lcom/google/ads/conversiontracking/g$d;

    .line 46
    invoke-virtual {v0, v2}, Lcom/google/ads/conversiontracking/g$c;->a(Lcom/google/ads/conversiontracking/g$d;)Lcom/google/ads/conversiontracking/g$c;

    move-result-object v0

    iget-object v2, p0, Lcom/google/ads/conversiontracking/DoubleClickAudienceReporter;->c:Ljava/util/Map;

    .line 47
    invoke-virtual {v0, v2}, Lcom/google/ads/conversiontracking/g$c;->a(Ljava/util/Map;)Lcom/google/ads/conversiontracking/g$c;

    move-result-object v0

    iget-object v2, p0, Lcom/google/ads/conversiontracking/DoubleClickAudienceReporter;->b:Ljava/lang/String;

    .line 48
    invoke-virtual {v0, v2}, Lcom/google/ads/conversiontracking/g$c;->c(Ljava/lang/String;)Lcom/google/ads/conversiontracking/g$c;

    move-result-object v5

    .line 49
    iget-object v4, p0, Lcom/google/ads/conversiontracking/DoubleClickAudienceReporter;->a:Landroid/content/Context;

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/google/ads/conversiontracking/GoogleConversionReporter;->a(Landroid/content/Context;Lcom/google/ads/conversiontracking/g$c;ZZZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "Error sending ping"

    .line 56
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
