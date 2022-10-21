.class public final enum Lcom/ironsource/mediationsdk/ProgBannerSmash$BannerSmashState;
.super Ljava/lang/Enum;
.source "ProgBannerSmash.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/mediationsdk/ProgBannerSmash;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "BannerSmashState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ironsource/mediationsdk/ProgBannerSmash$BannerSmashState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ironsource/mediationsdk/ProgBannerSmash$BannerSmashState;

.field public static final enum DESTROYED:Lcom/ironsource/mediationsdk/ProgBannerSmash$BannerSmashState;

.field public static final enum INIT_IN_PROGRESS:Lcom/ironsource/mediationsdk/ProgBannerSmash$BannerSmashState;

.field public static final enum LOADED:Lcom/ironsource/mediationsdk/ProgBannerSmash$BannerSmashState;

.field public static final enum LOADING:Lcom/ironsource/mediationsdk/ProgBannerSmash$BannerSmashState;

.field public static final enum LOAD_FAILED:Lcom/ironsource/mediationsdk/ProgBannerSmash$BannerSmashState;

.field public static final enum NONE:Lcom/ironsource/mediationsdk/ProgBannerSmash$BannerSmashState;

.field public static final enum READY_TO_LOAD:Lcom/ironsource/mediationsdk/ProgBannerSmash$BannerSmashState;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 65
    new-instance v0, Lcom/ironsource/mediationsdk/ProgBannerSmash$BannerSmashState;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ironsource/mediationsdk/ProgBannerSmash$BannerSmashState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ironsource/mediationsdk/ProgBannerSmash$BannerSmashState;->NONE:Lcom/ironsource/mediationsdk/ProgBannerSmash$BannerSmashState;

    .line 66
    new-instance v0, Lcom/ironsource/mediationsdk/ProgBannerSmash$BannerSmashState;

    const-string v1, "INIT_IN_PROGRESS"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/ironsource/mediationsdk/ProgBannerSmash$BannerSmashState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ironsource/mediationsdk/ProgBannerSmash$BannerSmashState;->INIT_IN_PROGRESS:Lcom/ironsource/mediationsdk/ProgBannerSmash$BannerSmashState;

    .line 67
    new-instance v0, Lcom/ironsource/mediationsdk/ProgBannerSmash$BannerSmashState;

    const-string v1, "READY_TO_LOAD"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/ironsource/mediationsdk/ProgBannerSmash$BannerSmashState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ironsource/mediationsdk/ProgBannerSmash$BannerSmashState;->READY_TO_LOAD:Lcom/ironsource/mediationsdk/ProgBannerSmash$BannerSmashState;

    .line 68
    new-instance v0, Lcom/ironsource/mediationsdk/ProgBannerSmash$BannerSmashState;

    const-string v1, "LOADING"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/ironsource/mediationsdk/ProgBannerSmash$BannerSmashState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ironsource/mediationsdk/ProgBannerSmash$BannerSmashState;->LOADING:Lcom/ironsource/mediationsdk/ProgBannerSmash$BannerSmashState;

    .line 69
    new-instance v0, Lcom/ironsource/mediationsdk/ProgBannerSmash$BannerSmashState;

    const-string v1, "LOADED"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/ironsource/mediationsdk/ProgBannerSmash$BannerSmashState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ironsource/mediationsdk/ProgBannerSmash$BannerSmashState;->LOADED:Lcom/ironsource/mediationsdk/ProgBannerSmash$BannerSmashState;

    .line 70
    new-instance v0, Lcom/ironsource/mediationsdk/ProgBannerSmash$BannerSmashState;

    const-string v1, "LOAD_FAILED"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/ironsource/mediationsdk/ProgBannerSmash$BannerSmashState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ironsource/mediationsdk/ProgBannerSmash$BannerSmashState;->LOAD_FAILED:Lcom/ironsource/mediationsdk/ProgBannerSmash$BannerSmashState;

    .line 71
    new-instance v0, Lcom/ironsource/mediationsdk/ProgBannerSmash$BannerSmashState;

    const-string v1, "DESTROYED"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/ironsource/mediationsdk/ProgBannerSmash$BannerSmashState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ironsource/mediationsdk/ProgBannerSmash$BannerSmashState;->DESTROYED:Lcom/ironsource/mediationsdk/ProgBannerSmash$BannerSmashState;

    const/4 v1, 0x7

    new-array v1, v1, [Lcom/ironsource/mediationsdk/ProgBannerSmash$BannerSmashState;

    .line 64
    sget-object v9, Lcom/ironsource/mediationsdk/ProgBannerSmash$BannerSmashState;->NONE:Lcom/ironsource/mediationsdk/ProgBannerSmash$BannerSmashState;

    aput-object v9, v1, v2

    sget-object v2, Lcom/ironsource/mediationsdk/ProgBannerSmash$BannerSmashState;->INIT_IN_PROGRESS:Lcom/ironsource/mediationsdk/ProgBannerSmash$BannerSmashState;

    aput-object v2, v1, v3

    sget-object v2, Lcom/ironsource/mediationsdk/ProgBannerSmash$BannerSmashState;->READY_TO_LOAD:Lcom/ironsource/mediationsdk/ProgBannerSmash$BannerSmashState;

    aput-object v2, v1, v4

    sget-object v2, Lcom/ironsource/mediationsdk/ProgBannerSmash$BannerSmashState;->LOADING:Lcom/ironsource/mediationsdk/ProgBannerSmash$BannerSmashState;

    aput-object v2, v1, v5

    sget-object v2, Lcom/ironsource/mediationsdk/ProgBannerSmash$BannerSmashState;->LOADED:Lcom/ironsource/mediationsdk/ProgBannerSmash$BannerSmashState;

    aput-object v2, v1, v6

    sget-object v2, Lcom/ironsource/mediationsdk/ProgBannerSmash$BannerSmashState;->LOAD_FAILED:Lcom/ironsource/mediationsdk/ProgBannerSmash$BannerSmashState;

    aput-object v2, v1, v7

    aput-object v0, v1, v8

    sput-object v1, Lcom/ironsource/mediationsdk/ProgBannerSmash$BannerSmashState;->$VALUES:[Lcom/ironsource/mediationsdk/ProgBannerSmash$BannerSmashState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 64
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ironsource/mediationsdk/ProgBannerSmash$BannerSmashState;
    .locals 1

    .line 64
    const-class v0, Lcom/ironsource/mediationsdk/ProgBannerSmash$BannerSmashState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ironsource/mediationsdk/ProgBannerSmash$BannerSmashState;

    return-object p0
.end method

.method public static values()[Lcom/ironsource/mediationsdk/ProgBannerSmash$BannerSmashState;
    .locals 1

    .line 64
    sget-object v0, Lcom/ironsource/mediationsdk/ProgBannerSmash$BannerSmashState;->$VALUES:[Lcom/ironsource/mediationsdk/ProgBannerSmash$BannerSmashState;

    invoke-virtual {v0}, [Lcom/ironsource/mediationsdk/ProgBannerSmash$BannerSmashState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ironsource/mediationsdk/ProgBannerSmash$BannerSmashState;

    return-object v0
.end method
