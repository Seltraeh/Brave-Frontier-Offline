.class public final Lcom/tapjoy/Tapjoy;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INTENT_EXTRA_PUSH_PAYLOAD:Ljava/lang/String; = "com.tapjoy.PUSH_PAYLOAD"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static actionComplete(Ljava/lang/String;)V
    .locals 1

    .line 575
    invoke-static {}, Lcom/tapjoy/internal/eu;->a()Lcom/tapjoy/internal/eu;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tapjoy/internal/eu;->e(Ljava/lang/String;)V

    return-void
.end method

.method public static activateInstallReferrerClient(Landroid/content/Context;)V
    .locals 1

    .line 625
    :try_start_0
    invoke-static {}, Lcom/tapjoy/internal/eu;->a()Lcom/tapjoy/internal/eu;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tapjoy/internal/eu;->a(Landroid/content/Context;)V
    :try_end_0
    .catch Lcom/tapjoy/TapjoyIntegrationException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 627
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Tapjoy"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static addUserTag(Ljava/lang/String;)V
    .locals 1

    .line 537
    invoke-static {}, Lcom/tapjoy/internal/eu;->a()Lcom/tapjoy/internal/eu;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tapjoy/internal/eu;->c(Ljava/lang/String;)V

    return-void
.end method

.method public static awardCurrency(ILcom/tapjoy/TJAwardCurrencyListener;)V
    .locals 1

    .line 165
    invoke-static {}, Lcom/tapjoy/internal/eu;->a()Lcom/tapjoy/internal/eu;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/tapjoy/internal/eu;->a(ILcom/tapjoy/TJAwardCurrencyListener;)V

    return-void
.end method

.method public static belowConsentAge(Z)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 757
    invoke-static {}, Lcom/tapjoy/internal/eu;->a()Lcom/tapjoy/internal/eu;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tapjoy/internal/eu;->d(Z)V

    return-void
.end method

.method public static clearUserTags()V
    .locals 1

    .line 527
    invoke-static {}, Lcom/tapjoy/internal/eu;->a()Lcom/tapjoy/internal/eu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/internal/eu;->g()V

    return-void
.end method

.method public static connect(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    .line 62
    invoke-static {}, Lcom/tapjoy/internal/eu;->a()Lcom/tapjoy/internal/eu;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/tapjoy/internal/eu;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static connect(Landroid/content/Context;Ljava/lang/String;Ljava/util/Hashtable;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "*>;)Z"
        }
    .end annotation

    .line 71
    invoke-static {}, Lcom/tapjoy/internal/eu;->a()Lcom/tapjoy/internal/eu;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p1, p2, v1}, Lcom/tapjoy/internal/eu;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Hashtable;Lcom/tapjoy/TJConnectListener;)Z

    move-result p0

    return p0
.end method

.method public static declared-synchronized connect(Landroid/content/Context;Ljava/lang/String;Ljava/util/Hashtable;Lcom/tapjoy/TJConnectListener;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "*>;",
            "Lcom/tapjoy/TJConnectListener;",
            ")Z"
        }
    .end annotation

    const-class v0, Lcom/tapjoy/Tapjoy;

    monitor-enter v0

    .line 97
    :try_start_0
    invoke-static {}, Lcom/tapjoy/internal/eu;->a()Lcom/tapjoy/internal/eu;

    move-result-object v1

    invoke-virtual {v1, p0, p1, p2, p3}, Lcom/tapjoy/internal/eu;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Hashtable;Lcom/tapjoy/TJConnectListener;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static endSession()V
    .locals 1

    .line 409
    invoke-static {}, Lcom/tapjoy/internal/eu;->a()Lcom/tapjoy/internal/eu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/internal/eu;->e()V

    return-void
.end method

