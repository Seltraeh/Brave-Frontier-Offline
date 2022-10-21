.class Lcom/vungle/warren/AdvertisementPresentationFactory$FullScreenPresentationTask;
.super Lcom/vungle/warren/AdvertisementPresentationFactory$BaseTask;
.source "AdvertisementPresentationFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/warren/AdvertisementPresentationFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FullScreenPresentationTask"
.end annotation


# instance fields
.field private final adLoader:Lcom/vungle/warren/AdLoader;

.field private advertisement:Lcom/vungle/warren/model/Advertisement;

.field private final apiClient:Lcom/vungle/warren/VungleApiClient;

.field private final closeDelegate:Lcom/vungle/warren/ui/CloseDelegate;

.field private context:Landroid/content/Context;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field

.field private fullAdWidget:Lcom/vungle/warren/ui/view/FullAdWidget;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field

.field private final fullscreenCallback:Lcom/vungle/warren/PresentationFactory$FullScreenCallback;

.field private final jobRunner:Lcom/vungle/warren/tasks/JobRunner;

.field private final optionsState:Lcom/vungle/warren/ui/state/OptionsState;

.field private final orientationDelegate:Lcom/vungle/warren/ui/OrientationDelegate;

.field private final placementId:Ljava/lang/String;

.field private final savedState:Landroid/os/Bundle;

.field private final sessionData:Lcom/vungle/warren/SessionData;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/vungle/warren/AdLoader;Ljava/lang/String;Lcom/vungle/warren/persistence/Repository;Lcom/vungle/warren/VungleStaticApi;Lcom/vungle/warren/tasks/JobRunner;Lcom/vungle/warren/VungleApiClient;Lcom/vungle/warren/SessionData;Lcom/vungle/warren/ui/view/FullAdWidget;Lcom/vungle/warren/ui/state/OptionsState;Lcom/vungle/warren/ui/OrientationDelegate;Lcom/vungle/warren/ui/CloseDelegate;Lcom/vungle/warren/PresentationFactory$FullScreenCallback;Lcom/vungle/warren/AdvertisementPresentationFactory$BaseTask$OnModelLoadListener;Landroid/os/Bundle;)V
    .locals 0

    .line 234
    invoke-direct {p0, p4, p5, p14}, Lcom/vungle/warren/AdvertisementPresentationFactory$BaseTask;-><init>(Lcom/vungle/warren/persistence/Repository;Lcom/vungle/warren/VungleStaticApi;Lcom/vungle/warren/AdvertisementPresentationFactory$BaseTask$OnModelLoadListener;)V

    .line 235
    iput-object p3, p0, Lcom/vungle/warren/AdvertisementPresentationFactory$FullScreenPresentationTask;->placementId:Ljava/lang/String;

    .line 236
    iput-object p9, p0, Lcom/vungle/warren/AdvertisementPresentationFactory$FullScreenPresentationTask;->fullAdWidget:Lcom/vungle/warren/ui/view/FullAdWidget;

    .line 237
    iput-object p10, p0, Lcom/vungle/warren/AdvertisementPresentationFactory$FullScreenPresentationTask;->optionsState:Lcom/vungle/warren/ui/state/OptionsState;

    .line 238
    iput-object p1, p0, Lcom/vungle/warren/AdvertisementPresentationFactory$FullScreenPresentationTask;->context:Landroid/content/Context;

    .line 239
    iput-object p13, p0, Lcom/vungle/warren/AdvertisementPresentationFactory$FullScreenPresentationTask;->fullscreenCallback:Lcom/vungle/warren/PresentationFactory$FullScreenCallback;

    .line 240
    iput-object p15, p0, Lcom/vungle/warren/AdvertisementPresentationFactory$FullScreenPresentationTask;->savedState:Landroid/os/Bundle;

    .line 241
    iput-object p6, p0, Lcom/vungle/warren/AdvertisementPresentationFactory$FullScreenPresentationTask;->jobRunner:Lcom/vungle/warren/tasks/JobRunner;

    .line 242
    iput-object p7, p0, Lcom/vungle/warren/AdvertisementPresentationFactory$FullScreenPresentationTask;->apiClient:Lcom/vungle/warren/VungleApiClient;

    .line 243
    iput-object p11, p0, Lcom/vungle/warren/AdvertisementPresentationFactory$FullScreenPresentationTask;->orientationDelegate:Lcom/vungle/warren/ui/OrientationDelegate;

    .line 244
    iput-object p12, p0, Lcom/vungle/warren/AdvertisementPresentationFactory$FullScreenPresentationTask;->closeDelegate:Lcom/vungle/warren/ui/CloseDelegate;

    .line 245
    iput-object p2, p0, Lcom/vungle/warren/AdvertisementPresentationFactory$FullScreenPresentationTask;->adLoader:Lcom/vungle/warren/AdLoader;

    .line 246
    iput-object p8, p0, Lcom/vungle/warren/AdvertisementPresentationFactory$FullScreenPresentationTask;->sessionData:Lcom/vungle/warren/SessionData;

    return-void
