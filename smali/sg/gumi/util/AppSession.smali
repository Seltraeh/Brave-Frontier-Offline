.class public final Lsg/gumi/util/AppSession;
.super Ljava/lang/Object;
.source "AppSession.java"


# static fields
.field private static final APP_SESSION_PREF:Ljava/lang/String; = "APP_SESSION"

.field private static final BF_SESSION_END_TIME_KEY:Ljava/lang/String; = "bfendtime"

.field private static final BF_SESSION_START_TIME_KEY:Ljava/lang/String; = "bfstarttime"

.field private static final FR_END_TIME:Ljava/lang/String; = "END_SESSION"

.field private static final FR_SESSION_LENGTH:Ljava/lang/String; = "SESSION_LENGTH"

.field private static final INVALID_TIME:J = -0x8000000000000000L

.field private static final SECONDS:J = 0x3e8L


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static onPause(Lsg/gumi/bravefrontier/BraveFrontier;)V
    .locals 3

    const-string v0, "APP_SESSION"

    const/4 v1, 0x0

    .line 64
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 65
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 66
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v2, "bfendtime"

    invoke-interface {p0, v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 67
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static onResume(Lsg/gumi/bravefrontier/BraveFrontier;Ljava/lang/Object;)V
    .locals 17

    const-string v0, "APP_SESSION"

    const/4 v1, 0x0

    move-object/from16 v2, p0

    .line 32
    invoke-virtual {v2, v0, v1}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "bfstarttime"

    const-wide/high16 v2, -0x8000000000000000L

    .line 34
    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    const-string v6, "bfendtime"

    .line 35
    invoke-interface {v0, v6, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    .line 37
    invoke-static {}, Lsg/gumi/bravefrontier/BraveFrontier;->isFiverocksInitialized()Z

    move-result v9

    if-eqz v9, :cond_1

    const-wide/16 v9, 0x3e8

    cmp-long v11, v4, v2

    if-lez v11, :cond_0

    cmp-long v11, v7, v2

    if-lez v11, :cond_0

    sub-long v4, v7, v4

    .line 39
    div-long/2addr v4, v9

    const/4 v11, 0x0

    const-string v12, "SESSION_LENGTH"

    .line 43
    invoke-static {v11, v12, v4, v5}, Lcom/tapjoy/Tapjoy;->trackEvent(Ljava/lang/String;Ljava/lang/String;J)V

    :cond_0
    cmp-long v4, v7, v2

    if-lez v4, :cond_1

    .line 47
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v5, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const-string v5, "GMT"

    .line 48
    invoke-static {v5}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    const/4 v11, 0x0

    .line 52
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5, v7, v8}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    div-long v15, v7, v9

    const-string v12, "END_SESSION"

    invoke-static/range {v11 .. v16}, Lcom/tapjoy/Tapjoy;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 56
    :cond_1
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 57
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 58
    invoke-interface {v0, v6, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 59
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method
