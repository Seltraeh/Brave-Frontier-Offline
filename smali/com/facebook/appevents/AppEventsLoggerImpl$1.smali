.class final Lcom/facebook/appevents/AppEventsLoggerImpl$1;
.super Ljava/lang/Object;
.source "AppEventsLoggerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/appevents/AppEventsLoggerImpl;->initializeLib(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$logger:Lcom/facebook/appevents/AppEventsLoggerImpl;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/facebook/appevents/AppEventsLoggerImpl;)V
    .locals 0

    .line 126
    iput-object p1, p0, Lcom/facebook/appevents/AppEventsLoggerImpl$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/facebook/appevents/AppEventsLoggerImpl$1;->val$logger:Lcom/facebook/appevents/AppEventsLoggerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 18

    move-object/from16 v1, p0

    const-string v0, "kitsBitmask"

    invoke-static/range {p0 .. p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    .line 129
    :cond_0
    :try_start_0
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const/16 v3, 0xb

    new-array v4, v3, [Ljava/lang/String;

    const-string v5, "com.facebook.core.Core"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-string v5, "com.facebook.login.Login"

    const/4 v7, 0x1

    aput-object v5, v4, v7

    const-string v5, "com.facebook.share.Share"

    const/4 v8, 0x2

    aput-object v5, v4, v8

    const-string v5, "com.facebook.places.Places"

    const/4 v9, 0x3

    aput-object v5, v4, v9

    const-string v5, "com.facebook.messenger.Messenger"

    const/4 v10, 0x4

    aput-object v5, v4, v10

    const-string v5, "com.facebook.applinks.AppLinks"

    const/4 v11, 0x5

    aput-object v5, v4, v11

    const-string v5, "com.facebook.marketing.Marketing"

    const/4 v12, 0x6

    aput-object v5, v4, v12

    const-string v5, "com.facebook.gamingservices.GamingServices"

    const/4 v13, 0x7

    aput-object v5, v4, v13

    const-string v5, "com.facebook.all.All"

    const/16 v14, 0x8

    aput-object v5, v4, v14

    const-string v5, "com.android.billingclient.api.BillingClient"

    const/16 v15, 0x9

    aput-object v5, v4, v15

    const-string v5, "com.android.vending.billing.IInAppBillingService"

    const/16 v16, 0xa

    aput-object v5, v4, v16

    new-array v5, v3, [Ljava/lang/String;

    const-string v17, "core_lib_included"

    aput-object v17, v5, v6

    const-string v17, "login_lib_included"

    aput-object v17, v5, v7

    const-string v17, "share_lib_included"

    aput-object v17, v5, v8

    const-string v8, "places_lib_included"

    aput-object v8, v5, v9

    const-string v8, "messenger_lib_included"

    aput-object v8, v5, v10

    const-string v8, "applinks_lib_included"

    aput-object v8, v5, v11

    const-string v8, "marketing_lib_included"

    aput-object v8, v5, v12

    const-string v8, "gamingservices_lib_included"

    aput-object v8, v5, v13

    const-string v8, "all_lib_included"

    aput-object v8, v5, v14

    const-string v8, "billing_client_lib_included"

    aput-object v8, v5, v15

    const-string v8, "billing_service_lib_included"

    aput-object v8, v5, v16

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_0
    if-ge v8, v3, :cond_1

    .line 169
    aget-object v10, v4, v8

    .line 170
    aget-object v11, v5, v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    :try_start_1
    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 174
    invoke-virtual {v2, v11, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    shl-int v10, v7, v8

    or-int/2addr v9, v10

    :catch_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 181
    :cond_1
    :try_start_2
    iget-object v3, v1, Lcom/facebook/appevents/AppEventsLoggerImpl$1;->val$context:Landroid/content/Context;

    const-string v4, "com.facebook.sdk.appEventPreferences"

    .line 182
    invoke-virtual {v3, v4, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 183
    invoke-interface {v3, v0, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    if-eq v4, v9, :cond_2

    .line 185
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3, v0, v9}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 186
    iget-object v0, v1, Lcom/facebook/appevents/AppEventsLoggerImpl$1;->val$logger:Lcom/facebook/appevents/AppEventsLoggerImpl;

    const-string v3, "fb_sdk_initialize"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4, v2}, Lcom/facebook/appevents/AppEventsLoggerImpl;->logEventImplicitly(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    return-void

    :catchall_0
    move-exception v0

    .line 188
    invoke-static {v0, v1}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