.method public static getCurrencyBalance(Lcom/tapjoy/TJGetCurrencyBalanceListener;)V
    .locals 1

    .line 139
    invoke-static {}, Lcom/tapjoy/internal/eu;->a()Lcom/tapjoy/internal/eu;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tapjoy/internal/eu;->a(Lcom/tapjoy/TJGetCurrencyBalanceListener;)V

    return-void
.end method

.method public static getCurrencyMultiplier()F
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 200
    invoke-static {}, Lcom/tapjoy/internal/eu;->a()Lcom/tapjoy/internal/eu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/internal/eu;->c()F

    move-result v0

    return v0
.end method

.method public static getCustomParameter()Ljava/lang/String;
    .locals 1

    .line 789
    invoke-static {}, Lcom/tapjoy/internal/eu;->a()Lcom/tapjoy/internal/eu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/internal/eu;->l()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLimitedPlacement(Ljava/lang/String;Lcom/tapjoy/TJPlacementListener;)Lcom/tapjoy/TJPlacement;
    .locals 1

    .line 771
    invoke-static {}, Lcom/tapjoy/internal/eu;->a()Lcom/tapjoy/internal/eu;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/tapjoy/internal/eu;->b(Ljava/lang/String;Lcom/tapjoy/TJPlacementListener;)Lcom/tapjoy/TJPlacement;

    move-result-object p0

    return-object p0
.end method

.method public static getPlacement(Ljava/lang/String;Lcom/tapjoy/TJPlacementListener;)Lcom/tapjoy/TJPlacement;
    .locals 1

    .line 114
    invoke-static {}, Lcom/tapjoy/internal/eu;->a()Lcom/tapjoy/internal/eu;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/tapjoy/internal/eu;->a(Ljava/lang/String;Lcom/tapjoy/TJPlacementListener;)Lcom/tapjoy/TJPlacement;

    move-result-object p0

    return-object p0
.end method

.method public static getPrivacyPolicy()Lcom/tapjoy/TJPrivacyPolicy;
    .locals 1

    .line 797
    invoke-static {}, Lcom/tapjoy/internal/eu;->a()Lcom/tapjoy/internal/eu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/internal/eu;->m()Lcom/tapjoy/TJPrivacyPolicy;

    move-result-object v0

    return-object v0
.end method

.method public static getSupportURL()Ljava/lang/String;
    .locals 2

    .line 686
    invoke-static {}, Lcom/tapjoy/internal/eu;->a()Lcom/tapjoy/internal/eu;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/eu;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSupportURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 698
    invoke-static {}, Lcom/tapjoy/internal/eu;->a()Lcom/tapjoy/internal/eu;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tapjoy/internal/eu;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getUserTags()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 510
    invoke-static {}, Lcom/tapjoy/internal/eu;->a()Lcom/tapjoy/internal/eu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/internal/eu;->f()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public static getUserToken()Ljava/lang/String;
    .locals 1

    .line 707
    invoke-static {}, Lcom/tapjoy/internal/eu;->a()Lcom/tapjoy/internal/eu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/internal/eu;->k()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 1

    .line 39
    invoke-static {}, Lcom/tapjoy/internal/eu;->a()Lcom/tapjoy/internal/eu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/internal/eu;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isConnected()Z
    .locals 1

    .line 714
    invoke-static {}, Lcom/tapjoy/internal/eu;->a()Lcom/tapjoy/internal/eu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/internal/eu;->i()Z

    move-result v0

    return v0
.end method

.method public static isLimitedConnected()Z
    .locals 1

    .line 767
    invoke-static {}, Lcom/tapjoy/internal/eu;->a()Lcom/tapjoy/internal/eu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/internal/eu;->j()Z

    move-result v0

    return v0
.end method

.method public static isPushNotificationDisabled()Z
    .locals 1

    .line 647
    invoke-static {}, Lcom/tapjoy/internal/eu;->a()Lcom/tapjoy/internal/eu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/internal/eu;->h()Z

    move-result v0

    return v0
.end method

