.class public abstract Lsg/gumi/bravefrontier/GameService;
.super Ljava/lang/Object;
.source "GameService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsg/gumi/bravefrontier/GameService$SignInFailureReason;,
        Lsg/gumi/bravefrontier/GameService$GameHelperListener;
    }
.end annotation


# static fields
.field public static final CLIENT_ALL:I = 0x5

.field public static final CLIENT_APPSTATE:I = 0x4

.field public static final CLIENT_GAMES:I = 0x1

.field public static final CLIENT_NONE:I = 0x0

.field protected static final GA_DISPATCH_PERIOD:I = 0x1e

.field protected static final GA_IS_DRY_RUN:Z = false


# instance fields
.field mActivity:Landroid/app/Activity;

.field mDebugLog:Z

.field mDebugTag:Ljava/lang/String;

.field protected mTracker:Lcom/google/android/gms/analytics/Tracker;

.field mUnknownErrorMessage:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 69
    iput-object v0, p0, Lsg/gumi/bravefrontier/GameService;->mActivity:Landroid/app/Activity;

    .line 80
    iput-object v0, p0, Lsg/gumi/bravefrontier/GameService;->mTracker:Lcom/google/android/gms/analytics/Tracker;

    const/4 v0, 0x0

    .line 83
    iput-boolean v0, p0, Lsg/gumi/bravefrontier/GameService;->mDebugLog:Z

    const-string v0, "GameHelper"

    .line 84
    iput-object v0, p0, Lsg/gumi/bravefrontier/GameService;->mDebugTag:Ljava/lang/String;

    const-string v0, "Unknown game error"

    .line 87
    iput-object v0, p0, Lsg/gumi/bravefrontier/GameService;->mUnknownErrorMessage:Ljava/lang/String;

    .line 95
    iput-object p1, p0, Lsg/gumi/bravefrontier/GameService;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method public static createService(Landroid/app/Activity;)Lsg/gumi/bravefrontier/GameService;
    .locals 2

    .line 438
    sget-object v0, Lsg/gumi/util/BFConfig;->PLATFORM:Lsg/gumi/util/BFConfig$Platform;

    sget-object v1, Lsg/gumi/util/BFConfig;->PLATFORM_AMAZON:Lsg/gumi/util/BFConfig$Platform;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 441
    :cond_0
    sget-object v0, Lsg/gumi/util/BFConfig;->PLATFORM:Lsg/gumi/util/BFConfig$Platform;

    sget-object v1, Lsg/gumi/util/BFConfig;->PLATFORM_SAMSUNG:Lsg/gumi/util/BFConfig$Platform;

    if-ne v0, v1, :cond_1

    :goto_0
    const/4 p0, 0x0

    goto :goto_1

    .line 446
    :cond_1
    new-instance v0, Lsg/gumi/bravefrontier/GameHelper;

    invoke-direct {v0, p0}, Lsg/gumi/bravefrontier/GameHelper;-><init>(Landroid/app/Activity;)V

    move-object p0, v0

    :goto_1
    return-object p0
.end method


# virtual methods
.method public abstract beginUserInitiatedSignIn()V
.end method

.method protected final debugLog(Ljava/lang/String;)V
    .locals 1

    .line 236
    iget-boolean v0, p0, Lsg/gumi/bravefrontier/GameService;->mDebugLog:Z

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lsg/gumi/bravefrontier/GameService;->mDebugTag:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public final enableDebugLog(ZLjava/lang/String;)V
    .locals 0

    .line 187
    iput-boolean p1, p0, Lsg/gumi/bravefrontier/GameService;->mDebugLog:Z

    .line 188
    iput-object p2, p0, Lsg/gumi/bravefrontier/GameService;->mDebugTag:Ljava/lang/String;

    return-void
.end method

.method protected final getActivity()Landroid/app/Activity;
    .locals 1

    .line 226
    iget-object v0, p0, Lsg/gumi/bravefrontier/GameService;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public abstract getAppStateClient()Ljava/lang/Object;
.end method

.method public abstract getGameHelperListener()Lsg/gumi/bravefrontier/GameService$GameHelperListener;
.end method

.method public abstract getGamesClient()Ljava/lang/Object;
.end method

.method public abstract getInvitationId()Ljava/lang/String;
.end method

