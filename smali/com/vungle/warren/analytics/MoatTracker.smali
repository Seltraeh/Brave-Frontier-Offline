.class public Lcom/vungle/warren/analytics/MoatTracker;
.super Ljava/lang/Object;
.source "MoatTracker.java"

# interfaces
.implements Lcom/vungle/warren/analytics/AnalyticsVideoTracker;


# static fields
.field private static final TAG:Ljava/lang/String; = "MoatTracker"

.field private static final UNKNOWN:Ljava/lang/String; = "unknown"

.field public static final VUNGLE_ID:Ljava/lang/String; = "vunglenativevideo893259554489"


# instance fields
.field private adIds:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private configured:Z

.field private isMoatEnabled:Z

.field private moatQuartileTrackers:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Lcom/moat/analytics/mobile/vng/MoatAdEventType;",
            ">;>;"
        }
    .end annotation
.end field

.field private tracker:Lcom/moat/analytics/mobile/vng/ReactiveVideoTracker;

.field private videoView:Landroid/widget/VideoView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/widget/VideoView;Z)V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/vungle/warren/analytics/MoatTracker;->adIds:Ljava/util/Map;

    .line 40
    iput-boolean p2, p0, Lcom/vungle/warren/analytics/MoatTracker;->isMoatEnabled:Z

    .line 41
    iput-object p1, p0, Lcom/vungle/warren/analytics/MoatTracker;->videoView:Landroid/widget/VideoView;

    return-void
.end method

.method public static connect(Landroid/widget/VideoView;Z)Lcom/vungle/warren/analytics/MoatTracker;
    .locals 1

    .line 82
    new-instance v0, Lcom/vungle/warren/analytics/MoatTracker;

    invoke-direct {v0, p0, p1}, Lcom/vungle/warren/analytics/MoatTracker;-><init>(Landroid/widget/VideoView;Z)V

    return-object v0
.end method