.method public static declared-synchronized limitedConnect(Landroid/content/Context;Ljava/lang/String;Lcom/tapjoy/TJConnectListener;)Z
    .locals 2

    const-class v0, Lcom/tapjoy/Tapjoy;

    monitor-enter v0

    .line 763
    :try_start_0
    invoke-static {}, Lcom/tapjoy/internal/eu;->a()Lcom/tapjoy/internal/eu;

    move-result-object v1

    invoke-virtual {v1, p0, p1, p2}, Lcom/tapjoy/internal/eu;->a(Landroid/content/Context;Ljava/lang/String;Lcom/tapjoy/TJConnectListener;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static loadSharedLibrary()V
    .locals 1

    :try_start_0
    const-string v0, "tapjoy"

    .line 665
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public static onActivityStart(Landroid/app/Activity;)V
    .locals 1

    .line 419
    invoke-static {}, Lcom/tapjoy/internal/eu;->a()Lcom/tapjoy/internal/eu;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tapjoy/internal/eu;->b(Landroid/app/Activity;)V

    return-void
.end method

.method public static onActivityStop(Landroid/app/Activity;)V
    .locals 1

    .line 429
    invoke-static {}, Lcom/tapjoy/internal/eu;->a()Lcom/tapjoy/internal/eu;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tapjoy/internal/eu;->c(Landroid/app/Activity;)V

    return-void
.end method

.method public static removeUserTag(Ljava/lang/String;)V
    .locals 1

    .line 547
    invoke-static {}, Lcom/tapjoy/internal/eu;->a()Lcom/tapjoy/internal/eu;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tapjoy/internal/eu;->d(Ljava/lang/String;)V

    return-void
.end method

.method public static setActivity(Landroid/app/Activity;)V
    .locals 1

    .line 123
    invoke-static {}, Lcom/tapjoy/internal/eu;->a()Lcom/tapjoy/internal/eu;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tapjoy/internal/eu;->a(Landroid/app/Activity;)V

    return-void
.end method

.method public static setAppDataVersion(Ljava/lang/String;)V
    .locals 1

    .line 491
    invoke-static {}, Lcom/tapjoy/internal/eu;->a()Lcom/tapjoy/internal/eu;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tapjoy/internal/eu;->b(Ljava/lang/String;)V

    return-void
.end method

.method public static setCurrencyMultiplier(F)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 189
    invoke-static {}, Lcom/tapjoy/internal/eu;->a()Lcom/tapjoy/internal/eu;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tapjoy/internal/eu;->a(F)V

    return-void
.end method

.method public static setCustomParameter(Ljava/lang/String;)V
    .locals 1

    .line 781
    invoke-static {}, Lcom/tapjoy/internal/eu;->a()Lcom/tapjoy/internal/eu;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tapjoy/internal/eu;->j(Ljava/lang/String;)V

    return-void
.end method

.method public static setDebugEnabled(Z)V
    .locals 1

    .line 50
    invoke-static {}, Lcom/tapjoy/internal/eu;->a()Lcom/tapjoy/internal/eu;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tapjoy/internal/eu;->a(Z)V

    return-void
.end method

.method public static setDeviceToken(Ljava/lang/String;)V
    .locals 1

    .line 602
    invoke-static {}, Lcom/tapjoy/internal/eu;->a()Lcom/tapjoy/internal/eu;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tapjoy/internal/eu;->i(Ljava/lang/String;)V

    return-void
.end method

.method public static setEarnedCurrencyListener(Lcom/tapjoy/TJEarnedCurrencyListener;)V
    .locals 1

    .line 176
    invoke-static {}, Lcom/tapjoy/internal/eu;->a()Lcom/tapjoy/internal/eu;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tapjoy/internal/eu;->a(Lcom/tapjoy/TJEarnedCurrencyListener;)V

    return-void
.end method

.method public static setGLSurfaceView(Landroid/opengl/GLSurfaceView;)V
    .locals 1

    .line 677
    invoke-static {}, Lcom/tapjoy/internal/eu;->a()Lcom/tapjoy/internal/eu;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tapjoy/internal/eu;->a(Landroid/opengl/GLSurfaceView;)V

    return-void
.end method

.method public static setGcmSender(Ljava/lang/String;)V
    .locals 1

    .line 590
    invoke-static {}, Lcom/tapjoy/internal/eu;->a()Lcom/tapjoy/internal/eu;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tapjoy/internal/eu;->f(Ljava/lang/String;)V

    return-void
.end method

.method public static setInstallReferrer(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 640
    invoke-static {}, Lcom/tapjoy/internal/eu;->a()Lcom/tapjoy/internal/eu;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/tapjoy/internal/eu;->b(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static setPushNotificationDisabled(Z)V
    .locals 1

    .line 657
    invoke-static {}, Lcom/tapjoy/internal/eu;->a()Lcom/tapjoy/internal/eu;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tapjoy/internal/eu;->b(Z)V

    return-void
.end method

.method public static setReceiveRemoteNotification(Landroid/content/Context;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 613
    invoke-static {}, Lcom/tapjoy/internal/eu;->a()Lcom/tapjoy/internal/eu;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/tapjoy/internal/eu;->a(Landroid/content/Context;Ljava/util/Map;)V

    return-void
.end method

.method public static setUserCohortVariable(ILjava/lang/String;)V
    .locals 1

    .line 503
    invoke-static {}, Lcom/tapjoy/internal/eu;->a()Lcom/tapjoy/internal/eu;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/tapjoy/internal/eu;->a(ILjava/lang/String;)V

    return-void
.end method

.method public static setUserConsent(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 739
    invoke-static {}, Lcom/tapjoy/internal/eu;->a()Lcom/tapjoy/internal/eu;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tapjoy/internal/eu;->h(Ljava/lang/String;)V

    return-void
.end method

.method public static setUserFriendCount(I)V
    .locals 1

    .line 480
    invoke-static {}, Lcom/tapjoy/internal/eu;->a()Lcom/tapjoy/internal/eu;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tapjoy/internal/eu;->b(I)V

    return-void
.end method

.method public static setUserID(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 445
    invoke-static {p0, v0}, Lcom/tapjoy/Tapjoy;->setUserID(Ljava/lang/String;Lcom/tapjoy/TJSetUserIDListener;)V

    return-void
.end method

.method public static setUserID(Ljava/lang/String;Lcom/tapjoy/TJSetUserIDListener;)V
    .locals 1

    .line 460
    invoke-static {}, Lcom/tapjoy/internal/eu;->a()Lcom/tapjoy/internal/eu;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/tapjoy/internal/eu;->a(Ljava/lang/String;Lcom/tapjoy/TJSetUserIDListener;)V

    return-void
.end method

.method public static setUserLevel(I)V
    .locals 1

    .line 470
    invoke-static {}, Lcom/tapjoy/internal/eu;->a()Lcom/tapjoy/internal/eu;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tapjoy/internal/eu;->a(I)V

    return-void
.end method

.method public static setUserTags(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 520
    invoke-static {}, Lcom/tapjoy/internal/eu;->a()Lcom/tapjoy/internal/eu;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tapjoy/internal/eu;->a(Ljava/util/Set;)V

    return-void
.end method

.method public static setVideoListener(Lcom/tapjoy/TJVideoListener;)V
    .locals 1

    .line 561
    invoke-static {}, Lcom/tapjoy/internal/eu;->a()Lcom/tapjoy/internal/eu;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tapjoy/internal/eu;->a(Lcom/tapjoy/TJVideoListener;)V

    return-void
.end method

.method public static spendCurrency(ILcom/tapjoy/TJSpendCurrencyListener;)V
    .locals 1

    .line 152
    invoke-static {}, Lcom/tapjoy/internal/eu;->a()Lcom/tapjoy/internal/eu;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/tapjoy/internal/eu;->a(ILcom/tapjoy/TJSpendCurrencyListener;)V

    return-void
.end method

.method public static startSession()V
    .locals 1

    .line 401
    invoke-static {}, Lcom/tapjoy/internal/eu;->a()Lcom/tapjoy/internal/eu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/internal/eu;->d()V

    return-void
.end method

.method public static subjectToGDPR(Z)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 728
    invoke-static {}, Lcom/tapjoy/internal/eu;->a()Lcom/tapjoy/internal/eu;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tapjoy/internal/eu;->c(Z)V

    return-void
.end method

.method public static trackEvent(Ljava/lang/String;)V
    .locals 1

    .line 276
    invoke-static {}, Lcom/tapjoy/internal/eu;->a()Lcom/tapjoy/internal/eu;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tapjoy/internal/eu;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static trackEvent(Ljava/lang/String;J)V
    .locals 1

    .line 288
    invoke-static {}, Lcom/tapjoy/internal/eu;->a()Lcom/tapjoy/internal/eu;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/tapjoy/internal/eu;->a(Ljava/lang/String;J)V

    return-void
.end method

.method public static trackEvent(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 1

    .line 298
    invoke-static {}, Lcom/tapjoy/internal/eu;->a()Lcom/tapjoy/internal/eu;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/tapjoy/internal/eu;->a(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public static trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 308
    invoke-static {}, Lcom/tapjoy/internal/eu;->a()Lcom/tapjoy/internal/eu;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/tapjoy/internal/eu;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 7

    .line 319
    invoke-static {}, Lcom/tapjoy/internal/eu;->a()Lcom/tapjoy/internal/eu;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-wide v5, p4

    invoke-virtual/range {v0 .. v6}, Lcom/tapjoy/internal/eu;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public static trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 8

    .line 330
    invoke-static {}, Lcom/tapjoy/internal/eu;->a()Lcom/tapjoy/internal/eu;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-wide v6, p5

    invoke-virtual/range {v0 .. v7}, Lcom/tapjoy/internal/eu;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public static trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;J)V
    .locals 11

    .line 341
    invoke-static {}, Lcom/tapjoy/internal/eu;->a()Lcom/tapjoy/internal/eu;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-wide/from16 v6, p5

    move-object/from16 v8, p7

    move-wide/from16 v9, p8

    invoke-virtual/range {v0 .. v10}, Lcom/tapjoy/internal/eu;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;J)V

    return-void
.end method

.method public static trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JLjava/lang/String;J)V
    .locals 14

    .line 371
    invoke-static {}, Lcom/tapjoy/internal/eu;->a()Lcom/tapjoy/internal/eu;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-wide/from16 v6, p5

    move-object/from16 v8, p7

    move-wide/from16 v9, p8

    move-object/from16 v11, p10

    move-wide/from16 v12, p11

    invoke-virtual/range {v0 .. v13}, Lcom/tapjoy/internal/eu;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JLjava/lang/String;J)V

    return-void
.end method

.method public static trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 390
    invoke-static {}, Lcom/tapjoy/internal/eu;->a()Lcom/tapjoy/internal/eu;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/tapjoy/internal/eu;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackPurchase(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 264
    invoke-static {}, Lcom/tapjoy/internal/eu;->a()Lcom/tapjoy/internal/eu;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/tapjoy/internal/eu;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static trackPurchase(Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;)V
    .locals 6

    .line 221
    invoke-static {}, Lcom/tapjoy/internal/eu;->a()Lcom/tapjoy/internal/eu;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/tapjoy/internal/eu;->a(Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;)V

    return-void
.end method

.method public static trackPurchase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 244
    invoke-static {}, Lcom/tapjoy/internal/eu;->a()Lcom/tapjoy/internal/eu;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/tapjoy/internal/eu;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