.method public getLeaderBoardScore(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public abstract getScopes()Ljava/lang/String;
.end method

.method public abstract getScopesArray()[Ljava/lang/String;
.end method

.method public abstract getSignInCancellations()I
.end method

.method public abstract getSignInError()Lsg/gumi/bravefrontier/GameService$SignInFailureReason;
.end method

.method public googleAnalyticsSendScreenView(Ljava/lang/String;)V
    .locals 1

    .line 361
    iget-object v0, p0, Lsg/gumi/bravefrontier/GameService;->mTracker:Lcom/google/android/gms/analytics/Tracker;

    if-eqz v0, :cond_0

    .line 365
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/google/android/gms/analytics/Tracker;->setScreenName(Ljava/lang/String;)V

    .line 367
    iget-object p1, p0, Lsg/gumi/bravefrontier/GameService;->mTracker:Lcom/google/android/gms/analytics/Tracker;

    new-instance v0, Lcom/google/android/gms/analytics/HitBuilders$ScreenViewBuilder;

    invoke-direct {v0}, Lcom/google/android/gms/analytics/HitBuilders$ScreenViewBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;->build()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method public googleAnalyticsSetUserID(Ljava/lang/String;)V
    .locals 2

    .line 349
    iget-object v0, p0, Lsg/gumi/bravefrontier/GameService;->mTracker:Lcom/google/android/gms/analytics/Tracker;

    if-eqz v0, :cond_0

    :try_start_0
    const-string v1, "&uid"

    .line 353
    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/analytics/Tracker;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method public googleAnalyticsTrackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 2

    .line 375
    iget-object v0, p0, Lsg/gumi/bravefrontier/GameService;->mTracker:Lcom/google/android/gms/analytics/Tracker;

    if-eqz v0, :cond_0

    .line 378
    :try_start_0
    new-instance v1, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    invoke-direct {v1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;-><init>()V

    .line 380
    invoke-virtual {v1, p1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setCategory(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object p1

    .line 381
    invoke-virtual {p1, p2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setAction(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object p1

    .line 382
    invoke-virtual {p1, p3}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setLabel(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object p1

    .line 383
    invoke-virtual {p1, p4, p5}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setValue(J)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object p1

    .line 384
    invoke-virtual {p1}, Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;->build()Ljava/util/Map;

    move-result-object p1

    .line 378
    invoke-virtual {v0, p1}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method public googleAnalyticsTrackPurchase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DJLjava/lang/String;)V
    .locals 1

    .line 393
    iget-object v0, p0, Lsg/gumi/bravefrontier/GameService;->mTracker:Lcom/google/android/gms/analytics/Tracker;

    if-eqz v0, :cond_0

    .line 398
    :try_start_0
    new-instance v0, Lcom/google/android/gms/analytics/ecommerce/Product;

    invoke-direct {v0}, Lcom/google/android/gms/analytics/ecommerce/Product;-><init>()V

    .line 399
    invoke-virtual {v0, p3}, Lcom/google/android/gms/analytics/ecommerce/Product;->setId(Ljava/lang/String;)Lcom/google/android/gms/analytics/ecommerce/Product;

    move-result-object p3

    .line 400
    invoke-virtual {p3, p2}, Lcom/google/android/gms/analytics/ecommerce/Product;->setName(Ljava/lang/String;)Lcom/google/android/gms/analytics/ecommerce/Product;

    move-result-object p2

    .line 401
    invoke-virtual {p2, p4}, Lcom/google/android/gms/analytics/ecommerce/Product;->setCategory(Ljava/lang/String;)Lcom/google/android/gms/analytics/ecommerce/Product;

    move-result-object p2

    .line 402
    invoke-virtual {p2, p5, p6}, Lcom/google/android/gms/analytics/ecommerce/Product;->setPrice(D)Lcom/google/android/gms/analytics/ecommerce/Product;

    move-result-object p2

    long-to-int p3, p7

    .line 403
    invoke-virtual {p2, p3}, Lcom/google/android/gms/analytics/ecommerce/Product;->setQuantity(I)Lcom/google/android/gms/analytics/ecommerce/Product;

    move-result-object p2

    .line 405
    new-instance p3, Lcom/google/android/gms/analytics/ecommerce/ProductAction;

    const-string p4, "purchase"

    invoke-direct {p3, p4}, Lcom/google/android/gms/analytics/ecommerce/ProductAction;-><init>(Ljava/lang/String;)V

    .line 406
    invoke-virtual {p3, p1}, Lcom/google/android/gms/analytics/ecommerce/ProductAction;->setTransactionId(Ljava/lang/String;)Lcom/google/android/gms/analytics/ecommerce/ProductAction;

    move-result-object p1

    .line 408
    new-instance p3, Lcom/google/android/gms/analytics/HitBuilders$ScreenViewBuilder;

    invoke-direct {p3}, Lcom/google/android/gms/analytics/HitBuilders$ScreenViewBuilder;-><init>()V

    .line 409
    invoke-virtual {p3, p2}, Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;->addProduct(Lcom/google/android/gms/analytics/ecommerce/Product;)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/analytics/HitBuilders$ScreenViewBuilder;

    .line 411
    invoke-virtual {p2, p1}, Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;->setProductAction(Lcom/google/android/gms/analytics/ecommerce/ProductAction;)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;

    .line 413
    iget-object p1, p0, Lsg/gumi/bravefrontier/GameService;->mTracker:Lcom/google/android/gms/analytics/Tracker;

    const-string p3, "transaction"

    invoke-virtual {p1, p3}, Lcom/google/android/gms/analytics/Tracker;->setScreenName(Ljava/lang/String;)V

    .line 414
    iget-object p1, p0, Lsg/gumi/bravefrontier/GameService;->mTracker:Lcom/google/android/gms/analytics/Tracker;

    const-string p3, "&cu"

    invoke-virtual {p1, p3, p9}, Lcom/google/android/gms/analytics/Tracker;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    iget-object p1, p0, Lsg/gumi/bravefrontier/GameService;->mTracker:Lcom/google/android/gms/analytics/Tracker;

    invoke-virtual {p2}, Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;->build()Ljava/util/Map;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method public abstract hasSignInError()Z
.end method

.method public initGoogleAnalytics(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public initializeAmazonPhoneManager()V
    .locals 0

    return-void
.end method

.method public initializePSGN()V
    .locals 0

    return-void
.end method

.method public abstract isSignedIn()Z
.end method

.method logError(Ljava/lang/String;)V
    .locals 1

    .line 248
    iget-boolean v0, p0, Lsg/gumi/bravefrontier/GameService;->mDebugLog:Z

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lsg/gumi/bravefrontier/GameService;->mDebugTag:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method logWarn(Ljava/lang/String;)V
    .locals 1

    .line 242
    iget-boolean v0, p0, Lsg/gumi/bravefrontier/GameService;->mDebugLog:Z

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lsg/gumi/bravefrontier/GameService;->mDebugTag:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public abstract onActivityResult(IILandroid/content/Intent;)V
.end method

.method public abstract onPause(Landroid/app/Activity;)V
.end method

.method public abstract onResume(Landroid/app/Activity;)V
.end method

.method public abstract onStart(Landroid/app/Activity;)V
.end method

.method public abstract onStop(Landroid/app/Activity;)V
.end method

.method public abstract reconnectClients(I)V
.end method

.method public setAndroidIds(Landroid/app/Activity;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public setGoogleAdvertisingId(Landroid/app/Activity;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public final setUnknownErrorMessage(Ljava/lang/String;)V
    .locals 2

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Setting unknown error message to: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lsg/gumi/bravefrontier/GameService;->debugLog(Ljava/lang/String;)V

    .line 104
    iput-object p1, p0, Lsg/gumi/bravefrontier/GameService;->mUnknownErrorMessage:Ljava/lang/String;

    return-void
.end method

.method public varargs abstract setup(Lsg/gumi/bravefrontier/GameService$GameHelperListener;I[Ljava/lang/String;)V
.end method

.method public abstract showAchievements()V
.end method

.method public final showAlert(Ljava/lang/String;)V
    .locals 2

    .line 171
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lsg/gumi/bravefrontier/GameService;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x104000a

    const/4 v1, 0x0

    .line 172
    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public final showAlert(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 165
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lsg/gumi/bravefrontier/GameService;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const p2, 0x104000a

    const/4 v0, 0x0

    .line 166
    invoke-virtual {p1, p2, v0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public showPlayPhoneButton(Z)V
    .locals 0

    return-void
.end method

.method public abstract signOut()V
.end method

.method public submitLeaderBoardScore(Ljava/lang/String;I)V
    .locals 0

    return-void
.end method

.method public abstract unlockAchievement(Ljava/lang/String;)V
.end method

.method public abstract updateLeaderboard(ILjava/lang/String;)V
.end method
