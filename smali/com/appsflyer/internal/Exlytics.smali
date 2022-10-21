.class public Lcom/appsflyer/internal/Exlytics;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final EXCEPTION_COUNT_KEY:Ljava/lang/String; = "exception_number"

.field private static ǃ:Landroid/app/Application;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()J
    .locals 4

    .line 27
    sget-object v0, Lcom/appsflyer/internal/Exlytics;->ǃ:Landroid/app/Application;

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    return-wide v0

    .line 28
    :cond_0
    invoke-static {v0}, Lcom/appsflyer/AppsFlyerLibCore;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-wide/16 v1, 0x0

    const-string v3, "exception_number"

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static increment()V
    .locals 5

    .line 19
    sget-object v0, Lcom/appsflyer/internal/Exlytics;->ǃ:Landroid/app/Application;

    if-nez v0, :cond_0

    return-void

    .line 20
    :cond_0
    invoke-static {v0}, Lcom/appsflyer/AppsFlyerLibCore;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 21
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 22
    invoke-static {}, Lcom/appsflyer/internal/Exlytics;->get()J

    move-result-wide v1

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    const-string v3, "exception_number"

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 23
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setContext(Landroid/app/Application;)V
    .locals 0

    .line 15
    sput-object p0, Lcom/appsflyer/internal/Exlytics;->ǃ:Landroid/app/Application;

    return-void
.end method
