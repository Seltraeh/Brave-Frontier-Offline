.class public final enum Lcom/ironsource/mediationsdk/AuctionHistory$ISAuctionPerformance;
.super Ljava/lang/Enum;
.source "AuctionHistory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/mediationsdk/AuctionHistory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ISAuctionPerformance"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ironsource/mediationsdk/AuctionHistory$ISAuctionPerformance;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ironsource/mediationsdk/AuctionHistory$ISAuctionPerformance;

.field public static final enum ISAuctionPerformanceDidntAttemptToLoad:Lcom/ironsource/mediationsdk/AuctionHistory$ISAuctionPerformance;

.field public static final enum ISAuctionPerformanceFailedToLoad:Lcom/ironsource/mediationsdk/AuctionHistory$ISAuctionPerformance;

.field public static final enum ISAuctionPerformanceFailedToShow:Lcom/ironsource/mediationsdk/AuctionHistory$ISAuctionPerformance;

.field public static final enum ISAuctionPerformanceLoadedSuccessfully:Lcom/ironsource/mediationsdk/AuctionHistory$ISAuctionPerformance;

.field public static final enum ISAuctionPerformanceNotPartOfWaterfall:Lcom/ironsource/mediationsdk/AuctionHistory$ISAuctionPerformance;

.field public static final enum ISAuctionPerformanceShowedSuccessfully:Lcom/ironsource/mediationsdk/AuctionHistory$ISAuctionPerformance;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 19
    new-instance v0, Lcom/ironsource/mediationsdk/AuctionHistory$ISAuctionPerformance;

    const-string v1, "ISAuctionPerformanceDidntAttemptToLoad"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ironsource/mediationsdk/AuctionHistory$ISAuctionPerformance;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ironsource/mediationsdk/AuctionHistory$ISAuctionPerformance;->ISAuctionPerformanceDidntAttemptToLoad:Lcom/ironsource/mediationsdk/AuctionHistory$ISAuctionPerformance;

    .line 20
    new-instance v0, Lcom/ironsource/mediationsdk/AuctionHistory$ISAuctionPerformance;

    const-string v1, "ISAuctionPerformanceFailedToLoad"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/ironsource/mediationsdk/AuctionHistory$ISAuctionPerformance;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ironsource/mediationsdk/AuctionHistory$ISAuctionPerformance;->ISAuctionPerformanceFailedToLoad:Lcom/ironsource/mediationsdk/AuctionHistory$ISAuctionPerformance;

    .line 21
    new-instance v0, Lcom/ironsource/mediationsdk/AuctionHistory$ISAuctionPerformance;

    const-string v1, "ISAuctionPerformanceLoadedSuccessfully"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/ironsource/mediationsdk/AuctionHistory$ISAuctionPerformance;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ironsource/mediationsdk/AuctionHistory$ISAuctionPerformance;->ISAuctionPerformanceLoadedSuccessfully:Lcom/ironsource/mediationsdk/AuctionHistory$ISAuctionPerformance;

    .line 22
    new-instance v0, Lcom/ironsource/mediationsdk/AuctionHistory$ISAuctionPerformance;

    const-string v1, "ISAuctionPerformanceFailedToShow"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/ironsource/mediationsdk/AuctionHistory$ISAuctionPerformance;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ironsource/mediationsdk/AuctionHistory$ISAuctionPerformance;->ISAuctionPerformanceFailedToShow:Lcom/ironsource/mediationsdk/AuctionHistory$ISAuctionPerformance;

    .line 23
    new-instance v0, Lcom/ironsource/mediationsdk/AuctionHistory$ISAuctionPerformance;

    const-string v1, "ISAuctionPerformanceShowedSuccessfully"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/ironsource/mediationsdk/AuctionHistory$ISAuctionPerformance;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ironsource/mediationsdk/AuctionHistory$ISAuctionPerformance;->ISAuctionPerformanceShowedSuccessfully:Lcom/ironsource/mediationsdk/AuctionHistory$ISAuctionPerformance;

    .line 24
    new-instance v0, Lcom/ironsource/mediationsdk/AuctionHistory$ISAuctionPerformance;

    const-string v1, "ISAuctionPerformanceNotPartOfWaterfall"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/ironsource/mediationsdk/AuctionHistory$ISAuctionPerformance;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ironsource/mediationsdk/AuctionHistory$ISAuctionPerformance;->ISAuctionPerformanceNotPartOfWaterfall:Lcom/ironsource/mediationsdk/AuctionHistory$ISAuctionPerformance;

    const/4 v1, 0x6

    new-array v1, v1, [Lcom/ironsource/mediationsdk/AuctionHistory$ISAuctionPerformance;

    .line 18
    sget-object v8, Lcom/ironsource/mediationsdk/AuctionHistory$ISAuctionPerformance;->ISAuctionPerformanceDidntAttemptToLoad:Lcom/ironsource/mediationsdk/AuctionHistory$ISAuctionPerformance;

    aput-object v8, v1, v2

    sget-object v2, Lcom/ironsource/mediationsdk/AuctionHistory$ISAuctionPerformance;->ISAuctionPerformanceFailedToLoad:Lcom/ironsource/mediationsdk/AuctionHistory$ISAuctionPerformance;

    aput-object v2, v1, v3

    sget-object v2, Lcom/ironsource/mediationsdk/AuctionHistory$ISAuctionPerformance;->ISAuctionPerformanceLoadedSuccessfully:Lcom/ironsource/mediationsdk/AuctionHistory$ISAuctionPerformance;

    aput-object v2, v1, v4

    sget-object v2, Lcom/ironsource/mediationsdk/AuctionHistory$ISAuctionPerformance;->ISAuctionPerformanceFailedToShow:Lcom/ironsource/mediationsdk/AuctionHistory$ISAuctionPerformance;

    aput-object v2, v1, v5

    sget-object v2, Lcom/ironsource/mediationsdk/AuctionHistory$ISAuctionPerformance;->ISAuctionPerformanceShowedSuccessfully:Lcom/ironsource/mediationsdk/AuctionHistory$ISAuctionPerformance;

    aput-object v2, v1, v6

    aput-object v0, v1, v7

    sput-object v1, Lcom/ironsource/mediationsdk/AuctionHistory$ISAuctionPerformance;->$VALUES:[Lcom/ironsource/mediationsdk/AuctionHistory$ISAuctionPerformance;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ironsource/mediationsdk/AuctionHistory$ISAuctionPerformance;
    .locals 1

    .line 18
    const-class v0, Lcom/ironsource/mediationsdk/AuctionHistory$ISAuctionPerformance;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ironsource/mediationsdk/AuctionHistory$ISAuctionPerformance;

    return-object p0
.end method

.method public static values()[Lcom/ironsource/mediationsdk/AuctionHistory$ISAuctionPerformance;
    .locals 1

    .line 18
    sget-object v0, Lcom/ironsource/mediationsdk/AuctionHistory$ISAuctionPerformance;->$VALUES:[Lcom/ironsource/mediationsdk/AuctionHistory$ISAuctionPerformance;

    invoke-virtual {v0}, [Lcom/ironsource/mediationsdk/AuctionHistory$ISAuctionPerformance;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ironsource/mediationsdk/AuctionHistory$ISAuctionPerformance;

    return-object v0
.end method
