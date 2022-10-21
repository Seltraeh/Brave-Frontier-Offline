.class public abstract Lcom/vungle/warren/AdActivity;
.super Landroid/app/Activity;
.source "AdActivity.java"


# static fields
.field public static final PLACEMENT_EXTRA:Ljava/lang/String; = "placement"

.field public static final PRESENTER_STATE:Ljava/lang/String; = "presenter_state"

.field private static final TAG:Ljava/lang/String; = "VungleActivity"

.field private static bus:Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;


# instance fields
.field private broadcastReceiver:Landroid/content/BroadcastReceiver;

.field private fullscreenCallback:Lcom/vungle/warren/PresentationFactory$FullScreenCallback;

.field private pendingStart:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private placementId:Ljava/lang/String;

.field private presenter:Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter;

.field private presenterFactory:Lcom/vungle/warren/PresentationFactory;

.field private resumed:Z

.field private started:Z

.field private state:Lcom/vungle/warren/ui/state/OptionsState;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 39
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 74
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/vungle/warren/AdActivity;->pendingStart:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 75
    iput-boolean v1, p0, Lcom/vungle/warren/AdActivity;->started:Z

    .line 76
    iput-boolean v1, p0, Lcom/vungle/warren/AdActivity;->resumed:Z

    .line 325
    new-instance v0, Lcom/vungle/warren/AdActivity$4;

    invoke-direct {v0, p0}, Lcom/vungle/warren/AdActivity$4;-><init>(Lcom/vungle/warren/AdActivity;)V

    iput-object v0, p0, Lcom/vungle/warren/AdActivity;->fullscreenCallback:Lcom/vungle/warren/PresentationFactory$FullScreenCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/vungle/warren/AdActivity;)Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/vungle/warren/AdActivity;->presenter:Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter;

    return-object p0
.end method

.method static synthetic access$002(Lcom/vungle/warren/AdActivity;Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter;)Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter;
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/vungle/warren/AdActivity;->presenter:Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter;

    return-object p1
.end method

.method static synthetic access$102(Lcom/vungle/warren/AdActivity;Lcom/vungle/warren/PresentationFactory;)Lcom/vungle/warren/PresentationFactory;
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/vungle/warren/AdActivity;->presenterFactory:Lcom/vungle/warren/PresentationFactory;

    return-object p1
.end method

.method static synthetic access$200(Lcom/vungle/warren/AdActivity;)Ljava/lang/String;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/vungle/warren/AdActivity;->placementId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/vungle/warren/AdActivity;ILjava/lang/String;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/vungle/warren/AdActivity;->deliverError(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$400()Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;
    .locals 1

    .line 39
    sget-object v0, Lcom/vungle/warren/AdActivity;->bus:Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/vungle/warren/AdActivity;)Lcom/vungle/warren/ui/state/OptionsState;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/vungle/warren/AdActivity;->state:Lcom/vungle/warren/ui/state/OptionsState;

    return-object p0
.end method

