.class public Lsg/gumi/bravefrontier/Facebook;
.super Ljava/lang/Object;
.source "Facebook.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsg/gumi/bravefrontier/Facebook$FacebookNativeCallback;
    }
.end annotation


# static fields
.field private static callbackManager:Lcom/facebook/CallbackManager;

.field private static mActivity:Lsg/gumi/bravefrontier/BraveFrontier;

.field private static mLoginManager:Lcom/facebook/login/LoginManager;

.field private static offset:I

.field public static sFacebook:Lsg/gumi/bravefrontier/Facebook;


# instance fields
.field private appEventsLogger:Lcom/facebook/appevents/AppEventsLogger;

.field private feedParams:Landroid/os/Bundle;

.field private m_openGraphObjectsArr:[Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lsg/gumi/bravefrontier/BraveFrontier;)V
    .locals 2

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 41
    iput-object v0, p0, Lsg/gumi/bravefrontier/Facebook;->feedParams:Landroid/os/Bundle;

    .line 52
    sput-object p0, Lsg/gumi/bravefrontier/Facebook;->sFacebook:Lsg/gumi/bravefrontier/Facebook;

    .line 53
    sput-object p1, Lsg/gumi/bravefrontier/Facebook;->mActivity:Lsg/gumi/bravefrontier/BraveFrontier;

    .line 54
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d008c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/facebook/appevents/AppEventsLogger;->newLogger(Landroid/content/Context;Ljava/lang/String;)Lcom/facebook/appevents/AppEventsLogger;

    move-result-object p1

    iput-object p1, p0, Lsg/gumi/bravefrontier/Facebook;->appEventsLogger:Lcom/facebook/appevents/AppEventsLogger;

    .line 55
    invoke-static {}, Lcom/facebook/login/LoginManager;->getInstance()Lcom/facebook/login/LoginManager;

    move-result-object p1

    sput-object p1, Lsg/gumi/bravefrontier/Facebook;->mLoginManager:Lcom/facebook/login/LoginManager;

    .line 57
    invoke-static {}, Lcom/facebook/CallbackManager$Factory;->create()Lcom/facebook/CallbackManager;

    move-result-object p1

    sput-object p1, Lsg/gumi/bravefrontier/Facebook;->callbackManager:Lcom/facebook/CallbackManager;

    .line 58
    sget-object v0, Lsg/gumi/bravefrontier/Facebook;->mLoginManager:Lcom/facebook/login/LoginManager;

    new-instance v1, Lsg/gumi/bravefrontier/Facebook$1;

    invoke-direct {v1, p0}, Lsg/gumi/bravefrontier/Facebook$1;-><init>(Lsg/gumi/bravefrontier/Facebook;)V

    invoke-virtual {v0, p1, v1}, Lcom/facebook/login/LoginManager;->registerCallback(Lcom/facebook/CallbackManager;Lcom/facebook/FacebookCallback;)V

    return-void
.end method

.method public static callbackmanagerOnActivityResult(IILandroid/content/Intent;)Z
    .locals 1

    .line 219
    sget-object v0, Lsg/gumi/bravefrontier/Facebook;->callbackManager:Lcom/facebook/CallbackManager;

    invoke-interface {v0, p0, p1, p2}, Lcom/facebook/CallbackManager;->onActivityResult(IILandroid/content/Intent;)Z

    move-result p0

    return p0
.end method

.method public static checkForPermission(Ljava/util/List;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public static getAccessToken()Ljava/lang/String;
    .locals 1

    .line 121
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 124
    invoke-virtual {v0}, Lcom/facebook/AccessToken;->getToken()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public static getUserEmail()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public static getUserId()Ljava/lang/String;
    .locals 1

    .line 103
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 106
    invoke-virtual {v0}, Lcom/facebook/AccessToken;->getUserId()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public static isLoggedIn()Z
    .locals 1

    .line 90
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static login()V
    .locals 3

    .line 79
    sget-object v0, Lsg/gumi/bravefrontier/Facebook;->mLoginManager:Lcom/facebook/login/LoginManager;

    sget-object v1, Lsg/gumi/bravefrontier/Facebook;->mActivity:Lsg/gumi/bravefrontier/BraveFrontier;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/facebook/login/LoginManager;->logInWithReadPermissions(Landroid/app/Activity;Ljava/util/Collection;)V

    return-void
.end method

.method public static logout()V
    .locals 2

    const-string v0, "ALEX_TEST"

    const-string v1, "FB LOG OUT"

    .line 84
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    sget-object v0, Lsg/gumi/bravefrontier/Facebook;->mLoginManager:Lcom/facebook/login/LoginManager;

    invoke-virtual {v0}, Lcom/facebook/login/LoginManager;->logOut()V

    return-void
.end method

.method public static native onError(Ljava/lang/String;)V
.end method

.method public static native onFacebookOperationCancelledException()V
.end method

.method public static native onLoginFail(Ljava/lang/String;)V
.end method

.method public static native onLoginSuccess()V
.end method

.method public static native onUserLogin()V
.end method

.method public static final trackPurchase(FLjava/lang/String;)V
    .locals 3

    .line 212
    :try_start_0
    sget-object v0, Lsg/gumi/bravefrontier/Facebook;->sFacebook:Lsg/gumi/bravefrontier/Facebook;

    iget-object v0, v0, Lsg/gumi/bravefrontier/Facebook;->appEventsLogger:Lcom/facebook/appevents/AppEventsLogger;

    float-to-double v1, p0

    invoke-static {v1, v2}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object p0

    invoke-static {p1}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/facebook/appevents/AppEventsLogger;->logPurchase(Ljava/math/BigDecimal;Ljava/util/Currency;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method
