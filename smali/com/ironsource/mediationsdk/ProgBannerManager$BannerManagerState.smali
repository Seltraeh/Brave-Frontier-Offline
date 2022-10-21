.class final enum Lcom/ironsource/mediationsdk/ProgBannerManager$BannerManagerState;
.super Ljava/lang/Enum;
.source "ProgBannerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/mediationsdk/ProgBannerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "BannerManagerState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ironsource/mediationsdk/ProgBannerManager$BannerManagerState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ironsource/mediationsdk/ProgBannerManager$BannerManagerState;

.field public static final enum AUCTION:Lcom/ironsource/mediationsdk/ProgBannerManager$BannerManagerState;

.field public static final enum FIRST_AUCTION:Lcom/ironsource/mediationsdk/ProgBannerManager$BannerManagerState;

.field public static final enum LOADED:Lcom/ironsource/mediationsdk/ProgBannerManager$BannerManagerState;

.field public static final enum LOADING:Lcom/ironsource/mediationsdk/ProgBannerManager$BannerManagerState;

.field public static final enum NONE:Lcom/ironsource/mediationsdk/ProgBannerManager$BannerManagerState;

.field public static final enum READY_TO_LOAD:Lcom/ironsource/mediationsdk/ProgBannerManager$BannerManagerState;

.field public static final enum RELOADING:Lcom/ironsource/mediationsdk/ProgBannerManager$BannerManagerState;

