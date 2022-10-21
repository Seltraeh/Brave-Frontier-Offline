.class public final Lcom/google/ads/conversiontracking/AdWordsAutomatedUsageReporter;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static disableAutomatedUsageReporting(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 35
    invoke-static {p0}, Lcom/google/ads/conversiontracking/c;->a(Landroid/content/Context;)Lcom/google/ads/conversiontracking/c;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/google/ads/conversiontracking/c;->b(Ljava/lang/String;)V

    return-void
.end method

.method public static enableAutomatedUsageReporting(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 22
    invoke-static {p0}, Lcom/google/ads/conversiontracking/c;->a(Landroid/content/Context;)Lcom/google/ads/conversiontracking/c;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/google/ads/conversiontracking/c;->a(Ljava/lang/String;)V

    return-void
.end method