.end method


# virtual methods
.method clear()V
    .locals 1

    .line 251
    invoke-super {p0}, Lcom/vungle/warren/AdvertisementPresentationFactory$BaseTask;->clear()V

    const/4 v0, 0x0

    .line 252
    iput-object v0, p0, Lcom/vungle/warren/AdvertisementPresentationFactory$FullScreenPresentationTask;->context:Landroid/content/Context;

    .line 253
    iput-object v0, p0, Lcom/vungle/warren/AdvertisementPresentationFactory$FullScreenPresentationTask;->fullAdWidget:Lcom/vungle/warren/ui/view/FullAdWidget;

    return-void
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;
    .locals 17

    move-object/from16 v1, p0

    .line 260
    :try_start_0
    iget-object v0, v1, Lcom/vungle/warren/AdvertisementPresentationFactory$FullScreenPresentationTask;->placementId:Ljava/lang/String;

    iget-object v2, v1, Lcom/vungle/warren/AdvertisementPresentationFactory$FullScreenPresentationTask;->savedState:Landroid/os/Bundle;

    invoke-virtual {v1, v0, v2}, Lcom/vungle/warren/AdvertisementPresentationFactory$BaseTask;->loadPresentationData(Ljava/lang/String;Landroid/os/Bundle;)Landroid/util/Pair;

    move-result-object v0
    :try_end_0
    .catch Lcom/vungle/warren/error/VungleException; {:try_start_0 .. :try_end_0} :catch_0

    .line 265
    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lcom/vungle/warren/model/Advertisement;

    iput-object v2, v1, Lcom/vungle/warren/AdvertisementPresentationFactory$FullScreenPresentationTask;->advertisement:Lcom/vungle/warren/model/Advertisement;

    .line 266
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Lcom/vungle/warren/model/Placement;

    .line 268
    iget-object v0, v1, Lcom/vungle/warren/AdvertisementPresentationFactory$FullScreenPresentationTask;->adLoader:Lcom/vungle/warren/AdLoader;

    invoke-virtual {v0, v2}, Lcom/vungle/warren/AdLoader;->canRenderAd(Lcom/vungle/warren/model/Advertisement;)Z

    move-result v0

    const/16 v2, 0xa

    if-nez v0, :cond_0

    .line 269
    invoke-static {}, Lcom/vungle/warren/AdvertisementPresentationFactory;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v3, "Advertisement is null or assets are missing"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    new-instance v0, Lcom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;

    new-instance v3, Lcom/vungle/warren/error/VungleException;

    invoke-direct {v3, v2}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    invoke-direct {v0, v3}, Lcom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;-><init>(Lcom/vungle/warren/error/VungleException;)V

    return-object v0

    .line 273
    :cond_0
    new-instance v8, Lcom/vungle/warren/analytics/JobDelegateAnalytics;

    iget-object v0, v1, Lcom/vungle/warren/AdvertisementPresentationFactory$FullScreenPresentationTask;->jobRunner:Lcom/vungle/warren/tasks/JobRunner;

    invoke-direct {v8, v0}, Lcom/vungle/warren/analytics/JobDelegateAnalytics;-><init>(Lcom/vungle/warren/tasks/JobRunner;)V

    const/4 v0, 0x0

    .line 276
    iget-object v3, v1, Lcom/vungle/warren/AdvertisementPresentationFactory$BaseTask;->repository:Lcom/vungle/warren/persistence/Repository;

    const-class v4, Lcom/vungle/warren/model/Cookie;

    const-string v6, "appId"

    invoke-virtual {v3, v6, v4}, Lcom/vungle/warren/persistence/Repository;->load(Ljava/lang/String;Ljava/lang/Class;)Lcom/vungle/warren/persistence/FutureResult;

    move-result-object v3

    invoke-virtual {v3}, Lcom/vungle/warren/persistence/FutureResult;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vungle/warren/model/Cookie;

    if-eqz v3, :cond_1

    .line 277
    invoke-virtual {v3, v6}, Lcom/vungle/warren/model/Cookie;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 278
    invoke-virtual {v3, v6}, Lcom/vungle/warren/model/Cookie;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 281
    :cond_1
    new-instance v15, Lcom/vungle/warren/ui/view/VungleWebClient;

    iget-object v3, v1, Lcom/vungle/warren/AdvertisementPresentationFactory$FullScreenPresentationTask;->advertisement:Lcom/vungle/warren/model/Advertisement;

    invoke-direct {v15, v3, v5}, Lcom/vungle/warren/ui/view/VungleWebClient;-><init>(Lcom/vungle/warren/model/Advertisement;Lcom/vungle/warren/model/Placement;)V

    .line 282
    iget-object v3, v1, Lcom/vungle/warren/AdvertisementPresentationFactory$BaseTask;->repository:Lcom/vungle/warren/persistence/Repository;

    iget-object v4, v1, Lcom/vungle/warren/AdvertisementPresentationFactory$FullScreenPresentationTask;->advertisement:Lcom/vungle/warren/model/Advertisement;

    invoke-virtual {v4}, Lcom/vungle/warren/model/Advertisement;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/vungle/warren/persistence/Repository;->getAdvertisementAssetDirectory(Ljava/lang/String;)Lcom/vungle/warren/persistence/FutureResult;

    move-result-object v3

    invoke-virtual {v3}, Lcom/vungle/warren/persistence/FutureResult;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v12, v3

    check-cast v12, Ljava/io/File;

    if-eqz v12, :cond_5

    .line 283
    invoke-virtual {v12}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_2

    goto/16 :goto_0

    .line 288
    :cond_2
    iget-object v3, v1, Lcom/vungle/warren/AdvertisementPresentationFactory$FullScreenPresentationTask;->advertisement:Lcom/vungle/warren/model/Advertisement;

    invoke-virtual {v3}, Lcom/vungle/warren/model/Advertisement;->getAdType()I

    move-result v3

    if-eqz v3, :cond_4

    const/4 v0, 0x1

    if-eq v3, v0, :cond_3

    .line 329
    new-instance v0, Lcom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;

    new-instance v3, Lcom/vungle/warren/error/VungleException;

    invoke-direct {v3, v2}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    invoke-direct {v0, v3}, Lcom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;-><init>(Lcom/vungle/warren/error/VungleException;)V

    return-object v0

    .line 311
    :cond_3
    new-instance v0, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;

    iget-object v4, v1, Lcom/vungle/warren/AdvertisementPresentationFactory$FullScreenPresentationTask;->advertisement:Lcom/vungle/warren/model/Advertisement;

    iget-object v6, v1, Lcom/vungle/warren/AdvertisementPresentationFactory$BaseTask;->repository:Lcom/vungle/warren/persistence/Repository;

    new-instance v7, Lcom/vungle/warren/utility/HandlerScheduler;

    invoke-direct {v7}, Lcom/vungle/warren/utility/HandlerScheduler;-><init>()V

    iget-object v10, v1, Lcom/vungle/warren/AdvertisementPresentationFactory$FullScreenPresentationTask;->optionsState:Lcom/vungle/warren/ui/state/OptionsState;

    iget-object v2, v1, Lcom/vungle/warren/AdvertisementPresentationFactory$FullScreenPresentationTask;->sessionData:Lcom/vungle/warren/SessionData;

    .line 322
    invoke-static {}, Lcom/vungle/warren/utility/ActivityManager;->getInstance()Lcom/vungle/warren/utility/ActivityManager;

    move-result-object v13

    move-object v3, v0

    move-object v9, v15

    move-object v11, v12

    move-object v12, v2

    invoke-direct/range {v3 .. v13}, Lcom/vungle/warren/ui/presenter/MRAIDAdPresenter;-><init>(Lcom/vungle/warren/model/Advertisement;Lcom/vungle/warren/model/Placement;Lcom/vungle/warren/persistence/Repository;Lcom/vungle/warren/utility/Scheduler;Lcom/vungle/warren/analytics/AdAnalytics;Lcom/vungle/warren/ui/view/WebViewAPI;Lcom/vungle/warren/ui/state/OptionsState;Ljava/io/File;Lcom/vungle/warren/SessionData;Lcom/vungle/warren/utility/ActivityManager;)V

    .line 324
    new-instance v10, Lcom/vungle/warren/ui/view/MRAIDAdView;

    iget-object v2, v1, Lcom/vungle/warren/AdvertisementPresentationFactory$FullScreenPresentationTask;->context:Landroid/content/Context;

    iget-object v3, v1, Lcom/vungle/warren/AdvertisementPresentationFactory$FullScreenPresentationTask;->fullAdWidget:Lcom/vungle/warren/ui/view/FullAdWidget;

    iget-object v4, v1, Lcom/vungle/warren/AdvertisementPresentationFactory$FullScreenPresentationTask;->orientationDelegate:Lcom/vungle/warren/ui/OrientationDelegate;

    iget-object v5, v1, Lcom/vungle/warren/AdvertisementPresentationFactory$FullScreenPresentationTask;->closeDelegate:Lcom/vungle/warren/ui/CloseDelegate;

    invoke-direct {v10, v2, v3, v4, v5}, Lcom/vungle/warren/ui/view/MRAIDAdView;-><init>(Landroid/content/Context;Lcom/vungle/warren/ui/view/FullAdWidget;Lcom/vungle/warren/ui/OrientationDelegate;Lcom/vungle/warren/ui/CloseDelegate;)V

    .line 326
    new-instance v2, Lcom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v9, v2

    move-object v11, v0

    move-object v12, v15

    invoke-direct/range {v9 .. v14}, Lcom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;-><init>(Lcom/vungle/warren/ui/contract/AdContract$AdView;Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter;Lcom/vungle/warren/ui/view/VungleWebClient;Lcom/vungle/warren/analytics/MoatTracker;Ljava/lang/String;)V

    return-object v2

    .line 290
    :cond_4
    iget-object v2, v1, Lcom/vungle/warren/AdvertisementPresentationFactory$FullScreenPresentationTask;->fullAdWidget:Lcom/vungle/warren/ui/view/FullAdWidget;

    iget-object v2, v2, Lcom/vungle/warren/ui/view/FullAdWidget;->videoView:Landroid/widget/VideoView;

    iget-object v3, v1, Lcom/vungle/warren/AdvertisementPresentationFactory$FullScreenPresentationTask;->apiClient:Lcom/vungle/warren/VungleApiClient;

    invoke-virtual {v3}, Lcom/vungle/warren/VungleApiClient;->getMoatEnabled()Z

    move-result v3

    invoke-static {v2, v3}, Lcom/vungle/warren/analytics/MoatTracker;->connect(Landroid/widget/VideoView;Z)Lcom/vungle/warren/analytics/MoatTracker;

    move-result-object v2

    .line 292
    new-instance v16, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;

    iget-object v4, v1, Lcom/vungle/warren/AdvertisementPresentationFactory$FullScreenPresentationTask;->advertisement:Lcom/vungle/warren/model/Advertisement;

    iget-object v6, v1, Lcom/vungle/warren/AdvertisementPresentationFactory$BaseTask;->repository:Lcom/vungle/warren/persistence/Repository;

    new-instance v7, Lcom/vungle/warren/utility/HandlerScheduler;

    invoke-direct {v7}, Lcom/vungle/warren/utility/HandlerScheduler;-><init>()V

    iget-object v11, v1, Lcom/vungle/warren/AdvertisementPresentationFactory$FullScreenPresentationTask;->optionsState:Lcom/vungle/warren/ui/state/OptionsState;

    iget-object v13, v1, Lcom/vungle/warren/AdvertisementPresentationFactory$FullScreenPresentationTask;->sessionData:Lcom/vungle/warren/SessionData;

    .line 304
    invoke-static {}, Lcom/vungle/warren/utility/ActivityManager;->getInstance()Lcom/vungle/warren/utility/ActivityManager;

    move-result-object v14

    move-object/from16 v3, v16

    move-object v9, v2

    move-object v10, v15

    invoke-direct/range {v3 .. v14}, Lcom/vungle/warren/ui/presenter/LocalAdPresenter;-><init>(Lcom/vungle/warren/model/Advertisement;Lcom/vungle/warren/model/Placement;Lcom/vungle/warren/persistence/Repository;Lcom/vungle/warren/utility/Scheduler;Lcom/vungle/warren/analytics/AdAnalytics;Lcom/vungle/warren/analytics/AnalyticsVideoTracker;Lcom/vungle/warren/ui/view/WebViewAPI;Lcom/vungle/warren/ui/state/OptionsState;Ljava/io/File;Lcom/vungle/warren/SessionData;Lcom/vungle/warren/utility/ActivityManager;)V

    .line 306
    new-instance v10, Lcom/vungle/warren/ui/view/LocalAdView;

    iget-object v3, v1, Lcom/vungle/warren/AdvertisementPresentationFactory$FullScreenPresentationTask;->context:Landroid/content/Context;

    iget-object v4, v1, Lcom/vungle/warren/AdvertisementPresentationFactory$FullScreenPresentationTask;->fullAdWidget:Lcom/vungle/warren/ui/view/FullAdWidget;

    iget-object v5, v1, Lcom/vungle/warren/AdvertisementPresentationFactory$FullScreenPresentationTask;->orientationDelegate:Lcom/vungle/warren/ui/OrientationDelegate;

    iget-object v6, v1, Lcom/vungle/warren/AdvertisementPresentationFactory$FullScreenPresentationTask;->closeDelegate:Lcom/vungle/warren/ui/CloseDelegate;

    invoke-direct {v10, v3, v4, v5, v6}, Lcom/vungle/warren/ui/view/LocalAdView;-><init>(Landroid/content/Context;Lcom/vungle/warren/ui/view/FullAdWidget;Lcom/vungle/warren/ui/OrientationDelegate;Lcom/vungle/warren/ui/CloseDelegate;)V

    .line 308
    new-instance v3, Lcom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;

    move-object v9, v3

    move-object/from16 v11, v16

    move-object v12, v15

    move-object v13, v2

    move-object v14, v0

    invoke-direct/range {v9 .. v14}, Lcom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;-><init>(Lcom/vungle/warren/ui/contract/AdContract$AdView;Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter;Lcom/vungle/warren/ui/view/VungleWebClient;Lcom/vungle/warren/analytics/MoatTracker;Ljava/lang/String;)V

    return-object v3

    .line 284
    :cond_5
    :goto_0
    invoke-static {}, Lcom/vungle/warren/AdvertisementPresentationFactory;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Advertisement assets dir is missing"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    new-instance v0, Lcom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;

    new-instance v2, Lcom/vungle/warren/error/VungleException;

    const/16 v3, 0x1a

    invoke-direct {v2, v3}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    invoke-direct {v0, v2}, Lcom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;-><init>(Lcom/vungle/warren/error/VungleException;)V

    return-object v0

    :catch_0
    move-exception v0

    .line 262
    new-instance v2, Lcom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;

    invoke-direct {v2, v0}, Lcom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;-><init>(Lcom/vungle/warren/error/VungleException;)V

    return-object v2
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 199
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/vungle/warren/AdvertisementPresentationFactory$FullScreenPresentationTask;->doInBackground([Ljava/lang/Void;)Lcom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Lcom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;)V
    .locals 5

    .line 335
    invoke-super {p0, p1}, Lcom/vungle/warren/AdvertisementPresentationFactory$BaseTask;->onPostExecute(Lcom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;)V

    .line 337
    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/vungle/warren/AdvertisementPresentationFactory$FullScreenPresentationTask;->fullscreenCallback:Lcom/vungle/warren/PresentationFactory$FullScreenCallback;

    if-eqz v0, :cond_2

    .line 338
    invoke-static {p1}, Lcom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;->access$100(Lcom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;)Lcom/vungle/warren/error/VungleException;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 339
    invoke-static {}, Lcom/vungle/warren/AdvertisementPresentationFactory;->access$000()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;->access$100(Lcom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;)Lcom/vungle/warren/error/VungleException;

    move-result-object v1

    const-string v2, "Exception on creating presenter"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 340
    iget-object v0, p0, Lcom/vungle/warren/AdvertisementPresentationFactory$FullScreenPresentationTask;->fullscreenCallback:Lcom/vungle/warren/PresentationFactory$FullScreenCallback;

    new-instance v1, Landroid/util/Pair;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;->access$100(Lcom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;)Lcom/vungle/warren/error/VungleException;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/vungle/warren/PresentationFactory$FullScreenCallback;->onResult(Landroid/util/Pair;Lcom/vungle/warren/error/VungleException;)V

    return-void

    .line 344
    :cond_0
    iget-object v0, p0, Lcom/vungle/warren/AdvertisementPresentationFactory$FullScreenPresentationTask;->fullAdWidget:Lcom/vungle/warren/ui/view/FullAdWidget;

    invoke-static {p1}, Lcom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;->access$200(Lcom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;)Lcom/vungle/warren/ui/view/VungleWebClient;

    move-result-object v1

    new-instance v2, Lcom/vungle/warren/ui/JavascriptBridge;

    invoke-static {p1}, Lcom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;->access$300(Lcom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;)Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/vungle/warren/ui/JavascriptBridge;-><init>(Lcom/vungle/warren/ui/JavascriptBridge$MraidHandler;)V

    invoke-virtual {v0, v1, v2}, Lcom/vungle/warren/ui/view/FullAdWidget;->linkWebView(Landroid/webkit/WebViewClient;Lcom/vungle/warren/ui/JavascriptBridge;)V

    .line 346
    invoke-static {p1}, Lcom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;->access$400(Lcom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;)Lcom/vungle/warren/analytics/MoatTracker;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 347
    invoke-static {}, Lcom/moat/analytics/mobile/vng/MoatFactory;->create()Lcom/moat/analytics/mobile/vng/MoatFactory;

    move-result-object v0

    new-instance v1, Lcom/moat/analytics/mobile/vng/ReactiveVideoTrackerPlugin;

    const-string v2, "vunglenativevideo893259554489"

    invoke-direct {v1, v2}, Lcom/moat/analytics/mobile/vng/ReactiveVideoTrackerPlugin;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/moat/analytics/mobile/vng/MoatFactory;->createCustomTracker(Lcom/moat/analytics/mobile/vng/MoatPlugin;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/moat/analytics/mobile/vng/ReactiveVideoTracker;

    .line 348
    invoke-static {p1}, Lcom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;->access$400(Lcom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;)Lcom/vungle/warren/analytics/MoatTracker;

    move-result-object v1

    iget-object v2, p0, Lcom/vungle/warren/AdvertisementPresentationFactory$FullScreenPresentationTask;->placementId:Ljava/lang/String;

    iget-object v3, p0, Lcom/vungle/warren/AdvertisementPresentationFactory$FullScreenPresentationTask;->advertisement:Lcom/vungle/warren/model/Advertisement;

    invoke-static {p1}, Lcom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;->access$500(Lcom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/vungle/warren/analytics/MoatTracker;->configure(Ljava/lang/String;Lcom/vungle/warren/model/Advertisement;Ljava/lang/String;Lcom/moat/analytics/mobile/vng/ReactiveVideoTracker;)V

    .line 351
    :cond_1
    iget-object v0, p0, Lcom/vungle/warren/AdvertisementPresentationFactory$FullScreenPresentationTask;->fullscreenCallback:Lcom/vungle/warren/PresentationFactory$FullScreenCallback;

    new-instance v1, Landroid/util/Pair;

    invoke-static {p1}, Lcom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;->access$600(Lcom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;)Lcom/vungle/warren/ui/contract/AdContract$AdView;

    move-result-object v2

    invoke-static {p1}, Lcom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;->access$300(Lcom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;)Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;->access$100(Lcom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;)Lcom/vungle/warren/error/VungleException;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/vungle/warren/PresentationFactory$FullScreenCallback;->onResult(Landroid/util/Pair;Lcom/vungle/warren/error/VungleException;)V

    :cond_2
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 199
    check-cast p1, Lcom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;

    invoke-virtual {p0, p1}, Lcom/vungle/warren/AdvertisementPresentationFactory$FullScreenPresentationTask;->onPostExecute(Lcom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;)V

    return-void
.end method
