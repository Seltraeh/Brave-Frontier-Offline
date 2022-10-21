.class public Lcom/vungle/warren/VungleSettings$Builder;
.super Ljava/lang/Object;
.source "VungleSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/warren/VungleSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private androidIdOptedOut:Z

.field private disableRefresh:Z

.field private maximumStorageForCleverCache:J

.field private minimumSpaceForAd:J

.field private minimumSpaceForInit:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/32 v0, 0x3300000

    .line 23
    iput-wide v0, p0, Lcom/vungle/warren/VungleSettings$Builder;->minimumSpaceForInit:J

    const-wide/32 v0, 0x3200000

    .line 24
    iput-wide v0, p0, Lcom/vungle/warren/VungleSettings$Builder;->minimumSpaceForAd:J

    const-wide/32 v0, 0x6400000

    .line 26
    iput-wide v0, p0, Lcom/vungle/warren/VungleSettings$Builder;->maximumStorageForCleverCache:J

    return-void
.end method

.method static synthetic access$100(Lcom/vungle/warren/VungleSettings$Builder;)J
    .locals 2

    .line 22
    iget-wide v0, p0, Lcom/vungle/warren/VungleSettings$Builder;->minimumSpaceForAd:J

    return-wide v0
.end method

.method static synthetic access$200(Lcom/vungle/warren/VungleSettings$Builder;)J
    .locals 2

    .line 22
    iget-wide v0, p0, Lcom/vungle/warren/VungleSettings$Builder;->minimumSpaceForInit:J

    return-wide v0
.end method

.method static synthetic access$300(Lcom/vungle/warren/VungleSettings$Builder;)Z
    .locals 0

    .line 22
    iget-boolean p0, p0, Lcom/vungle/warren/VungleSettings$Builder;->androidIdOptedOut:Z

    return p0
.end method

.method static synthetic access$400(Lcom/vungle/warren/VungleSettings$Builder;)Z
    .locals 0

    .line 22
    iget-boolean p0, p0, Lcom/vungle/warren/VungleSettings$Builder;->disableRefresh:Z

    return p0
.end method

.method static synthetic access$500(Lcom/vungle/warren/VungleSettings$Builder;)J
    .locals 2

    .line 22
    iget-wide v0, p0, Lcom/vungle/warren/VungleSettings$Builder;->maximumStorageForCleverCache:J

    return-wide v0
.end method


# virtual methods
.method public build()Lcom/vungle/warren/VungleSettings;
    .locals 2

    .line 30
    new-instance v0, Lcom/vungle/warren/VungleSettings;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/vungle/warren/VungleSettings;-><init>(Lcom/vungle/warren/VungleSettings$Builder;Lcom/vungle/warren/VungleSettings$1;)V

    return-object v0
.end method

.method public disableBannerRefresh()Lcom/vungle/warren/VungleSettings$Builder;
    .locals 1

    const/4 v0, 0x1

    .line 70
    iput-boolean v0, p0, Lcom/vungle/warren/VungleSettings$Builder;->disableRefresh:Z

    return-object p0
.end method

.method public setAndroidIdOptOut(Z)Lcom/vungle/warren/VungleSettings$Builder;
    .locals 0

    .line 65
    iput-boolean p1, p0, Lcom/vungle/warren/VungleSettings$Builder;->androidIdOptedOut:Z

    return-object p0
.end method

.method public setMaximumStorageForCleverCache(J)Lcom/vungle/warren/VungleSettings$Builder;
    .locals 0

    .line 82
    iput-wide p1, p0, Lcom/vungle/warren/VungleSettings$Builder;->maximumStorageForCleverCache:J

    return-object p0
.end method

.method public setMinimumSpaceForAd(J)Lcom/vungle/warren/VungleSettings$Builder;
    .locals 0

    .line 53
    iput-wide p1, p0, Lcom/vungle/warren/VungleSettings$Builder;->minimumSpaceForAd:J

    return-object p0
.end method

.method public setMinimumSpaceForInit(J)Lcom/vungle/warren/VungleSettings$Builder;
    .locals 0

    .line 41
    iput-wide p1, p0, Lcom/vungle/warren/VungleSettings$Builder;->minimumSpaceForInit:J

    return-object p0
.end method
