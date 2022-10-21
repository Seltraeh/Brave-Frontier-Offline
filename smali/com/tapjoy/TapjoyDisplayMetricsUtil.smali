.class public Lcom/tapjoy/TapjoyDisplayMetricsUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/content/res/Configuration;

.field private c:Landroid/util/DisplayMetrics;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/tapjoy/TapjoyDisplayMetricsUtil;->a:Landroid/content/Context;

    .line 33
    new-instance p1, Landroid/util/DisplayMetrics;

    invoke-direct {p1}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object p1, p0, Lcom/tapjoy/TapjoyDisplayMetricsUtil;->c:Landroid/util/DisplayMetrics;

    .line 34
    iget-object p1, p0, Lcom/tapjoy/TapjoyDisplayMetricsUtil;->a:Landroid/content/Context;

    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    .line 35
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    iget-object v0, p0, Lcom/tapjoy/TapjoyDisplayMetricsUtil;->c:Landroid/util/DisplayMetrics;

    invoke-virtual {p1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 37
    iget-object p1, p0, Lcom/tapjoy/TapjoyDisplayMetricsUtil;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iput-object p1, p0, Lcom/tapjoy/TapjoyDisplayMetricsUtil;->b:Landroid/content/res/Configuration;

    return-void
.end method


# virtual methods
.method public getScreenDensityDPI()I
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/tapjoy/TapjoyDisplayMetricsUtil;->c:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    return v0
.end method

.method public getScreenDensityScale()F
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/tapjoy/TapjoyDisplayMetricsUtil;->c:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    return v0
.end method

.method public getScreenLayoutSize()I
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/tapjoy/TapjoyDisplayMetricsUtil;->b:Landroid/content/res/Configuration;

    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, 0xf

    return v0
.end method