.field public static final enum STARTED_LOADING:Lcom/ironsource/mediationsdk/ProgBannerManager$BannerManagerState;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 45
    new-instance v0, Lcom/ironsource/mediationsdk/ProgBannerManager$BannerManagerState;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ironsource/mediationsdk/ProgBannerManager$BannerManagerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ironsource/mediationsdk/ProgBannerManager$BannerManagerState;->NONE:Lcom/ironsource/mediationsdk/ProgBannerManager$BannerManagerState;

    .line 46
    new-instance v0, Lcom/ironsource/mediationsdk/ProgBannerManager$BannerManagerState;

    const-string v1, "READY_TO_LOAD"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/ironsource/mediationsdk/ProgBannerManager$BannerManagerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ironsource/mediationsdk/ProgBannerManager$BannerManagerState;->READY_TO_LOAD:Lcom/ironsource/mediationsdk/ProgBannerManager$BannerManagerState;

    .line 47
    new-instance v0, Lcom/ironsource/mediationsdk/ProgBannerManager$BannerManagerState;

    const-string v1, "STARTED_LOADING"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/ironsource/mediationsdk/ProgBannerManager$BannerManagerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ironsource/mediationsdk/ProgBannerManager$BannerManagerState;->STARTED_LOADING:Lcom/ironsource/mediationsdk/ProgBannerManager$BannerManagerState;

    .line 48
    new-instance v0, Lcom/ironsource/mediationsdk/ProgBannerManager$BannerManagerState;

    const-string v1, "FIRST_AUCTION"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/ironsource/mediationsdk/ProgBannerManager$BannerManagerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ironsource/mediationsdk/ProgBannerManager$BannerManagerState;->FIRST_AUCTION:Lcom/ironsource/mediationsdk/ProgBannerManager$BannerManagerState;

    .line 49
    new-instance v0, Lcom/ironsource/mediationsdk/ProgBannerManager$BannerManagerState;

    const-string v1, "AUCTION"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/ironsource/mediationsdk/ProgBannerManager$BannerManagerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ironsource/mediationsdk/ProgBannerManager$BannerManagerState;->AUCTION:Lcom/ironsource/mediationsdk/ProgBannerManager$BannerManagerState;

    .line 50
    new-instance v0, Lcom/ironsource/mediationsdk/ProgBannerManager$BannerManagerState;

    const-string v1, "LOADING"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/ironsource/mediationsdk/ProgBannerManager$BannerManagerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ironsource/mediationsdk/ProgBannerManager$BannerManagerState;->LOADING:Lcom/ironsource/mediationsdk/ProgBannerManager$BannerManagerState;

    .line 51
    new-instance v0, Lcom/ironsource/mediationsdk/ProgBannerManager$BannerManagerState;

    const-string v1, "RELOADING"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/ironsource/mediationsdk/ProgBannerManager$BannerManagerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ironsource/mediationsdk/ProgBannerManager$BannerManagerState;->RELOADING:Lcom/ironsource/mediationsdk/ProgBannerManager$BannerManagerState;

    .line 52
    new-instance v0, Lcom/ironsource/mediationsdk/ProgBannerManager$BannerManagerState;

    const-string v1, "LOADED"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lcom/ironsource/mediationsdk/ProgBannerManager$BannerManagerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ironsource/mediationsdk/ProgBannerManager$BannerManagerState;->LOADED:Lcom/ironsource/mediationsdk/ProgBannerManager$BannerManagerState;

    const/16 v1, 0x8

    new-array v1, v1, [Lcom/ironsource/mediationsdk/ProgBannerManager$BannerManagerState;

    .line 44
    sget-object v10, Lcom/ironsource/mediationsdk/ProgBannerManager$BannerManagerState;->NONE:Lcom/ironsource/mediationsdk/ProgBannerManager$BannerManagerState;

    aput-object v10, v1, v2

    sget-object v2, Lcom/ironsource/mediationsdk/ProgBannerManager$BannerManagerState;->READY_TO_LOAD:Lcom/ironsource/mediationsdk/ProgBannerManager$BannerManagerState;

    aput-object v2, v1, v3

    sget-object v2, Lcom/ironsource/mediationsdk/ProgBannerManager$BannerManagerState;->STARTED_LOADING:Lcom/ironsource/mediationsdk/ProgBannerManager$BannerManagerState;

    aput-object v2, v1, v4

    sget-object v2, Lcom/ironsource/mediationsdk/ProgBannerManager$BannerManagerState;->FIRST_AUCTION:Lcom/ironsource/mediationsdk/ProgBannerManager$BannerManagerState;

    aput-object v2, v1, v5

    sget-object v2, Lcom/ironsource/mediationsdk/ProgBannerManager$BannerManagerState;->AUCTION:Lcom/ironsource/mediationsdk/ProgBannerManager$BannerManagerState;

    aput-object v2, v1, v6

    sget-object v2, Lcom/ironsource/mediationsdk/ProgBannerManager$BannerManagerState;->LOADING:Lcom/ironsource/mediationsdk/ProgBannerManager$BannerManagerState;

    aput-object v2, v1, v7

    sget-object v2, Lcom/ironsource/mediationsdk/ProgBannerManager$BannerManagerState;->RELOADING:Lcom/ironsource/mediationsdk/ProgBannerManager$BannerManagerState;

    aput-object v2, v1, v8

    aput-object v0, v1, v9

    sput-object v1, Lcom/ironsource/mediationsdk/ProgBannerManager$BannerManagerState;->$VALUES:[Lcom/ironsource/mediationsdk/ProgBannerManager$BannerManagerState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 44
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ironsource/mediationsdk/ProgBannerManager$BannerManagerState;
    .locals 1

    .line 44
    const-class v0, Lcom/ironsource/mediationsdk/ProgBannerManager$BannerManagerState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ironsource/mediationsdk/ProgBannerManager$BannerManagerState;

    return-object p0
.end method

.method public static values()[Lcom/ironsource/mediationsdk/ProgBannerManager$BannerManagerState;
    .locals 1

    .line 44
    sget-object v0, Lcom/ironsource/mediationsdk/ProgBannerManager$BannerManagerState;->$VALUES:[Lcom/ironsource/mediationsdk/ProgBannerManager$BannerManagerState;

    invoke-virtual {v0}, [Lcom/ironsource/mediationsdk/ProgBannerManager$BannerManagerState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ironsource/mediationsdk/ProgBannerManager$BannerManagerState;

    return-object v0
.end method