# virtual methods
.method public configure(Ljava/lang/String;Lcom/vungle/warren/model/Advertisement;Ljava/lang/String;Lcom/moat/analytics/mobile/vng/ReactiveVideoTracker;)V
    .locals 5

    .line 45
    iput-object p4, p0, Lcom/vungle/warren/analytics/MoatTracker;->tracker:Lcom/moat/analytics/mobile/vng/ReactiveVideoTracker;

    .line 46
    iget-boolean p4, p0, Lcom/vungle/warren/analytics/MoatTracker;->isMoatEnabled:Z

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p4, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/vungle/warren/model/Advertisement;->getMoatEnabled()Z

    move-result p4

    if-eqz p4, :cond_0

    const/4 p4, 0x1

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    :goto_0
    iput-boolean p4, p0, Lcom/vungle/warren/analytics/MoatTracker;->isMoatEnabled:Z

    if-eqz p4, :cond_4

    .line 55
    new-instance p4, Ljava/util/LinkedList;

    invoke-direct {p4}, Ljava/util/LinkedList;-><init>()V

    iput-object p4, p0, Lcom/vungle/warren/analytics/MoatTracker;->moatQuartileTrackers:Ljava/util/Queue;

    .line 57
    new-instance v2, Landroid/util/Pair;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget-object v4, Lcom/moat/analytics/mobile/vng/MoatAdEventType;->AD_EVT_START:Lcom/moat/analytics/mobile/vng/MoatAdEventType;

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p4, v2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 58
    iget-object p4, p0, Lcom/vungle/warren/analytics/MoatTracker;->moatQuartileTrackers:Ljava/util/Queue;

    new-instance v2, Landroid/util/Pair;

    const/16 v3, 0x19

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget-object v4, Lcom/moat/analytics/mobile/vng/MoatAdEventType;->AD_EVT_FIRST_QUARTILE:Lcom/moat/analytics/mobile/vng/MoatAdEventType;

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p4, v2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 59
    iget-object p4, p0, Lcom/vungle/warren/analytics/MoatTracker;->moatQuartileTrackers:Ljava/util/Queue;

    new-instance v2, Landroid/util/Pair;

    const/16 v3, 0x32

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget-object v4, Lcom/moat/analytics/mobile/vng/MoatAdEventType;->AD_EVT_MID_POINT:Lcom/moat/analytics/mobile/vng/MoatAdEventType;

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p4, v2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 60
    iget-object p4, p0, Lcom/vungle/warren/analytics/MoatTracker;->moatQuartileTrackers:Ljava/util/Queue;

    new-instance v2, Landroid/util/Pair;

    const/16 v3, 0x4b

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget-object v4, Lcom/moat/analytics/mobile/vng/MoatAdEventType;->AD_EVT_THIRD_QUARTILE:Lcom/moat/analytics/mobile/vng/MoatAdEventType;

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p4, v2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 62
    invoke-virtual {p2}, Lcom/vungle/warren/model/Advertisement;->getMoatVastExtra()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/String;->isEmpty()Z

    move-result p4

    if-nez p4, :cond_1

    .line 63
    iget-object p4, p0, Lcom/vungle/warren/analytics/MoatTracker;->adIds:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/vungle/warren/model/Advertisement;->getMoatVastExtra()Ljava/lang/String;

    move-result-object v2

    const-string v3, "zMoatVASTIDs"

    invoke-interface {p4, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    :cond_1
    iget-object p4, p0, Lcom/vungle/warren/analytics/MoatTracker;->adIds:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/vungle/warren/model/Advertisement;->getAdvertiserAppId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "level1"

    invoke-interface {p4, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    iget-object p4, p0, Lcom/vungle/warren/analytics/MoatTracker;->adIds:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/vungle/warren/model/Advertisement;->getCampaignId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "level2"

    invoke-interface {p4, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    iget-object p4, p0, Lcom/vungle/warren/analytics/MoatTracker;->adIds:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/vungle/warren/model/Advertisement;->getCreativeId()Ljava/lang/String;

    move-result-object p2

    const-string v2, "level3"

    invoke-interface {p4, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    iget-object p2, p0, Lcom/vungle/warren/analytics/MoatTracker;->adIds:Ljava/util/Map;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-eqz p4, :cond_2

    const-string p1, "unknown"

    :cond_2
    const-string p4, "level4"

    invoke-interface {p2, p4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 72
    iget-object p1, p0, Lcom/vungle/warren/analytics/MoatTracker;->adIds:Ljava/util/Map;

    const-string p2, "slicer1"

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    :cond_3
    iput-boolean v0, p0, Lcom/vungle/warren/analytics/MoatTracker;->configured:Z

    .line 78
    :cond_4
    iget-boolean p1, p0, Lcom/vungle/warren/analytics/MoatTracker;->configured:Z

    if-eqz p1, :cond_5

    iget-boolean p1, p0, Lcom/vungle/warren/analytics/MoatTracker;->isMoatEnabled:Z

    if-eqz p1, :cond_5

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Lcom/vungle/warren/analytics/MoatTracker;->configured:Z

    return-void
.end method

.method getAdIds()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 137
    iget-object v0, p0, Lcom/vungle/warren/analytics/MoatTracker;->adIds:Ljava/util/Map;

    return-object v0
.end method

.method public onProgress(I)V
    .locals 3

    .line 87
    iget-boolean v0, p0, Lcom/vungle/warren/analytics/MoatTracker;->configured:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x64

    if-lt p1, v0, :cond_0

    .line 90
    iget-object p1, p0, Lcom/vungle/warren/analytics/MoatTracker;->tracker:Lcom/moat/analytics/mobile/vng/ReactiveVideoTracker;

    new-instance v0, Lcom/moat/analytics/mobile/vng/MoatAdEvent;

    sget-object v1, Lcom/moat/analytics/mobile/vng/MoatAdEventType;->AD_EVT_COMPLETE:Lcom/moat/analytics/mobile/vng/MoatAdEventType;

    iget-object v2, p0, Lcom/vungle/warren/analytics/MoatTracker;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v2}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/moat/analytics/mobile/vng/MoatAdEvent;-><init>(Lcom/moat/analytics/mobile/vng/MoatAdEventType;Ljava/lang/Integer;)V

    invoke-interface {p1, v0}, Lcom/moat/analytics/mobile/vng/ReactiveVideoTracker;->dispatchEvent(Lcom/moat/analytics/mobile/vng/MoatAdEvent;)V

    .line 91
    iget-object p1, p0, Lcom/vungle/warren/analytics/MoatTracker;->tracker:Lcom/moat/analytics/mobile/vng/ReactiveVideoTracker;

    invoke-interface {p1}, Lcom/moat/analytics/mobile/vng/ReactiveVideoTracker;->stopTracking()V

    goto :goto_0

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/vungle/warren/analytics/MoatTracker;->moatQuartileTrackers:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/vungle/warren/analytics/MoatTracker;->moatQuartileTrackers:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 95
    new-instance v0, Lcom/moat/analytics/mobile/vng/MoatAdEvent;

    iget-object v1, p0, Lcom/vungle/warren/analytics/MoatTracker;->moatQuartileTrackers:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Lcom/moat/analytics/mobile/vng/MoatAdEventType;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/moat/analytics/mobile/vng/MoatAdEvent;-><init>(Lcom/moat/analytics/mobile/vng/MoatAdEventType;Ljava/lang/Integer;)V

    .line 96
    iget-object p1, p0, Lcom/vungle/warren/analytics/MoatTracker;->tracker:Lcom/moat/analytics/mobile/vng/ReactiveVideoTracker;

    invoke-interface {p1, v0}, Lcom/moat/analytics/mobile/vng/ReactiveVideoTracker;->dispatchEvent(Lcom/moat/analytics/mobile/vng/MoatAdEvent;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setPlayerVolume(Z)V
    .locals 3

    .line 125
    iget-boolean v0, p0, Lcom/vungle/warren/analytics/MoatTracker;->configured:Z

    if-eqz v0, :cond_1

    .line 126
    sget-object v0, Lcom/vungle/warren/analytics/MoatTracker;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPlayerVolume muted: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    .line 128
    iget-object p1, p0, Lcom/vungle/warren/analytics/MoatTracker;->tracker:Lcom/moat/analytics/mobile/vng/ReactiveVideoTracker;

    sget-object v0, Lcom/moat/analytics/mobile/vng/MoatAdEvent;->VOLUME_MUTED:Ljava/lang/Double;

    invoke-interface {p1, v0}, Lcom/moat/analytics/mobile/vng/ReactiveVideoTracker;->setPlayerVolume(Ljava/lang/Double;)V

    goto :goto_0

    .line 130
    :cond_0
    iget-object p1, p0, Lcom/vungle/warren/analytics/MoatTracker;->tracker:Lcom/moat/analytics/mobile/vng/ReactiveVideoTracker;

    sget-object v0, Lcom/moat/analytics/mobile/vng/MoatAdEvent;->VOLUME_UNMUTED:Ljava/lang/Double;

    invoke-interface {p1, v0}, Lcom/moat/analytics/mobile/vng/ReactiveVideoTracker;->setPlayerVolume(Ljava/lang/Double;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public start(I)V
    .locals 3

    .line 104
    iget-boolean v0, p0, Lcom/vungle/warren/analytics/MoatTracker;->configured:Z

    if-eqz v0, :cond_0

    .line 105
    sget-object v0, Lcom/vungle/warren/analytics/MoatTracker;->TAG:Ljava/lang/String;

    const-string v1, "start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    iget-object v0, p0, Lcom/vungle/warren/analytics/MoatTracker;->tracker:Lcom/moat/analytics/mobile/vng/ReactiveVideoTracker;

    iget-object v1, p0, Lcom/vungle/warren/analytics/MoatTracker;->adIds:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object v2, p0, Lcom/vungle/warren/analytics/MoatTracker;->videoView:Landroid/widget/VideoView;

    invoke-interface {v0, v1, p1, v2}, Lcom/moat/analytics/mobile/vng/ReactiveVideoTracker;->trackVideoAd(Ljava/util/Map;Ljava/lang/Integer;Landroid/view/View;)Z

    :cond_0
    return-void
.end method

.method public stop()V
    .locals 4

    .line 112
    iget-boolean v0, p0, Lcom/vungle/warren/analytics/MoatTracker;->configured:Z

    if-eqz v0, :cond_1

    .line 115
    iget-object v0, p0, Lcom/vungle/warren/analytics/MoatTracker;->videoView:Landroid/widget/VideoView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 116
    :goto_0
    sget-object v1, Lcom/vungle/warren/analytics/MoatTracker;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stopViewabilityTracker: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    iget-object v1, p0, Lcom/vungle/warren/analytics/MoatTracker;->tracker:Lcom/moat/analytics/mobile/vng/ReactiveVideoTracker;

    new-instance v2, Lcom/moat/analytics/mobile/vng/MoatAdEvent;

    sget-object v3, Lcom/moat/analytics/mobile/vng/MoatAdEventType;->AD_EVT_STOPPED:Lcom/moat/analytics/mobile/vng/MoatAdEventType;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lcom/moat/analytics/mobile/vng/MoatAdEvent;-><init>(Lcom/moat/analytics/mobile/vng/MoatAdEventType;Ljava/lang/Integer;)V

    invoke-interface {v1, v2}, Lcom/moat/analytics/mobile/vng/ReactiveVideoTracker;->dispatchEvent(Lcom/moat/analytics/mobile/vng/MoatAdEvent;)V

    .line 118
    iget-object v0, p0, Lcom/vungle/warren/analytics/MoatTracker;->tracker:Lcom/moat/analytics/mobile/vng/ReactiveVideoTracker;

    invoke-interface {v0}, Lcom/moat/analytics/mobile/vng/ReactiveVideoTracker;->stopTracking()V

    .line 119
    sget-object v0, Lcom/vungle/warren/analytics/MoatTracker;->TAG:Ljava/lang/String;

    const-string v1, "stopViewabilityTracker: Success !!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method
