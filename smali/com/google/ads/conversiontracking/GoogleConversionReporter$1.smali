.class Lcom/google/ads/conversiontracking/GoogleConversionReporter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/ads/conversiontracking/GoogleConversionReporter;->a(Landroid/content/Context;Lcom/google/ads/conversiontracking/g$c;ZZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/google/ads/conversiontracking/g$c;

.field final synthetic c:Z

.field final synthetic d:Z

.field final synthetic e:Z

.field final synthetic f:Lcom/google/ads/conversiontracking/GoogleConversionReporter;


# direct methods
.method constructor <init>(Lcom/google/ads/conversiontracking/GoogleConversionReporter;Landroid/content/Context;Lcom/google/ads/conversiontracking/g$c;ZZZ)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/google/ads/conversiontracking/GoogleConversionReporter$1;->f:Lcom/google/ads/conversiontracking/GoogleConversionReporter;

    iput-object p2, p0, Lcom/google/ads/conversiontracking/GoogleConversionReporter$1;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/ads/conversiontracking/GoogleConversionReporter$1;->b:Lcom/google/ads/conversiontracking/g$c;

    iput-boolean p4, p0, Lcom/google/ads/conversiontracking/GoogleConversionReporter$1;->c:Z

    iput-boolean p5, p0, Lcom/google/ads/conversiontracking/GoogleConversionReporter$1;->d:Z

    iput-boolean p6, p0, Lcom/google/ads/conversiontracking/GoogleConversionReporter$1;->e:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 28
    :try_start_0
    iget-object v0, p0, Lcom/google/ads/conversiontracking/GoogleConversionReporter$1;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/ads/conversiontracking/GoogleConversionReporter$1;->b:Lcom/google/ads/conversiontracking/g$c;

    invoke-static {v0, v1}, Lcom/google/ads/conversiontracking/g;->a(Landroid/content/Context;Lcom/google/ads/conversiontracking/g$c;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 33
    iget-object v0, p0, Lcom/google/ads/conversiontracking/GoogleConversionReporter$1;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/ads/conversiontracking/g;->a(Landroid/content/Context;)Lcom/google/ads/conversiontracking/e;

    move-result-object v2

    .line 34
    iget-object v4, p0, Lcom/google/ads/conversiontracking/GoogleConversionReporter$1;->b:Lcom/google/ads/conversiontracking/g$c;

    iget-boolean v5, p0, Lcom/google/ads/conversiontracking/GoogleConversionReporter$1;->c:Z

    iget-boolean v6, p0, Lcom/google/ads/conversiontracking/GoogleConversionReporter$1;->d:Z

    iget-boolean v7, p0, Lcom/google/ads/conversiontracking/GoogleConversionReporter$1;->e:Z

    invoke-virtual/range {v2 .. v7}, Lcom/google/ads/conversiontracking/e;->a(Ljava/lang/String;Lcom/google/ads/conversiontracking/g$c;ZZZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "GoogleConversionReporter"

    const-string v2, "Error sending ping"

    .line 37
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method