.method static synthetic access$600(Lcom/vungle/warren/AdActivity;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/vungle/warren/AdActivity;->pendingStart:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic access$700(Lcom/vungle/warren/AdActivity;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/vungle/warren/AdActivity;->start()V

    return-void
.end method

.method private connectBroadcastReceiver()V
    .locals 4

    .line 180
    new-instance v0, Lcom/vungle/warren/AdActivity$3;

    invoke-direct {v0, p0}, Lcom/vungle/warren/AdActivity$3;-><init>(Lcom/vungle/warren/AdActivity;)V

    iput-object v0, p0, Lcom/vungle/warren/AdActivity;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 202
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/vungle/warren/AdActivity;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "AdvertisementBus"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method private deliverError(ILjava/lang/String;)V
    .locals 2

    .line 174
    sget-object v0, Lcom/vungle/warren/AdActivity;->bus:Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;

    if-eqz v0, :cond_0

    .line 175
    new-instance v1, Lcom/vungle/warren/error/VungleException;

    invoke-direct {v1, p1}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    invoke-interface {v0, v1, p2}, Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;->onError(Lcom/vungle/warren/error/VungleException;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected static getEventListener()Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;
    .locals 1

    .line 89
    sget-object v0, Lcom/vungle/warren/AdActivity;->bus:Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;

    return-object v0
.end method

.method public static setEventListener(Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;)V
    .locals 0

    .line 84
    sput-object p0, Lcom/vungle/warren/AdActivity;->bus:Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;

    return-void
.end method

.method private start()V
    .locals 2

    .line 216
    iget-object v0, p0, Lcom/vungle/warren/AdActivity;->presenter:Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/vungle/warren/AdActivity;->pendingStart:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0

    .line 218
    :cond_0
    iget-boolean v0, p0, Lcom/vungle/warren/AdActivity;->started:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/vungle/warren/AdActivity;->resumed:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 219
    iget-object v0, p0, Lcom/vungle/warren/AdActivity;->presenter:Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter;

    invoke-interface {v0}, Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter;->start()V

    .line 220
    iput-boolean v1, p0, Lcom/vungle/warren/AdActivity;->started:Z

    :cond_1
    :goto_0
    return-void
.end method

.method private stop()V
    .locals 3

    .line 225
    iget-object v0, p0, Lcom/vungle/warren/AdActivity;->presenter:Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/vungle/warren/AdActivity;->started:Z

    if-eqz v0, :cond_1

    .line 226
    invoke-virtual {p0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    .line 227
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    or-int/2addr v0, v2

    .line 228
    iget-object v2, p0, Lcom/vungle/warren/AdActivity;->presenter:Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter;

    invoke-interface {v2, v0}, Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter;->stop(I)V

    .line 229
    iput-boolean v1, p0, Lcom/vungle/warren/AdActivity;->started:Z

    .line 231
    :cond_1
    iget-object v0, p0, Lcom/vungle/warren/AdActivity;->pendingStart:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method


# virtual methods
.method protected abstract canRotate()Z
.end method

.method public onBackPressed()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ResourceType"
        }
    .end annotation

    .line 267
    iget-object v0, p0, Lcom/vungle/warren/AdActivity;->presenter:Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 268
    invoke-interface {v0, v1}, Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter;->handleExit(Ljava/lang/String;)Z

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 250
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 253
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const-string v0, "VungleActivity"

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    const-string p1, "landscape"

    .line 254
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    const-string p1, "portrait"

    .line 256
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/vungle/warren/AdActivity;->presenter:Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter;

    if-eqz p1, :cond_2

    .line 259
    invoke-interface {p1}, Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter;->onViewConfigurationChanged()V

    :cond_2
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    .line 95
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    .line 96
    invoke-virtual {p0, v0}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 98
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x1000000

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 103
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "placement"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/warren/AdActivity;->placementId:Ljava/lang/String;

    .line 105
    invoke-static {p0}, Lcom/vungle/warren/ServiceLocator;->getInstance(Landroid/content/Context;)Lcom/vungle/warren/ServiceLocator;

    move-result-object v0

    .line 106
    const-class v1, Lcom/vungle/warren/VungleStaticApi;

    invoke-virtual {v0, v1}, Lcom/vungle/warren/ServiceLocator;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vungle/warren/VungleStaticApi;

    .line 109
    invoke-interface {v1}, Lcom/vungle/warren/VungleStaticApi;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/vungle/warren/AdActivity;->bus:Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/vungle/warren/AdActivity;->placementId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 119
    :cond_0
    :try_start_0
    new-instance v1, Lcom/vungle/warren/ui/view/FullAdWidget;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/vungle/warren/ui/view/FullAdWidget;-><init>(Landroid/content/Context;Landroid/view/Window;)V
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    const-class v2, Lcom/vungle/warren/PresentationFactory;

    invoke-virtual {v0, v2}, Lcom/vungle/warren/ServiceLocator;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/warren/PresentationFactory;

    iput-object v0, p0, Lcom/vungle/warren/AdActivity;->presenterFactory:Lcom/vungle/warren/PresentationFactory;

    if-nez p1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const-string v0, "presenter_state"

    .line 134
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/vungle/warren/ui/state/OptionsState;

    :goto_0
    move-object v6, v0

    iput-object v6, p0, Lcom/vungle/warren/AdActivity;->state:Lcom/vungle/warren/ui/state/OptionsState;

    .line 136
    iget-object v2, p0, Lcom/vungle/warren/AdActivity;->presenterFactory:Lcom/vungle/warren/PresentationFactory;

    iget-object v4, p0, Lcom/vungle/warren/AdActivity;->placementId:Ljava/lang/String;

    new-instance v7, Lcom/vungle/warren/AdActivity$1;

    invoke-direct {v7, p0}, Lcom/vungle/warren/AdActivity$1;-><init>(Lcom/vungle/warren/AdActivity;)V

    new-instance v8, Lcom/vungle/warren/AdActivity$2;

    invoke-direct {v8, p0}, Lcom/vungle/warren/AdActivity$2;-><init>(Lcom/vungle/warren/AdActivity;)V

    iget-object v10, p0, Lcom/vungle/warren/AdActivity;->fullscreenCallback:Lcom/vungle/warren/PresentationFactory$FullScreenCallback;

    move-object v3, p0

    move-object v5, v1

    move-object v9, p1

    invoke-interface/range {v2 .. v10}, Lcom/vungle/warren/PresentationFactory;->getFullScreenPresentation(Landroid/content/Context;Ljava/lang/String;Lcom/vungle/warren/ui/view/FullAdWidget;Lcom/vungle/warren/ui/state/OptionsState;Lcom/vungle/warren/ui/CloseDelegate;Lcom/vungle/warren/ui/OrientationDelegate;Landroid/os/Bundle;Lcom/vungle/warren/PresentationFactory$FullScreenCallback;)V

    .line 157
    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Landroid/app/Activity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 159
    invoke-direct {p0}, Lcom/vungle/warren/AdActivity;->connectBroadcastReceiver()V

    return-void

    :catch_0
    const/16 p1, 0xa

    .line 121
    iget-object v0, p0, Lcom/vungle/warren/AdActivity;->placementId:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/vungle/warren/AdActivity;->deliverError(ILjava/lang/String;)V

    .line 122
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 114
    :cond_2
    :goto_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .line 310
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/vungle/warren/AdActivity;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 312
    iget-object v0, p0, Lcom/vungle/warren/AdActivity;->presenter:Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter;

    if-eqz v0, :cond_0

    .line 313
    invoke-virtual {p0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter;->detach(Z)V

    goto :goto_0

    .line 314
    :cond_0
    iget-object v0, p0, Lcom/vungle/warren/AdActivity;->presenterFactory:Lcom/vungle/warren/PresentationFactory;

    if-eqz v0, :cond_1

    .line 315
    invoke-interface {v0}, Lcom/vungle/warren/PresentationFactory;->destroy()V

    const/4 v0, 0x0

    .line 316
    iput-object v0, p0, Lcom/vungle/warren/AdActivity;->presenterFactory:Lcom/vungle/warren/PresentationFactory;

    .line 317
    sget-object v0, Lcom/vungle/warren/AdActivity;->bus:Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;

    if-eqz v0, :cond_1

    .line 318
    new-instance v1, Lcom/vungle/warren/error/VungleException;

    const/16 v2, 0x19

    invoke-direct {v1, v2}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    iget-object v2, p0, Lcom/vungle/warren/AdActivity;->placementId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;->onError(Lcom/vungle/warren/error/VungleException;Ljava/lang/String;)V

    .line 322
    :cond_1
    :goto_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 3

    .line 164
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 165
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "placement"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 166
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 167
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 168
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tried to play another placement "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " while playing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VungleActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0xf

    .line 169
    invoke-direct {p0, v0, p1}, Lcom/vungle/warren/AdActivity;->deliverError(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 243
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    const/4 v0, 0x0

    .line 244
    iput-boolean v0, p0, Lcom/vungle/warren/AdActivity;->resumed:Z

    .line 245
    invoke-direct {p0}, Lcom/vungle/warren/AdActivity;->stop()V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 291
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 292
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRestoreInstanceState("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VungleActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    .line 294
    iget-object v0, p0, Lcom/vungle/warren/AdActivity;->presenter:Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter;

    if-eqz v0, :cond_0

    const-string v1, "presenter_state"

    .line 295
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/vungle/warren/ui/state/OptionsState;

    invoke-interface {v0, p1}, Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter;->restoreFromSave(Lcom/vungle/warren/ui/state/OptionsState;)V

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 236
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const/4 v0, 0x1

    .line 237
    iput-boolean v0, p0, Lcom/vungle/warren/AdActivity;->resumed:Z

    .line 238
    invoke-direct {p0}, Lcom/vungle/warren/AdActivity;->start()V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "VungleActivity"

    const-string v1, "onSaveInstanceState"

    .line 274
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    new-instance v0, Lcom/vungle/warren/ui/state/BundleOptionsState;

    invoke-direct {v0}, Lcom/vungle/warren/ui/state/BundleOptionsState;-><init>()V

    .line 277
    iget-object v1, p0, Lcom/vungle/warren/AdActivity;->presenter:Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter;

    if-eqz v1, :cond_0

    .line 278
    invoke-interface {v1, v0}, Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter;->generateSaveState(Lcom/vungle/warren/ui/state/OptionsState;)V

    const-string v1, "presenter_state"

    .line 279
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 282
    :cond_0
    iget-object v0, p0, Lcom/vungle/warren/AdActivity;->presenterFactory:Lcom/vungle/warren/PresentationFactory;

    if-eqz v0, :cond_1

    .line 283
    invoke-interface {v0, p1}, Lcom/vungle/warren/PresentationFactory;->saveState(Landroid/os/Bundle;)V

    .line 286
    :cond_1
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    .line 207
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    if-eqz p1, :cond_0

    .line 209
    invoke-direct {p0}, Lcom/vungle/warren/AdActivity;->start()V

    goto :goto_0

    .line 211
    :cond_0
    invoke-direct {p0}, Lcom/vungle/warren/AdActivity;->stop()V

    :goto_0
    return-void
.end method

.method public setRequestedOrientation(I)V
    .locals 1

    .line 301
    invoke-virtual {p0}, Lcom/vungle/warren/AdActivity;->canRotate()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 302
    invoke-super {p0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :cond_0
    return-void
.end method
