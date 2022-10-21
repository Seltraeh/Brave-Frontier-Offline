.class public Lcom/ironsource/mediationsdk/ISBannerSize;
.super Ljava/lang/Object;
.source "ISBannerSize.java"


# static fields
.field public static final BANNER:Lcom/ironsource/mediationsdk/ISBannerSize;

.field protected static final LEADERBOARD:Lcom/ironsource/mediationsdk/ISBannerSize;


# instance fields
.field private mDescription:Ljava/lang/String;

.field private mHeight:I

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 18
    new-instance v0, Lcom/ironsource/mediationsdk/ISBannerSize;

    const-string v1, "BANNER"

    const/16 v2, 0x140

    const/16 v3, 0x32

    invoke-direct {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/ISBannerSize;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ironsource/mediationsdk/ISBannerSize;->BANNER:Lcom/ironsource/mediationsdk/ISBannerSize;

    .line 21
    new-instance v0, Lcom/ironsource/mediationsdk/ISBannerSize;

    const-string v1, "LEADERBOARD"

    const/16 v2, 0x2d8

    const/16 v3, 0x5a

    invoke-direct {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/ISBannerSize;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ironsource/mediationsdk/ISBannerSize;->LEADERBOARD:Lcom/ironsource/mediationsdk/ISBannerSize;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/ironsource/mediationsdk/ISBannerSize;->mDescription:Ljava/lang/String;

    .line 31
    iput p2, p0, Lcom/ironsource/mediationsdk/ISBannerSize;->mWidth:I

    .line 32
    iput p3, p0, Lcom/ironsource/mediationsdk/ISBannerSize;->mHeight:I

    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ISBannerSize;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .line 44
    iget v0, p0, Lcom/ironsource/mediationsdk/ISBannerSize;->mHeight:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 40
    iget v0, p0, Lcom/ironsource/mediationsdk/ISBannerSize;->mWidth:I

    return v0
.end method

.method public isSmart()Z
    .locals 2

    .line 48
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ISBannerSize;->mDescription:Ljava/lang/String;

    const-string v1, "SMART"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
