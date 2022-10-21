.class public Lcom/vungle/warren/AdEventListener;
.super Ljava/lang/Object;
.source "AdEventListener.java"

# interfaces
.implements Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "com.vungle.warren.AdEventListener"


# instance fields
.field private final adLoader:Lcom/vungle/warren/AdLoader;

.field private adRewarded:Z

.field private advertisement:Lcom/vungle/warren/model/Advertisement;

.field private final jobRunner:Lcom/vungle/warren/tasks/JobRunner;

.field private percentViewed:I

.field private placement:Lcom/vungle/warren/model/Placement;

.field private final placementId:Ljava/lang/String;

.field private final playAdCallback:Lcom/vungle/warren/PlayAdCallback;

.field private final playOperations:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final repository:Lcom/vungle/warren/persistence/Repository;

.field private successfulView:Z

.field private final visionController:Lcom/vungle/warren/VisionController;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/util/Map;Lcom/vungle/warren/PlayAdCallback;Lcom/vungle/warren/persistence/Repository;Lcom/vungle/warren/AdLoader;Lcom/vungle/warren/tasks/JobRunner;Lcom/vungle/warren/VisionController;Lcom/vungle/warren/model/Placement;Lcom/vungle/warren/model/Advertisement;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/vungle/warren/PlayAdCallback;",
            "Lcom/vungle/warren/persistence/Repository;",
            "Lcom/vungle/warren/AdLoader;",
            "Lcom/vungle/warren/tasks/JobRunner;",
            "Lcom/vungle/warren/VisionController;",
            "Lcom/vungle/warren/model/Placement;",
            "Lcom/vungle/warren/model/Advertisement;",
            ")V"
        }
    .end annotation

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 45
    iput v0, p0, Lcom/vungle/warren/AdEventListener;->percentViewed:I

    .line 60
    iput-object p1, p0, Lcom/vungle/warren/AdEventListener;->placementId:Ljava/lang/String;

    .line 61
    iput-object p2, p0, Lcom/vungle/warren/AdEventListener;->playOperations:Ljava/util/Map;

    .line 62
    iput-object p3, p0, Lcom/vungle/warren/AdEventListener;->playAdCallback:Lcom/vungle/warren/PlayAdCallback;

    .line 63
    iput-object p4, p0, Lcom/vungle/warren/AdEventListener;->repository:Lcom/vungle/warren/persistence/Repository;

    .line 64
    iput-object p5, p0, Lcom/vungle/warren/AdEventListener;->adLoader:Lcom/vungle/warren/AdLoader;

    .line 65
    iput-object p6, p0, Lcom/vungle/warren/AdEventListener;->jobRunner:Lcom/vungle/warren/tasks/JobRunner;

    .line 66
    iput-object p7, p0, Lcom/vungle/warren/AdEventListener;->visionController:Lcom/vungle/warren/VisionController;

    .line 67
    iput-object p8, p0, Lcom/vungle/warren/AdEventListener;->placement:Lcom/vungle/warren/model/Placement;

    .line 68
    iput-object p9, p0, Lcom/vungle/warren/AdEventListener;->advertisement:Lcom/vungle/warren/model/Advertisement;

    .line 69
    sget-object p3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p2, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public onError(Lcom/vungle/warren/error/VungleException;Ljava/lang/String;)V
    .locals 3

    .line 170
    iget-object v0, p0, Lcom/vungle/warren/AdEventListener;->advertisement:Lcom/vungle/warren/model/Advertisement;

    if-nez v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/vungle/warren/AdEventListener;->repository:Lcom/vungle/warren/persistence/Repository;

    invoke-virtual {v0, p2}, Lcom/vungle/warren/persistence/Repository;->findValidAdvertisementForPlacement(Ljava/lang/String;)Lcom/vungle/warren/persistence/FutureResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vungle/warren/persistence/FutureResult;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/warren/model/Advertisement;

    iput-object v0, p0, Lcom/vungle/warren/AdEventListener;->advertisement:Lcom/vungle/warren/model/Advertisement;

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/vungle/warren/AdEventListener;->advertisement:Lcom/vungle/warren/model/Advertisement;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/vungle/warren/error/VungleException;->getExceptionCode()I

    move-result v0

    const/16 v1, 0x1b

    if-ne v0, v1, :cond_1

    .line 175
    iget-object p1, p0, Lcom/vungle/warren/AdEventListener;->adLoader:Lcom/vungle/warren/AdLoader;

    iget-object p2, p0, Lcom/vungle/warren/AdEventListener;->advertisement:Lcom/vungle/warren/model/Advertisement;

    invoke-virtual {p2}, Lcom/vungle/warren/model/Advertisement;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/vungle/warren/AdLoader;->dropCache(Ljava/lang/String;)V

    return-void

    .line 179
    :cond_1
    iget-object v0, p0, Lcom/vungle/warren/AdEventListener;->advertisement:Lcom/vungle/warren/model/Advertisement;

    if-eqz v0, :cond_2

    .line 180
    invoke-virtual {p1}, Lcom/vungle/warren/error/VungleException;->getExceptionCode()I

    move-result v0

    const/16 v1, 0xf

    if-eq v0, v1, :cond_2

    .line 181
    invoke-virtual {p1}, Lcom/vungle/warren/error/VungleException;->getExceptionCode()I

    move-result v0

    const/16 v1, 0x19

    if-eq v0, v1, :cond_2

    .line 183
    :try_start_0
    iget-object v0, p0, Lcom/vungle/warren/AdEventListener;->repository:Lcom/vungle/warren/persistence/Repository;

    iget-object v1, p0, Lcom/vungle/warren/AdEventListener;->advertisement:Lcom/vungle/warren/model/Advertisement;

    const/4 v2, 0x4

    invoke-virtual {v0, v1, p2, v2}, Lcom/vungle/warren/persistence/Repository;->saveAndApplyState(Lcom/vungle/warren/model/Advertisement;Ljava/lang/String;I)V
    :try_end_0
    .catch Lcom/vungle/warren/persistence/DatabaseHelper$DBException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 185
    :catch_0
    new-instance p1, Lcom/vungle/warren/error/VungleException;

    const/16 v0, 0x1a

    invoke-direct {p1, v0}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    .line 189
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/vungle/warren/AdEventListener;->onFinished()V

    .line 191
    iget-object v0, p0, Lcom/vungle/warren/AdEventListener;->playAdCallback:Lcom/vungle/warren/PlayAdCallback;

    if-eqz v0, :cond_3

    .line 192
    invoke-interface {v0, p2, p1}, Lcom/vungle/warren/PlayAdCallback;->onError(Ljava/lang/String;Lcom/vungle/warren/error/VungleException;)V

    :cond_3
    return-void
