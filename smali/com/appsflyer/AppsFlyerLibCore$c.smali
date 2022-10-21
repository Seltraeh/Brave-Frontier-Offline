.class final Lcom/appsflyer/AppsFlyerLibCore$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsflyer/AppsFlyerLibCore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field private final ı:Lcom/appsflyer/AFEvent;

.field private synthetic Ι:Lcom/appsflyer/AppsFlyerLibCore;


# direct methods
.method private constructor <init>(Lcom/appsflyer/AppsFlyerLibCore;Lcom/appsflyer/AFEvent;)V
    .locals 0

    .line 3267
    iput-object p1, p0, Lcom/appsflyer/AppsFlyerLibCore$c;->Ι:Lcom/appsflyer/AppsFlyerLibCore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3268
    iput-object p2, p0, Lcom/appsflyer/AppsFlyerLibCore$c;->ı:Lcom/appsflyer/AFEvent;

    return-void
.end method

.method synthetic constructor <init>(Lcom/appsflyer/AppsFlyerLibCore;Lcom/appsflyer/AFEvent;B)V
    .locals 0

    .line 3264
    invoke-direct {p0, p1, p2}, Lcom/appsflyer/AppsFlyerLibCore$c;-><init>(Lcom/appsflyer/AppsFlyerLibCore;Lcom/appsflyer/AFEvent;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    .line 3272
    iget-object v0, p0, Lcom/appsflyer/AppsFlyerLibCore$c;->ı:Lcom/appsflyer/AFEvent;

    invoke-virtual {v0}, Lcom/appsflyer/AFEvent;->params()Ljava/util/Map;

    move-result-object v0

    .line 3273
    iget-object v1, p0, Lcom/appsflyer/AppsFlyerLibCore$c;->ı:Lcom/appsflyer/AFEvent;

    invoke-virtual {v1}, Lcom/appsflyer/AFEvent;->ɩ()Z

    move-result v1

    .line 3274
    iget-object v2, p0, Lcom/appsflyer/AppsFlyerLibCore$c;->ı:Lcom/appsflyer/AFEvent;

    invoke-virtual {v2}, Lcom/appsflyer/AFEvent;->urlString()Ljava/lang/String;

    move-result-object v2

    .line 3275
    iget-object v3, p0, Lcom/appsflyer/AppsFlyerLibCore$c;->ı:Lcom/appsflyer/AFEvent;

    .line 4155
    iget v4, v3, Lcom/appsflyer/AFEvent;->Ӏ:I

    .line 3276
    invoke-virtual {v3}, Lcom/appsflyer/AFEvent;->context()Landroid/app/Application;

    move-result-object v3

    .line 3278
    iget-object v5, p0, Lcom/appsflyer/AppsFlyerLibCore$c;->Ι:Lcom/appsflyer/AppsFlyerLibCore;

    invoke-virtual {v5}, Lcom/appsflyer/AppsFlyerLibCore;->isStopped()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 3279
    iget-object v0, p0, Lcom/appsflyer/AppsFlyerLibCore$c;->ı:Lcom/appsflyer/AFEvent;

    invoke-virtual {v0}, Lcom/appsflyer/AFEvent;->getRequestListener()Lcom/appsflyer/attribution/AppsFlyerRequestListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3281
    sget v1, Lcom/appsflyer/attribution/RequestError;->STOP_TRACKING:I

    sget-object v2, Lcom/appsflyer/internal/attribution/RequestErrorMessage;->STOP_TRACKING:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/appsflyer/attribution/AppsFlyerRequestListener;->onError(ILjava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    const/4 v5, 0x0

    new-array v6, v5, [B

    const/4 v7, 0x0

    const/4 v8, 0x2

    const/4 v9, 0x1

    if-eqz v1, :cond_b

    if-gt v4, v8, :cond_b

    .line 3286
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3287
    iget-object v10, p0, Lcom/appsflyer/AppsFlyerLibCore$c;->Ι:Lcom/appsflyer/AppsFlyerLibCore;

    invoke-static {v10}, Lcom/appsflyer/AppsFlyerLibCore;->ɹ(Lcom/appsflyer/AppsFlyerLibCore;)Z

    move-result v10

    if-eqz v10, :cond_2

    const-string v10, "rfr"

    .line 3288
    iget-object v11, p0, Lcom/appsflyer/AppsFlyerLibCore$c;->Ι:Lcom/appsflyer/AppsFlyerLibCore;

    iget-object v11, v11, Lcom/appsflyer/AppsFlyerLibCore;->googleReferrer:Lcom/appsflyer/internal/referrer/GoogleReferrer;

    iget-object v11, v11, Lcom/appsflyer/internal/referrer/GoogleReferrer;->oldMap:Ljava/util/Map;

    invoke-interface {v0, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3289
    invoke-static {v3}, Lcom/appsflyer/AppsFlyerLibCore;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v10

    .line 3290
    invoke-interface {v10}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    const-string v11, "newGPReferrerSent"

    .line 3291
    invoke-interface {v10, v11, v9}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    .line 3292
    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 3293
    iget-object v10, p0, Lcom/appsflyer/AppsFlyerLibCore$c;->Ι:Lcom/appsflyer/AppsFlyerLibCore;

    iget-object v10, v10, Lcom/appsflyer/AppsFlyerLibCore;->googleReferrer:Lcom/appsflyer/internal/referrer/GoogleReferrer;

    iget-object v10, v10, Lcom/appsflyer/internal/referrer/Referrer;->map:Ljava/util/Map;

    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3295
    :cond_2
    sget-object v10, Lcom/appsflyer/AppsFlyerLibCore$8;->ι:[I

    iget-object v11, p0, Lcom/appsflyer/AppsFlyerLibCore$c;->Ι:Lcom/appsflyer/AppsFlyerLibCore;

    iget-object v11, v11, Lcom/appsflyer/AppsFlyerLibCore;->huaweiReferrer:Lcom/appsflyer/internal/referrer/HuaweiReferrer;

    invoke-virtual {v11}, Lcom/appsflyer/internal/referrer/Referrer;->getState()Lcom/appsflyer/internal/referrer/Referrer$State;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Enum;->ordinal()I

    move-result v11

    aget v10, v10, v11

    if-eq v10, v9, :cond_4

    if-eq v10, v8, :cond_3

    goto :goto_0

    :cond_3
    if-ne v4, v8, :cond_5

    .line 3301
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    const-string v10, "source"

    const-string v11, "huawei"

    .line 3302
    invoke-interface {v4, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v10, "response"

    const-string v11, "TIMEOUT"

    .line 3303
    invoke-interface {v4, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3304
    new-instance v10, Lcom/appsflyer/internal/referrer/MandatoryFields;

    invoke-direct {v10}, Lcom/appsflyer/internal/referrer/MandatoryFields;-><init>()V

    invoke-interface {v4, v10}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 3305
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3297
    :cond_4
    iget-object v4, p0, Lcom/appsflyer/AppsFlyerLibCore$c;->Ι:Lcom/appsflyer/AppsFlyerLibCore;

    iget-object v4, v4, Lcom/appsflyer/AppsFlyerLibCore;->huaweiReferrer:Lcom/appsflyer/internal/referrer/HuaweiReferrer;

    iget-object v4, v4, Lcom/appsflyer/internal/referrer/Referrer;->map:Ljava/util/Map;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3309
    :cond_5
    :goto_0
    iget-object v4, p0, Lcom/appsflyer/AppsFlyerLibCore$c;->Ι:Lcom/appsflyer/AppsFlyerLibCore;

    iget-object v4, v4, Lcom/appsflyer/AppsFlyerLibCore;->samsungReferrer:Lcom/appsflyer/internal/referrer/SamsungReferrer;

    invoke-virtual {v4}, Lcom/appsflyer/internal/referrer/Referrer;->getState()Lcom/appsflyer/internal/referrer/Referrer$State;

    move-result-object v4

    sget-object v10, Lcom/appsflyer/internal/referrer/Referrer$State;->FINISHED:Lcom/appsflyer/internal/referrer/Referrer$State;

    if-ne v4, v10, :cond_6

    iget-object v4, p0, Lcom/appsflyer/AppsFlyerLibCore$c;->Ι:Lcom/appsflyer/AppsFlyerLibCore;

    iget-object v4, v4, Lcom/appsflyer/AppsFlyerLibCore;->samsungReferrer:Lcom/appsflyer/internal/referrer/SamsungReferrer;

    iget-object v4, v4, Lcom/appsflyer/internal/referrer/Referrer;->map:Ljava/util/Map;

    goto :goto_1

    :cond_6
    move-object v4, v7

    :goto_1
    if-eqz v4, :cond_7

    .line 3313
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3314
    :cond_7
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_8

    const-string v4, "referrers"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3315
    :cond_8
    iget-object v1, p0, Lcom/appsflyer/AppsFlyerLibCore$c;->Ι:Lcom/appsflyer/AppsFlyerLibCore;

    invoke-static {v1}, Lcom/appsflyer/AppsFlyerLibCore;->ǃ(Lcom/appsflyer/AppsFlyerLibCore;)Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_9

    const-string v1, "fb_ddl"

    .line 3316
    iget-object v4, p0, Lcom/appsflyer/AppsFlyerLibCore$c;->Ι:Lcom/appsflyer/AppsFlyerLibCore;

    invoke-static {v4}, Lcom/appsflyer/AppsFlyerLibCore;->ǃ(Lcom/appsflyer/AppsFlyerLibCore;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3318
    :cond_9
    iget-object v1, p0, Lcom/appsflyer/AppsFlyerLibCore$c;->Ι:Lcom/appsflyer/AppsFlyerLibCore;

    invoke-static {v1}, Lcom/appsflyer/AppsFlyerLibCore;->Ӏ(Lcom/appsflyer/AppsFlyerLibCore;)Z

    move-result v1

    if-eqz v1, :cond_a

    const-string v1, "lvl"

    .line 3319
    iget-object v4, p0, Lcom/appsflyer/AppsFlyerLibCore$c;->Ι:Lcom/appsflyer/AppsFlyerLibCore;

    invoke-static {v4}, Lcom/appsflyer/AppsFlyerLibCore;->Ι(Lcom/appsflyer/AppsFlyerLibCore;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 3320
    :cond_a
    iget-object v1, p0, Lcom/appsflyer/AppsFlyerLibCore$c;->Ι:Lcom/appsflyer/AppsFlyerLibCore;

    invoke-static {v1}, Lcom/appsflyer/AppsFlyerLibCore;->ɪ(Lcom/appsflyer/AppsFlyerLibCore;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 3321
    iget-object v1, p0, Lcom/appsflyer/AppsFlyerLibCore$c;->Ι:Lcom/appsflyer/AppsFlyerLibCore;

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    invoke-static {v1, v4}, Lcom/appsflyer/AppsFlyerLibCore;->ǃ(Lcom/appsflyer/AppsFlyerLibCore;Ljava/util/Map;)Ljava/util/Map;

    .line 3322
    iget-object v1, p0, Lcom/appsflyer/AppsFlyerLibCore$c;->Ι:Lcom/appsflyer/AppsFlyerLibCore;

    invoke-static {v1}, Lcom/appsflyer/AppsFlyerLibCore;->Ι(Lcom/appsflyer/AppsFlyerLibCore;)Ljava/util/Map;

    move-result-object v1

    const-string v4, "error"

    const-string v10, "operation timed out."

    invoke-interface {v1, v4, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "lvl"

    .line 3323
    iget-object v4, p0, Lcom/appsflyer/AppsFlyerLibCore$c;->Ι:Lcom/appsflyer/AppsFlyerLibCore;

    invoke-static {v4}, Lcom/appsflyer/AppsFlyerLibCore;->Ι(Lcom/appsflyer/AppsFlyerLibCore;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3328
    :cond_b
    :goto_2
    iget-object v1, p0, Lcom/appsflyer/AppsFlyerLibCore$c;->ı:Lcom/appsflyer/AFEvent;

    instance-of v1, v1, Lcom/appsflyer/internal/model/event/AdRevenue;

    if-nez v1, :cond_c

    .line 3329
    new-instance v1, Lcom/appsflyer/internal/d$c;

    invoke-direct {v1, v0, v3}, Lcom/appsflyer/internal/d$c;-><init>(Ljava/util/Map;Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 3333
    :cond_c
    :try_start_0
    iget-object v1, p0, Lcom/appsflyer/AppsFlyerLibCore$c;->ı:Lcom/appsflyer/AFEvent;

    iget-object v4, p0, Lcom/appsflyer/AppsFlyerLibCore$c;->ı:Lcom/appsflyer/AFEvent;

    instance-of v4, v4, Lcom/appsflyer/internal/model/event/AdRevenue;

    if-eqz v4, :cond_d

    const-string v4, "af_key"

    .line 3334
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    goto :goto_3

    :cond_d
    const-string v4, "appsflyerKey"

    .line 3335
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 3333
    :goto_3
    invoke-virtual {v1, v4}, Lcom/appsflyer/AFEvent;->key(Ljava/lang/String;)Lcom/appsflyer/AFEvent;

    .line 3336
    monitor-enter v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 3337
    :try_start_1
    iget-object v1, p0, Lcom/appsflyer/AppsFlyerLibCore$c;->ı:Lcom/appsflyer/AFEvent;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    new-array v4, v9, [Ljava/lang/Object;

    aput-object v1, v4, v5

    const/16 v1, 0x30

    const/16 v10, 0x18

    const/16 v11, 0x7dd5

    invoke-static {v1, v10, v11}, Lcom/appsflyer/internal/e;->Ι(IIC)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    const-string v10, "\u0399"

    new-array v11, v9, [Ljava/lang/Class;

    const-class v12, Lcom/appsflyer/AFEvent;

    aput-object v12, v11, v5

    invoke-virtual {v1, v10, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v1, v7, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 3338
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3339
    :try_start_4
    iget-object v0, p0, Lcom/appsflyer/AppsFlyerLibCore$c;->Ι:Lcom/appsflyer/AppsFlyerLibCore;

    iget-object v4, p0, Lcom/appsflyer/AppsFlyerLibCore$c;->ı:Lcom/appsflyer/AFEvent;

    invoke-virtual {v4, v1}, Lcom/appsflyer/AFEvent;->post([B)Lcom/appsflyer/AFEvent;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/appsflyer/AppsFlyerLibCore;->ı(Lcom/appsflyer/AppsFlyerLibCore;Lcom/appsflyer/AFEvent;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    return-void

    :catch_0
    move-exception v0

    move-object v6, v1

    goto :goto_5

    :catchall_0
    move-exception v4

    move-object v6, v1

    goto :goto_4

    :catchall_1
    move-exception v1

    .line 3337
    :try_start_5
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_e

    throw v4

    :cond_e
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception v4

    .line 3338
    :goto_4
    :try_start_6
    monitor-exit v0

    throw v4
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :catchall_3
    move-exception v0

    .line 3352
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0, v9}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;Z)V

    .line 3353
    iget-object v1, p0, Lcom/appsflyer/AppsFlyerLibCore$c;->ı:Lcom/appsflyer/AFEvent;

    invoke-virtual {v1}, Lcom/appsflyer/AFEvent;->getRequestListener()Lcom/appsflyer/attribution/AppsFlyerRequestListener;

    move-result-object v1

    if-eqz v1, :cond_f

    .line 3355
    sget v2, Lcom/appsflyer/attribution/RequestError;->NETWORK_FAILURE:I

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/appsflyer/attribution/AppsFlyerRequestListener;->onError(ILjava/lang/String;)V

    :cond_f
    return-void

    :catch_1
    move-exception v0

    :goto_5
    const-string v1, "Exception while sending request to server. "

    .line 3342
    invoke-static {v1, v0}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    if-eqz v6, :cond_14

    if-eqz v3, :cond_14

    const-string v1, "&isCachedRequest=true&timeincache="

    .line 3343
    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_14

    .line 3344
    invoke-static {}, Lcom/appsflyer/internal/w;->Ι()Lcom/appsflyer/internal/w;

    new-instance v1, Lcom/appsflyer/AFFacebookDeferredDeeplink;

    const-string v4, "6.1.1"

    invoke-direct {v1, v2, v6, v4}, Lcom/appsflyer/AFFacebookDeferredDeeplink;-><init>(Ljava/lang/String;[BLjava/lang/String;)V

    .line 5058
    :try_start_7
    invoke-static {v3}, Lcom/appsflyer/internal/w;->ɩ(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    .line 5059
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_10

    .line 5061
    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    goto/16 :goto_7

    .line 5064
    :cond_10
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_11

    .line 5065
    array-length v2, v2

    const/16 v4, 0x28

    if-le v2, v4, :cond_11

    const-string v1, "reached cache limit, not caching request"

    .line 5066
    invoke-static {v1}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_11
    const-string v2, "caching request..."

    .line 5069
    invoke-static {v2}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;)V

    .line 5070
    new-instance v2, Ljava/io/File;

    invoke-static {v3}, Lcom/appsflyer/internal/w;->ɩ(Landroid/content/Context;)Ljava/io/File;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 5071
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 5072
    new-instance v3, Ljava/io/OutputStreamWriter;

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    invoke-direct {v3, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    :try_start_8
    const-string v2, "version="

    .line 5073
    invoke-virtual {v3, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 6057
    iget-object v2, v1, Lcom/appsflyer/AFFacebookDeferredDeeplink;->ι:Ljava/lang/String;

    .line 5074
    invoke-virtual {v3, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/16 v2, 0xa

    .line 5075
    invoke-virtual {v3, v2}, Ljava/io/Writer;->write(I)V

    const-string v4, "url="

    .line 5077
    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 6073
    iget-object v4, v1, Lcom/appsflyer/AFFacebookDeferredDeeplink;->ı:Ljava/lang/String;

    .line 5078
    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 5079
    invoke-virtual {v3, v2}, Ljava/io/Writer;->write(I)V

    const-string v4, "data="

    .line 5081
    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 5082
    invoke-virtual {v1}, Lcom/appsflyer/AFFacebookDeferredDeeplink;->ι()[B

    move-result-object v1

    invoke-static {v1, v8}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 5083
    invoke-virtual {v3, v2}, Ljava/io/Writer;->write(I)V

    .line 5085
    invoke-virtual {v3}, Ljava/io/Writer;->flush()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 5092
    :try_start_9
    invoke-virtual {v3}, Ljava/io/Writer;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    goto :goto_7

    :catchall_4
    move-exception v0

    move-object v7, v3

    goto :goto_8

    :catch_2
    move-exception v1

    move-object v7, v3

    goto :goto_6

    :catchall_5
    move-exception v0

    goto :goto_8

    :catch_3
    move-exception v1

    :goto_6
    :try_start_a
    const-string v2, "Could not cache request"

    .line 5088
    invoke-static {v2, v1}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    if-eqz v7, :cond_12

    .line 5092
    :try_start_b
    invoke-virtual {v7}, Ljava/io/Writer;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4

    goto :goto_7

    :catch_4
    move-exception v1

    .line 5095
    invoke-static {v1}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/Throwable;)V

    .line 3345
    :cond_12
    :goto_7
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_a

    :goto_8
    if-eqz v7, :cond_13

    .line 5092
    :try_start_c
    invoke-virtual {v7}, Ljava/io/Writer;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_5

    goto :goto_9

    :catch_5
    move-exception v1

    .line 5095
    invoke-static {v1}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/Throwable;)V

    .line 5097
    :cond_13
    :goto_9
    throw v0

    .line 3347
    :cond_14
    :goto_a
    iget-object v1, p0, Lcom/appsflyer/AppsFlyerLibCore$c;->ı:Lcom/appsflyer/AFEvent;

    invoke-virtual {v1}, Lcom/appsflyer/AFEvent;->getRequestListener()Lcom/appsflyer/attribution/AppsFlyerRequestListener;

    move-result-object v1

    if-eqz v1, :cond_15

    .line 3349
    sget v2, Lcom/appsflyer/attribution/RequestError;->NETWORK_FAILURE:I

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/appsflyer/attribution/AppsFlyerRequestListener;->onError(ILjava/lang/String;)V

    .line 3350
    :cond_15
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/AppsFlyerLibCore$InstallAttributionIdFetcher;->ı(Ljava/lang/String;)V

    return-void
.end method
