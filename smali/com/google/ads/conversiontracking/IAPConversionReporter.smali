.class public Lcom/google/ads/conversiontracking/IAPConversionReporter;
.super Lcom/google/ads/conversiontracking/GoogleConversionReporter;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Z

.field private final c:Ljava/lang/String;

.field private final d:Lcom/google/ads/conversiontracking/g$d;

.field private final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/google/ads/conversiontracking/GoogleConversionReporter;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/google/ads/conversiontracking/IAPConversionReporter;->a:Landroid/content/Context;

    .line 25
    iput-object p2, p0, Lcom/google/ads/conversiontracking/IAPConversionReporter;->c:Ljava/lang/String;

    .line 26
    iput-object p3, p0, Lcom/google/ads/conversiontracking/IAPConversionReporter;->e:Ljava/lang/String;

    .line 27
    iput-boolean p4, p0, Lcom/google/ads/conversiontracking/IAPConversionReporter;->b:Z

    .line 28
    sget-object p1, Lcom/google/ads/conversiontracking/g$d;->d:Lcom/google/ads/conversiontracking/g$d;

    iput-object p1, p0, Lcom/google/ads/conversiontracking/IAPConversionReporter;->d:Lcom/google/ads/conversiontracking/g$d;

    return-void
.end method

.method public static reportWithProductId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    .line 54
    new-instance v0, Lcom/google/ads/conversiontracking/IAPConversionReporter;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/ads/conversiontracking/IAPConversionReporter;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v0}, Lcom/google/ads/conversiontracking/IAPConversionReporter;->report()V

    return-void
.end method


# virtual methods
.method public report()V
    .locals 8

    .line 33
    new-instance v0, Lcom/google/ads/conversiontracking/g$c;

    invoke-direct {v0}, Lcom/google/ads/conversiontracking/g$c;-><init>()V

    iget-object v1, p0, Lcom/google/ads/conversiontracking/IAPConversionReporter;->c:Ljava/lang/String;

    .line 34
    invoke-virtual {v0, v1}, Lcom/google/ads/conversiontracking/g$c;->d(Ljava/lang/String;)Lcom/google/ads/conversiontracking/g$c;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/conversiontracking/IAPConversionReporter;->d:Lcom/google/ads/conversiontracking/g$d;

    .line 35
    invoke-virtual {v0, v1}, Lcom/google/ads/conversiontracking/g$c;->a(Lcom/google/ads/conversiontracking/g$d;)Lcom/google/ads/conversiontracking/g$c;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/conversiontracking/IAPConversionReporter;->e:Ljava/lang/String;

    .line 36
    invoke-virtual {v0, v1}, Lcom/google/ads/conversiontracking/g$c;->c(Ljava/lang/String;)Lcom/google/ads/conversiontracking/g$c;

    move-result-object v4

    .line 37
    iget-object v0, p0, Lcom/google/ads/conversiontracking/IAPConversionReporter;->a:Landroid/content/Context;

    iget-boolean v1, p0, Lcom/google/ads/conversiontracking/IAPConversionReporter;->b:Z

    invoke-static {v0, v4, v1}, Lcom/google/ads/conversiontracking/g;->a(Landroid/content/Context;Lcom/google/ads/conversiontracking/g$c;Z)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 40
    :cond_0
    iget-object v3, p0, Lcom/google/ads/conversiontracking/IAPConversionReporter;->a:Landroid/content/Context;

    const/4 v5, 0x1

    iget-boolean v6, p0, Lcom/google/ads/conversiontracking/IAPConversionReporter;->b:Z

    const/4 v7, 0x1

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/google/ads/conversiontracking/GoogleConversionReporter;->a(Landroid/content/Context;Lcom/google/ads/conversiontracking/g$c;ZZZ)V

    return-void
.end method