.end method

.method protected onFinished()V
    .locals 3

    .line 197
    iget-object v0, p0, Lcom/vungle/warren/AdEventListener;->playOperations:Ljava/util/Map;

    iget-object v1, p0, Lcom/vungle/warren/AdEventListener;->placementId:Ljava/lang/String;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onNext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 73
    const-class v0, Lcom/vungle/warren/model/Placement;

    iget-object v1, p0, Lcom/vungle/warren/AdEventListener;->advertisement:Lcom/vungle/warren/model/Advertisement;

    if-nez v1, :cond_1

    .line 74
    iget-object v1, p0, Lcom/vungle/warren/AdEventListener;->repository:Lcom/vungle/warren/persistence/Repository;

    iget-object v2, p0, Lcom/vungle/warren/AdEventListener;->placementId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/vungle/warren/persistence/Repository;->findValidAdvertisementForPlacement(Ljava/lang/String;)Lcom/vungle/warren/persistence/FutureResult;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vungle/warren/persistence/FutureResult;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vungle/warren/model/Advertisement;

    iput-object v1, p0, Lcom/vungle/warren/AdEventListener;->advertisement:Lcom/vungle/warren/model/Advertisement;

    if-nez v1, :cond_1

    .line 76
    sget-object p1, Lcom/vungle/warren/AdEventListener;->TAG:Ljava/lang/String;

    const-string p2, "No Advertisement for ID"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    invoke-virtual {p0}, Lcom/vungle/warren/AdEventListener;->onFinished()V

    .line 78
    iget-object p1, p0, Lcom/vungle/warren/AdEventListener;->playAdCallback:Lcom/vungle/warren/PlayAdCallback;

    if-eqz p1, :cond_0

    .line 79
    iget-object p2, p0, Lcom/vungle/warren/AdEventListener;->placementId:Ljava/lang/String;

    new-instance p3, Lcom/vungle/warren/error/VungleException;

    const/16 v0, 0xa

    invoke-direct {p3, v0}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    invoke-interface {p1, p2, p3}, Lcom/vungle/warren/PlayAdCallback;->onError(Ljava/lang/String;Lcom/vungle/warren/error/VungleException;)V

    :cond_0
    return-void

    .line 84
    :cond_1
    iget-object v1, p0, Lcom/vungle/warren/AdEventListener;->placement:Lcom/vungle/warren/model/Placement;

    if-nez v1, :cond_3

    .line 85
    iget-object v1, p0, Lcom/vungle/warren/AdEventListener;->repository:Lcom/vungle/warren/persistence/Repository;

    iget-object v2, p0, Lcom/vungle/warren/AdEventListener;->placementId:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/vungle/warren/persistence/Repository;->load(Ljava/lang/String;Ljava/lang/Class;)Lcom/vungle/warren/persistence/FutureResult;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vungle/warren/persistence/FutureResult;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vungle/warren/model/Placement;

    iput-object v1, p0, Lcom/vungle/warren/AdEventListener;->placement:Lcom/vungle/warren/model/Placement;

    if-nez v1, :cond_3

    .line 87
    sget-object p1, Lcom/vungle/warren/AdEventListener;->TAG:Ljava/lang/String;

    const-string p2, "No Placement for ID"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    invoke-virtual {p0}, Lcom/vungle/warren/AdEventListener;->onFinished()V

    .line 89
    iget-object p1, p0, Lcom/vungle/warren/AdEventListener;->playAdCallback:Lcom/vungle/warren/PlayAdCallback;

    if-eqz p1, :cond_2

    .line 90
    iget-object p2, p0, Lcom/vungle/warren/AdEventListener;->placementId:Ljava/lang/String;

    new-instance p3, Lcom/vungle/warren/error/VungleException;

    const/16 v0, 0xd

    invoke-direct {p3, v0}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    invoke-interface {p1, p2, p3}, Lcom/vungle/warren/PlayAdCallback;->onError(Ljava/lang/String;Lcom/vungle/warren/error/VungleException;)V

    :cond_2
    return-void

    :cond_3
    :try_start_0
    const-string v1, "start"

    .line 97
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eqz v1, :cond_6

    .line 98
    iget-object p1, p0, Lcom/vungle/warren/AdEventListener;->repository:Lcom/vungle/warren/persistence/Repository;

    iget-object p2, p0, Lcom/vungle/warren/AdEventListener;->advertisement:Lcom/vungle/warren/model/Advertisement;

    invoke-virtual {p1, p2, p3, v2}, Lcom/vungle/warren/persistence/Repository;->saveAndApplyState(Lcom/vungle/warren/model/Advertisement;Ljava/lang/String;I)V

    .line 100
    iget-object p1, p0, Lcom/vungle/warren/AdEventListener;->playAdCallback:Lcom/vungle/warren/PlayAdCallback;

    if-eqz p1, :cond_4

    .line 101
    iget-object p1, p0, Lcom/vungle/warren/AdEventListener;->playAdCallback:Lcom/vungle/warren/PlayAdCallback;

    invoke-interface {p1, p3}, Lcom/vungle/warren/PlayAdCallback;->onAdStart(Ljava/lang/String;)V

    .line 104
    :cond_4
    iput v3, p0, Lcom/vungle/warren/AdEventListener;->percentViewed:I

    .line 105
    iget-object p1, p0, Lcom/vungle/warren/AdEventListener;->repository:Lcom/vungle/warren/persistence/Repository;

    iget-object p2, p0, Lcom/vungle/warren/AdEventListener;->placementId:Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Lcom/vungle/warren/persistence/Repository;->load(Ljava/lang/String;Ljava/lang/Class;)Lcom/vungle/warren/persistence/FutureResult;

    move-result-object p1

    invoke-virtual {p1}, Lcom/vungle/warren/persistence/FutureResult;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/vungle/warren/model/Placement;

    iput-object p1, p0, Lcom/vungle/warren/AdEventListener;->placement:Lcom/vungle/warren/model/Placement;

    if-eqz p1, :cond_5

    .line 106
    invoke-virtual {p1}, Lcom/vungle/warren/model/Placement;->isAutoCached()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 108
    iget-object p1, p0, Lcom/vungle/warren/AdEventListener;->adLoader:Lcom/vungle/warren/AdLoader;

    iget-object p2, p0, Lcom/vungle/warren/AdEventListener;->placement:Lcom/vungle/warren/model/Placement;

    const-wide/16 v0, 0x0

    invoke-virtual {p1, p2, v0, v1}, Lcom/vungle/warren/AdLoader;->loadEndless(Lcom/vungle/warren/model/Placement;J)V

    .line 110
    :cond_5
    iget-object p1, p0, Lcom/vungle/warren/AdEventListener;->visionController:Lcom/vungle/warren/VisionController;

    invoke-virtual {p1}, Lcom/vungle/warren/VisionController;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_f

    .line 111
    iget-object p1, p0, Lcom/vungle/warren/AdEventListener;->visionController:Lcom/vungle/warren/VisionController;

    iget-object p2, p0, Lcom/vungle/warren/AdEventListener;->advertisement:Lcom/vungle/warren/model/Advertisement;

    .line 112
    invoke-virtual {p2}, Lcom/vungle/warren/model/Advertisement;->getCreativeId()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/vungle/warren/AdEventListener;->advertisement:Lcom/vungle/warren/model/Advertisement;

    .line 113
    invoke-virtual {v0}, Lcom/vungle/warren/model/Advertisement;->getCampaignId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/vungle/warren/AdEventListener;->advertisement:Lcom/vungle/warren/model/Advertisement;

    .line 114
    invoke-virtual {v1}, Lcom/vungle/warren/model/Advertisement;->getAdvertiserAppId()Ljava/lang/String;

    move-result-object v1

    .line 111
    invoke-virtual {p1, p2, v0, v1}, Lcom/vungle/warren/VisionController;->reportData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_6
    const-string v0, "end"

    .line 116
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0x50

    const/4 v4, 0x1

    if-eqz v0, :cond_a

    const-string p1, "Vungle"

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cleaning up metadata and assets for placement "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " and advertisement "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/vungle/warren/AdEventListener;->advertisement:Lcom/vungle/warren/model/Advertisement;

    invoke-virtual {v2}, Lcom/vungle/warren/model/Advertisement;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    iget-object p1, p0, Lcom/vungle/warren/AdEventListener;->repository:Lcom/vungle/warren/persistence/Repository;

    iget-object v0, p0, Lcom/vungle/warren/AdEventListener;->advertisement:Lcom/vungle/warren/model/Advertisement;

    const/4 v2, 0x3

    invoke-virtual {p1, v0, p3, v2}, Lcom/vungle/warren/persistence/Repository;->saveAndApplyState(Lcom/vungle/warren/model/Advertisement;Ljava/lang/String;I)V

    .line 120
    iget-object p1, p0, Lcom/vungle/warren/AdEventListener;->repository:Lcom/vungle/warren/persistence/Repository;

    iget-object v0, p0, Lcom/vungle/warren/AdEventListener;->advertisement:Lcom/vungle/warren/model/Advertisement;

    invoke-virtual {v0}, Lcom/vungle/warren/model/Advertisement;->getAppID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p3, v0, v3, v4}, Lcom/vungle/warren/persistence/Repository;->updateAndSaveReportState(Ljava/lang/String;Ljava/lang/String;II)V

    .line 123
    iget-object p1, p0, Lcom/vungle/warren/AdEventListener;->jobRunner:Lcom/vungle/warren/tasks/JobRunner;

    invoke-static {v3}, Lcom/vungle/warren/tasks/SendReportsJob;->makeJobInfo(Z)Lcom/vungle/warren/tasks/JobInfo;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/vungle/warren/tasks/JobRunner;->execute(Lcom/vungle/warren/tasks/JobInfo;)V

    .line 125
    invoke-virtual {p0}, Lcom/vungle/warren/AdEventListener;->onFinished()V

    .line 128
    iget-object p1, p0, Lcom/vungle/warren/AdEventListener;->playAdCallback:Lcom/vungle/warren/PlayAdCallback;

    if-eqz p1, :cond_f

    .line 129
    iget-object p1, p0, Lcom/vungle/warren/AdEventListener;->playAdCallback:Lcom/vungle/warren/PlayAdCallback;

    iget-boolean v0, p0, Lcom/vungle/warren/AdEventListener;->successfulView:Z

    if-nez v0, :cond_8

    iget v0, p0, Lcom/vungle/warren/AdEventListener;->percentViewed:I

    if-lt v0, v1, :cond_7

    goto :goto_0

    :cond_7
    const/4 v0, 0x0

    goto :goto_1

    :cond_8
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz p2, :cond_9

    const-string v1, "isCTAClicked"

    .line 131
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_9

    const/4 v3, 0x1

    .line 129
    :cond_9
    invoke-interface {p1, p3, v0, v3}, Lcom/vungle/warren/PlayAdCallback;->onAdEnd(Ljava/lang/String;ZZ)V

    .line 132
    iget-object p1, p0, Lcom/vungle/warren/AdEventListener;->playAdCallback:Lcom/vungle/warren/PlayAdCallback;

    invoke-interface {p1, p3}, Lcom/vungle/warren/PlayAdCallback;->onAdEnd(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 135
    :cond_a
    iget-object v0, p0, Lcom/vungle/warren/AdEventListener;->placement:Lcom/vungle/warren/model/Placement;

    invoke-virtual {v0}, Lcom/vungle/warren/model/Placement;->isIncentivized()Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "successfulView"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 136
    iput-boolean v4, p0, Lcom/vungle/warren/AdEventListener;->successfulView:Z

    .line 137
    iget-boolean p1, p0, Lcom/vungle/warren/AdEventListener;->adRewarded:Z

    if-nez p1, :cond_f

    .line 138
    iput-boolean v4, p0, Lcom/vungle/warren/AdEventListener;->adRewarded:Z

    .line 139
    iget-object p1, p0, Lcom/vungle/warren/AdEventListener;->playAdCallback:Lcom/vungle/warren/PlayAdCallback;

    if-eqz p1, :cond_f

    .line 140
    iget-object p1, p0, Lcom/vungle/warren/AdEventListener;->playAdCallback:Lcom/vungle/warren/PlayAdCallback;

    invoke-interface {p1, p3}, Lcom/vungle/warren/PlayAdCallback;->onAdRewarded(Ljava/lang/String;)V

    goto :goto_2

    .line 143
    :cond_b
    iget-object v0, p0, Lcom/vungle/warren/AdEventListener;->placement:Lcom/vungle/warren/model/Placement;

    invoke-virtual {v0}, Lcom/vungle/warren/model/Placement;->isIncentivized()Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "percentViewed"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    const-string p2, ":"

    .line 145
    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 146
    array-length p2, p1

    if-ne p2, v2, :cond_c

    .line 147
    aget-object p1, p1, v4

    .line 148
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/vungle/warren/AdEventListener;->percentViewed:I

    .line 150
    :cond_c
    iget-boolean p1, p0, Lcom/vungle/warren/AdEventListener;->adRewarded:Z

    if-nez p1, :cond_f

    iget p1, p0, Lcom/vungle/warren/AdEventListener;->percentViewed:I

    if-lt p1, v1, :cond_f

    .line 151
    iput-boolean v4, p0, Lcom/vungle/warren/AdEventListener;->adRewarded:Z

    .line 152
    iget-object p1, p0, Lcom/vungle/warren/AdEventListener;->playAdCallback:Lcom/vungle/warren/PlayAdCallback;

    if-eqz p1, :cond_f

    .line 153
    iget-object p1, p0, Lcom/vungle/warren/AdEventListener;->playAdCallback:Lcom/vungle/warren/PlayAdCallback;

    invoke-interface {p1, p3}, Lcom/vungle/warren/PlayAdCallback;->onAdRewarded(Ljava/lang/String;)V

    goto :goto_2

    :cond_d
    const-string v0, "open"

    .line 156
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f

    iget-object p1, p0, Lcom/vungle/warren/AdEventListener;->playAdCallback:Lcom/vungle/warren/PlayAdCallback;

    if-eqz p1, :cond_f

    const-string p1, "adClick"

    .line 157
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 158
    iget-object p1, p0, Lcom/vungle/warren/AdEventListener;->playAdCallback:Lcom/vungle/warren/PlayAdCallback;

    invoke-interface {p1, p3}, Lcom/vungle/warren/PlayAdCallback;->onAdClick(Ljava/lang/String;)V

    goto :goto_2

    :cond_e
    const-string p1, "adLeftApplication"

    .line 159
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 160
    iget-object p1, p0, Lcom/vungle/warren/AdEventListener;->playAdCallback:Lcom/vungle/warren/PlayAdCallback;

    invoke-interface {p1, p3}, Lcom/vungle/warren/PlayAdCallback;->onAdLeftApplication(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/vungle/warren/persistence/DatabaseHelper$DBException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 164
    :catch_0
    new-instance p1, Lcom/vungle/warren/error/VungleException;

    const/16 p2, 0x1a

    invoke-direct {p1, p2}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    invoke-virtual {p0, p1, p3}, Lcom/vungle/warren/AdEventListener;->onError(Lcom/vungle/warren/error/VungleException;Ljava/lang/String;)V

    :cond_f
    :goto_2
    return-void
.end method
